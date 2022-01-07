; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___REALLOC.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___REALLOC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__REALLOC(i8* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i8* @__MALLOC(i64 %17, i32 %18, i32 %19, i32* %20)
  store i8* %21, i8** %6, align 8
  br label %76

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @kalloc_size(i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @kalloc_bucket_size(i64 %25)
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %42, %43
  %45 = call i32 @bzero(i8* %41, i64 %44)
  br label %54

46:                                               ; preds = %34
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @bzero(i8* %49, i64 %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %6, align 8
  br label %76

57:                                               ; preds = %22
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i8* @__MALLOC(i64 %58, i32 %59, i32 %60, i32* %61)
  store i8* %62, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i8* null, i8** %6, align 8
  br label %76

65:                                               ; preds = %57
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @MIN(i64 %68, i64 %69)
  %71 = call i32 @bcopy(i8* %66, i8* %67, i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @_FREE(i8* %72, i32 %73)
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %6, align 8
  br label %76

76:                                               ; preds = %65, %64, %55, %16
  %77 = load i8*, i8** %6, align 8
  ret i8* %77
}

declare dso_local i8* @__MALLOC(i64, i32, i32, i32*) #1

declare dso_local i64 @kalloc_size(i8*) #1

declare dso_local i64 @kalloc_bucket_size(i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @_FREE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
