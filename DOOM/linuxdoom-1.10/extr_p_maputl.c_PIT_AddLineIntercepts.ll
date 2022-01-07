; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_PIT_AddLineIntercepts.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_PIT_AddLineIntercepts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@trace = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@earlyout = common dso_local global i64 0, align 8
@intercept_p = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIT_AddLineIntercepts(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 0), align 8
  %9 = load i32, i32* @FRACUNIT, align 4
  %10 = mul nsw i32 %9, 16
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 1), align 4
  %14 = load i32, i32* @FRACUNIT, align 4
  %15 = mul nsw i32 %14, 16
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 0), align 8
  %19 = load i32, i32* @FRACUNIT, align 4
  %20 = sub nsw i32 0, %19
  %21 = mul nsw i32 %20, 16
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 1), align 4
  %25 = load i32, i32* @FRACUNIT, align 4
  %26 = sub nsw i32 0, %25
  %27 = mul nsw i32 %26, 16
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23, %17, %12, %1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @P_PointOnDivlineSide(i32 %34, i32 %39, %struct.TYPE_16__* @trace)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @P_PointOnDivlineSide(i32 %45, i32 %50, %struct.TYPE_16__* @trace)
  store i32 %51, i32* %5, align 4
  br label %67

52:                                               ; preds = %23
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 3), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 2), align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = call i32 @P_PointOnLineSide(i64 %53, i64 %54, %struct.TYPE_15__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 3), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 0), align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 2), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @trace, i32 0, i32 1), align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = call i32 @P_PointOnLineSide(i64 %60, i64 %64, %struct.TYPE_15__* %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %52, %29
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %104

72:                                               ; preds = %67
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = call i32 @P_MakeDivline(%struct.TYPE_15__* %73, i32* %7)
  %75 = call i32 @P_InterceptVector(%struct.TYPE_16__* @trace, i32* %7)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %104

79:                                               ; preds = %72
  %80 = load i64, i64* @earlyout, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @FRACUNIT, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %104

92:                                               ; preds = %86, %82, %79
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** @intercept_p, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** @intercept_p, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** @intercept_p, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** @intercept_p, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 1
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** @intercept_p, align 8
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %92, %91, %78, %71
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @P_PointOnDivlineSide(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @P_PointOnLineSide(i64, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @P_MakeDivline(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @P_InterceptVector(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
