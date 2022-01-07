; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_WindingForBrushSide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_WindingForBrushSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@dplanes = common dso_local global %struct.TYPE_15__* null, align 8
@dbrushsides = common dso_local global %struct.TYPE_16__* null, align 8
@SIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @VL_WindingForBrushSide(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dplanes, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VectorCopy(i32 %25, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VectorInverse(i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dplanes, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 0, %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_12__* @BaseWindingForPlane(i32 %49, i32 %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %10, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i32 %55, i32 %58, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %126, %3
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %129

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %126

82:                                               ; preds = %77
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dplanes, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VectorCopy(i32 %96, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VectorInverse(i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dplanes, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = call i32 @VL_ChopWinding(%struct.TYPE_12__* %119, %struct.TYPE_13__* %11, double 1.000000e-01)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SIDE_BACK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %82
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %131

125:                                              ; preds = %82
  br label %126

126:                                              ; preds = %125, %81
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %71

129:                                              ; preds = %71
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %4, align 8
  br label %131

131:                                              ; preds = %129, %124
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %132
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorInverse(i32) #1

declare dso_local %struct.TYPE_12__* @BaseWindingForPlane(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @VL_ChopWinding(%struct.TYPE_12__*, %struct.TYPE_13__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
