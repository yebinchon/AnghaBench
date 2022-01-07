; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_TraverseIntercepts.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_TraverseIntercepts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@intercept_p = common dso_local global %struct.TYPE_6__* null, align 8
@intercepts = common dso_local global %struct.TYPE_6__* null, align 8
@MAXINT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_TraverseIntercepts(i32 (%struct.TYPE_6__*)* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.TYPE_6__*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 (%struct.TYPE_6__*)* %0, i32 (%struct.TYPE_6__*)** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intercept_p, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intercepts, align 8
  %12 = ptrtoint %struct.TYPE_6__* %10 to i64
  %13 = ptrtoint %struct.TYPE_6__* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i8*, i8** @MAXINT, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intercepts, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  br label %25

25:                                               ; preds = %41, %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intercept_p, align 8
  %28 = icmp ult %struct.TYPE_6__* %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %9, align 8
  br label %40

40:                                               ; preds = %35, %29
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 1
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  br label %25

44:                                               ; preds = %25
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %61

49:                                               ; preds = %44
  %50 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = call i32 %50(%struct.TYPE_6__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** @MAXINT, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %17

60:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %48
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
