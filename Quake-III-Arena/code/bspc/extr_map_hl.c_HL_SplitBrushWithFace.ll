; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_SplitBrushWithFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_SplitBrushWithFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@hl_dplanes = common dso_local global i32* null, align 8
@hl_dsurfedges = common dso_local global i32* null, align 8
@hl_dvertexes = common dso_local global %struct.TYPE_18__* null, align 8
@hl_dedges = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"HL_SplitBrushWithFace: no new brush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @HL_SplitBrushWithFace(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %20 = load i32*, i32** @hl_dplanes, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call i32 @memcpy(%struct.TYPE_15__* %12, i32* %24, i32 8)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VectorNegate(i32 %32, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %2
  store i32 0, i32* %10, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %19, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %139, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %142

47:                                               ; preds = %41
  %48 = load i32*, i32** @hl_dsurfedges, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** @hl_dvertexes, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** @hl_dedges, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @abs(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %13, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** @hl_dvertexes, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** @hl_dedges, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @abs(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %80, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @VectorSubtract(i32* %91, i32* %92, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @CrossProduct(i32 %95, i32 %97, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @VectorNormalize(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = call float @DotProduct(i32 %102, i32* %103)
  store float %104, float* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load float, float* %11, align 4
  %107 = call i32 @FindFloatPlane(i32 %105, float %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @SplitBrush(%struct.TYPE_17__* %108, i32 %109, %struct.TYPE_17__** %17, %struct.TYPE_17__** %18)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %47
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %19, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %113, %47
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %127 = icmp ne %struct.TYPE_17__* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = call i32 @Log_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %131 = call i32 @FreeBrushList(%struct.TYPE_17__* %130)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %154

132:                                              ; preds = %125
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %4, align 8
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %41

142:                                              ; preds = %41
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %147 = call i32 @FreeBrush(%struct.TYPE_17__* %146)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %154

148:                                              ; preds = %142
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %19, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %3, align 8
  br label %154

154:                                              ; preds = %148, %145, %128
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %155
}

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @VectorNegate(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local float @DotProduct(i32, i32*) #1

declare dso_local i32 @FindFloatPlane(i32, float) #1

declare dso_local i32 @SplitBrush(%struct.TYPE_17__*, i32, %struct.TYPE_17__**, %struct.TYPE_17__**) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @FreeBrushList(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
