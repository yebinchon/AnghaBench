; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_alloc_header = type { i32, i32, i32, i32, i32, i32 }
%struct.kasan_alloc_footer = type { i32 }

@ASAN_HEAP_RZ = common dso_local global i32 0, align 4
@LIVE_XOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kasan_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kasan_alloc_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kasan_alloc_footer*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %81

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 8
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = srem i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ASAN_HEAP_RZ, align 4
  %42 = call i32 @kasan_poison(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @kasan_rz_clobber(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.kasan_alloc_header* @header_for_user_addr(i32 %51)
  store %struct.kasan_alloc_header* %52, %struct.kasan_alloc_header** %11, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @LIVE_XOR, align 4
  %55 = call i32 @magic_for_addr(i32 %53, i32 %54)
  %56 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %57 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %60 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %63 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %66 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call %struct.kasan_alloc_footer* @footer_for_user_addr(i32 %67, i32* %12)
  store %struct.kasan_alloc_footer* %68, %struct.kasan_alloc_footer** %13, align 8
  %69 = load %struct.kasan_alloc_footer*, %struct.kasan_alloc_footer** %13, align 8
  %70 = getelementptr inbounds %struct.kasan_alloc_footer, %struct.kasan_alloc_footer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @kasan_alloc_bt(i32 %71, i32 %72, i32 2)
  %74 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %75 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @kasan_alloc_crc(i32 %76)
  %78 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %11, align 8
  %79 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %17, %16
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kasan_poison(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kasan_rz_clobber(i32, i32, i32, i32) #1

declare dso_local %struct.kasan_alloc_header* @header_for_user_addr(i32) #1

declare dso_local i32 @magic_for_addr(i32, i32) #1

declare dso_local %struct.kasan_alloc_footer* @footer_for_user_addr(i32, i32*) #1

declare dso_local i32 @kasan_alloc_bt(i32, i32, i32) #1

declare dso_local i32 @kasan_alloc_crc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
