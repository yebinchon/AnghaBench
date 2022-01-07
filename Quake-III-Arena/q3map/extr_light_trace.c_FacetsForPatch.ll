; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_FacetsForPatch.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_FacetsForPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }

@drawVerts = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FacetsForPatch(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** @drawVerts, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32* %29, i32** %30, align 8
  %31 = bitcast %struct.TYPE_14__* %14 to { i64, i32* }*
  %32 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %31, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call %struct.TYPE_14__* @SubdivideMesh(i64 %33, i32* %35, i32 8, i32 999)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %16, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %38 = bitcast %struct.TYPE_14__* %37 to { i64, i32* }*
  %39 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %38, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PutMeshOnCurve(i64 %40, i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %45 = bitcast %struct.TYPE_14__* %44 to { i64, i32* }*
  %46 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %45, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @MakeMeshNormals(i64 %47, i32* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %52 = call %struct.TYPE_14__* @RemoveLinearMeshColumnsRows(%struct.TYPE_14__* %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %15, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %54 = call i32 @FreeMesh(%struct.TYPE_14__* %53)
  %55 = load i32, i32* @qtrue, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 %61, %65
  %67 = mul nsw i32 %66, 2
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32* @malloc(i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %177, %3
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %180

89:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %173, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %176

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32* %112, i32** %10, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32* %119, i32** %11, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32* %125, i32** %12, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32*, i32** %9, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i64 @CM_GenerateFacetFor4Points(i32* %131, i32* %132, i32* %133, i32* %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %97
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %172

141:                                              ; preds = %97
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = call i64 @CM_GenerateFacetFor3Points(i32* %147, i32* %148, i32* %149, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %153, %141
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = call i64 @CM_GenerateFacetFor3Points(i32* %162, i32* %163, i32* %164, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %168, %156
  br label %172

172:                                              ; preds = %171, %138
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %90

176:                                              ; preds = %90
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %82

180:                                              ; preds = %82
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %185 = call i32 @FreeMesh(%struct.TYPE_14__* %184)
  ret void
}

declare dso_local %struct.TYPE_14__* @SubdivideMesh(i64, i32*, i32, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, i32*) #1

declare dso_local i32 @MakeMeshNormals(i64, i32*) #1

declare dso_local %struct.TYPE_14__* @RemoveLinearMeshColumnsRows(%struct.TYPE_14__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_14__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @CM_GenerateFacetFor4Points(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @CM_GenerateFacetFor3Points(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
