; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SunToPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SunToPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64** }
%struct.TYPE_5__ = type { i64*, i32* }

@numSkyBrushes = common dso_local global i32 0, align 4
@MAX_WORLD_COORD = common dso_local global i32 0, align 4
@sunDirection = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@skyBrushes = common dso_local global %struct.TYPE_6__* null, align 8
@numthreads = common dso_local global i32 0, align 4
@c_sunHit = common dso_local global i32 0, align 4
@sunLight = common dso_local global i32* null, align 8
@c_sunMiss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SunToPoint(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @numSkyBrushes, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @VectorClear(i32* %14)
  br label %171

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @MAX_WORLD_COORD, align 4
  %19 = mul nsw i32 %18, 2
  %20 = load i32, i32* @sunDirection, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @VectorMA(i32* %17, i32 %19, i32 %20, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @qtrue, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @TraceLine(i32* %23, i32* %24, %struct.TYPE_5__* %8, i32 %25, i32* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %159, %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @numSkyBrushes, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %162

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @skyBrushes, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64**, i64*** %42, align 8
  %44 = getelementptr inbounds i64*, i64** %43, i64 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %40, %47
  br i1 %48, label %114, label %49

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %53, %60
  br i1 %61, label %114, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64**, i64*** %68, align 8
  %70 = getelementptr inbounds i64*, i64** %69, i64 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %66, %73
  br i1 %74, label %114, label %75

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64**, i64*** %81, align 8
  %83 = getelementptr inbounds i64*, i64** %82, i64 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %79, %86
  br i1 %87, label %114, label %88

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64**, i64*** %94, align 8
  %96 = getelementptr inbounds i64*, i64** %95, i64 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %92, %99
  br i1 %100, label %114, label %101

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64**, i64*** %107, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 1
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %105, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %101, %88, %75, %62, %49, %32
  br label %159

115:                                              ; preds = %101
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = bitcast i64* %118 to i32*
  %120 = load i32, i32* @qtrue, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @TraceLine(i32* %116, i32* %119, %struct.TYPE_5__* %8, i32 %120, i32* %121)
  %123 = load i32, i32* @numthreads, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* @c_sunHit, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @c_sunHit, align 4
  br label %128

128:                                              ; preds = %125, %115
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** @sunLight, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %132, %135
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** @sunLight, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** @sunLight, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32 %156, i32* %158, align 4
  br label %171

159:                                              ; preds = %114
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %28

162:                                              ; preds = %28
  %163 = load i32, i32* @numthreads, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @c_sunMiss, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @c_sunMiss, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @VectorClear(i32* %169)
  br label %171

171:                                              ; preds = %168, %128, %13
  ret void
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32, i32*) #1

declare dso_local i32 @TraceLine(i32*, i32*, %struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
