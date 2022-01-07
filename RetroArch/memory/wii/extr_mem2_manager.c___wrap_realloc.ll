; ModuleID = '/home/carl/AnghaBench/RetroArch/memory/wii/extr_mem2_manager.c___wrap_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/memory/wii/extr_mem2_manager.c___wrap_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gx_mem2_heap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @__wrap_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__wrap_realloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = and i32 %10, 268435456
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @_mem2_realloc(i8* %14, i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %85

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = call i8* @__real_malloc(i64 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %85

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @__lwp_heap_block_size(i32* @gx_mem2_heap, i8* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  br label %42

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @memcpy(i8* %33, i8* %34, i64 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @_mem2_free(i8* %45)
  br label %47

47:                                               ; preds = %42, %27
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %3, align 8
  br label %85

49:                                               ; preds = %2
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i8* @__real_realloc(i8* %50, i64 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %3, align 8
  br label %85

57:                                               ; preds = %49
  %58 = load i64, i64* %5, align 8
  %59 = call i8* @_mem2_malloc(i64 %58)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8* null, i8** %3, align 8
  br label %85

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @__real_malloc_usable_size(i8* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %8, align 8
  br label %78

76:                                               ; preds = %66
  %77 = load i64, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 @memcpy(i8* %69, i8* %70, i64 %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @__real_free(i8* %81)
  br label %83

83:                                               ; preds = %78, %63
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %3, align 8
  br label %85

85:                                               ; preds = %83, %62, %55, %47, %26, %19
  %86 = load i8*, i8** %3, align 8
  ret i8* %86
}

declare dso_local i8* @_mem2_realloc(i8*, i64) #1

declare dso_local i8* @__real_malloc(i64) #1

declare dso_local i64 @__lwp_heap_block_size(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_mem2_free(i8*) #1

declare dso_local i8* @__real_realloc(i8*, i64) #1

declare dso_local i8* @_mem2_malloc(i64) #1

declare dso_local i64 @__real_malloc_usable_size(i8*) #1

declare dso_local i32 @__real_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
