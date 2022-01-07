; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___MALLOC.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___MALLOC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"_malloc TYPE\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Requested size to __MALLOC is too large (%llx)!\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@M_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"_MALLOC: kalloc returned NULL (potential leak), size %llu\00", align 1
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__MALLOC(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @M_LAST, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i8* null, i8** %5, align 8
  br label %73

22:                                               ; preds = %18
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @kalloc_canblock(i64* %11, i32 %36, i32* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %10, align 8
  br label %58

40:                                               ; preds = %30
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @kalloc_canblock(i64* %11, i32 %41, i32* %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @M_NULL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %5, align 8
  br label %73

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %40
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i8* null, i8** %5, align 8
  br label %73

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @bzero(i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %71, %61, %52, %21
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @kalloc_canblock(i64*, i32, i32*) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
