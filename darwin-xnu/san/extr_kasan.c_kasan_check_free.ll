; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_check_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_check_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_alloc_header = type { i64, i64, i64, i64, i64 }

@KASAN_HEAP_KALLOC = common dso_local global i32 0, align 4
@TYPE_KFREE = common dso_local global i32 0, align 4
@KASAN_HEAP_ZALLOC = common dso_local global i32 0, align 4
@TYPE_ZFREE = common dso_local global i32 0, align 4
@KASAN_HEAP_FAKESTACK = common dso_local global i32 0, align 4
@TYPE_FSFREE = common dso_local global i32 0, align 4
@LIVE_XOR = common dso_local global i32 0, align 4
@REASON_BAD_METADATA = common dso_local global i32 0, align 4
@REASON_MOD_OOB = common dso_local global i32 0, align 4
@REASON_INVALID_SIZE = common dso_local global i32 0, align 4
@ASAN_HEAP_LEFT_RZ = common dso_local global i32 0, align 4
@ASAN_HEAP_RIGHT_RZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_check_free(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kasan_alloc_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.kasan_alloc_header* @header_for_user_addr(i64 %10)
  store %struct.kasan_alloc_header* %11, %struct.kasan_alloc_header** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @KASAN_HEAP_KALLOC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @TYPE_KFREE, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @KASAN_HEAP_ZALLOC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @TYPE_ZFREE, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @KASAN_HEAP_FAKESTACK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @TYPE_FSFREE, align 4
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi i32 [ %22, %21 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %16, %15 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  %36 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %37 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @LIVE_XOR, align 4
  %41 = call i64 @magic_for_addr(i64 %39, i32 %40)
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @REASON_BAD_METADATA, align 4
  %48 = call i32 @kasan_violation(i64 %44, i64 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %51 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @kasan_alloc_crc(i64 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @REASON_MOD_OOB, align 4
  %61 = call i32 @kasan_violation(i64 %57, i64 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %64 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @REASON_INVALID_SIZE, align 4
  %73 = call i32 @kasan_violation(i64 %69, i64 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %76 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %79 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %83 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %88 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %92 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ASAN_HEAP_LEFT_RZ, align 4
  %95 = call i32 @kasan_check_shadow(i64 %90, i64 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %74
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %7, align 8
  %100 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* @ASAN_HEAP_RIGHT_RZ, align 4
  %105 = call i32 @kasan_check_shadow(i64 %102, i64 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %97, %74
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @REASON_BAD_METADATA, align 4
  %112 = call i32 @kasan_violation(i64 %108, i64 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %97
  %114 = load i64, i64* %4, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @kasan_check_range(i8* %115, i64 %116, i32 %117)
  ret void
}

declare dso_local %struct.kasan_alloc_header* @header_for_user_addr(i64) #1

declare dso_local i64 @magic_for_addr(i64, i32) #1

declare dso_local i32 @kasan_violation(i64, i64, i32, i32) #1

declare dso_local i64 @kasan_alloc_crc(i64) #1

declare dso_local i32 @kasan_check_shadow(i64, i64, i32) #1

declare dso_local i32 @kasan_check_range(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
