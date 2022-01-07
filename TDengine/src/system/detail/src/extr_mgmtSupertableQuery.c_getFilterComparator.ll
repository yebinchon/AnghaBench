; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_getFilterComparator.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_getFilterComparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compareIntVal = common dso_local global i32* null, align 8
@compareIntDoubleVal = common dso_local global i32* null, align 8
@compareDoubleIntVal = common dso_local global i32* null, align 8
@compareDoubleVal = common dso_local global i32* null, align 8
@TSDB_RELATION_LIKE = common dso_local global i32 0, align 4
@compareStrPatternComp = common dso_local global i32* null, align 8
@compareStrVal = common dso_local global i32* null, align 8
@compareWStrPatternComp = common dso_local global i32* null, align 8
@compareWStrVal = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @getFilterComparator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getFilterComparator(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %71 [
    i32 128, label %9
    i32 129, label %9
    i32 131, label %9
    i32 136, label %9
    i32 134, label %9
    i32 132, label %27
    i32 133, label %27
    i32 135, label %45
    i32 130, label %58
  ]

9:                                                ; preds = %3, %3, %3, %3, %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 134
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 136
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** @compareIntVal, align 8
  store i32* %16, i32** %7, align 8
  br label %26

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 132
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 133
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** @compareIntDoubleVal, align 8
  store i32* %24, i32** %7, align 8
  br label %25

25:                                               ; preds = %23, %20, %17
  br label %26

26:                                               ; preds = %25, %15
  br label %73

27:                                               ; preds = %3, %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 134
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 136
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** @compareDoubleIntVal, align 8
  store i32* %34, i32** %7, align 8
  br label %44

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 132
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 133
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** @compareDoubleVal, align 8
  store i32* %42, i32** %7, align 8
  br label %43

43:                                               ; preds = %41, %38, %35
  br label %44

44:                                               ; preds = %43, %33
  br label %73

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 135
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TSDB_RELATION_LIKE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32*, i32** @compareStrPatternComp, align 8
  store i32* %54, i32** %7, align 8
  br label %57

55:                                               ; preds = %45
  %56 = load i32*, i32** @compareStrVal, align 8
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %55, %53
  br label %73

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 130
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @TSDB_RELATION_LIKE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32*, i32** @compareWStrPatternComp, align 8
  store i32* %67, i32** %7, align 8
  br label %70

68:                                               ; preds = %58
  %69 = load i32*, i32** @compareWStrVal, align 8
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %68, %66
  br label %73

71:                                               ; preds = %3
  %72 = load i32*, i32** @compareIntVal, align 8
  store i32* %72, i32** %7, align 8
  br label %73

73:                                               ; preds = %71, %70, %57, %44, %26
  %74 = load i32*, i32** %7, align 8
  ret i32* %74
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
