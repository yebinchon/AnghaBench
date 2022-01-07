; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_getKeyFilterComparator.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_getKeyFilterComparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@compareIntVal = common dso_local global i32* null, align 8
@compareIntDoubleVal = common dso_local global i32* null, align 8
@compareDoubleIntVal = common dso_local global i32* null, align 8
@compareDoubleVal = common dso_local global i32* null, align 8
@compareStrVal = common dso_local global i32* null, align 8
@compareWStrVal = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32)* @getKeyFilterComparator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getKeyFilterComparator(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 128, label %9
    i32 129, label %9
    i32 131, label %9
    i32 136, label %9
    i32 134, label %9
    i32 132, label %27
    i32 133, label %27
    i32 135, label %45
    i32 130, label %47
  ]

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 134
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 136
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** @compareIntVal, align 8
  store i32* %16, i32** %5, align 8
  br label %26

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 132
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 133
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** @compareIntDoubleVal, align 8
  store i32* %24, i32** %5, align 8
  br label %25

25:                                               ; preds = %23, %20, %17
  br label %26

26:                                               ; preds = %25, %15
  br label %51

27:                                               ; preds = %2, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 134
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 136
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** @compareDoubleIntVal, align 8
  store i32* %34, i32** %5, align 8
  br label %44

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 132
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 133
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** @compareDoubleVal, align 8
  store i32* %42, i32** %5, align 8
  br label %43

43:                                               ; preds = %41, %38, %35
  br label %44

44:                                               ; preds = %43, %33
  br label %51

45:                                               ; preds = %2
  %46 = load i32*, i32** @compareStrVal, align 8
  store i32* %46, i32** %5, align 8
  br label %51

47:                                               ; preds = %2
  %48 = load i32*, i32** @compareWStrVal, align 8
  store i32* %48, i32** %5, align 8
  br label %51

49:                                               ; preds = %2
  %50 = load i32*, i32** @compareIntVal, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %49, %47, %45, %44, %26
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
