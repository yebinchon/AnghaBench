; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_AddEdge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_AddEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32** }
%struct.TYPE_7__ = type { i8*, i8*, i32, i64*, i32, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@c_degenerateEdges = common dso_local global i32 0, align 4
@numOriginalEdges = common dso_local global i64 0, align 8
@MAX_ORIGINAL_EDGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_ORIGINAL_EDGES\00", align 1
@originalEdges = common dso_local global %struct.TYPE_8__* null, align 8
@numEdgeLines = common dso_local global i32 0, align 4
@edgeLines = common dso_local global %struct.TYPE_7__* null, align 8
@POINT_ON_LINE_EPSILON = common dso_local global float 0.000000e+00, align 4
@MAX_EDGE_LINES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"MAX_EDGE_LINES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddEdge(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = call i32 @VectorSubtract(i64* %12, i64* %13, i64* %14)
  %16 = load i64*, i64** %11, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = call float @VectorNormalize(i64* %16, i64* %17)
  store float %18, float* %10, align 4
  %19 = load float, float* %10, align 4
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.000000e-01
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @c_degenerateEdges, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @c_degenerateEdges, align 4
  store i32 -1, i32* %4, align 4
  br label %248

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %11, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64*, i64** %11, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call double @fabs(i64 %39)
  %41 = fcmp une double %40, 1.000000e+00
  br i1 %41, label %42, label %72

42:                                               ; preds = %28
  %43 = load i64, i64* @numOriginalEdges, align 8
  %44 = load i64, i64* @MAX_ORIGINAL_EDGES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64*, i64** %5, align 8
  %50 = bitcast i64* %49 to i32*
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @originalEdges, align 8
  %52 = load i64, i64* @numOriginalEdges, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  store i32* %50, i32** %56, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = bitcast i64* %57 to i32*
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @originalEdges, align 8
  %60 = load i64, i64* @numOriginalEdges, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* %58, i32** %64, align 8
  %65 = load float, float* %10, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @originalEdges, align 8
  %67 = load i64, i64* @numOriginalEdges, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store float %65, float* %69, align 8
  %70 = load i64, i64* @numOriginalEdges, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* @numOriginalEdges, align 8
  store i32 -1, i32* %4, align 4
  br label %248

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72, %25
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %178, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @numEdgeLines, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %181

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @edgeLines, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %9, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @DotProduct(i64* %83, i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %87 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sitofp i64 %93 to float
  store float %94, float* %10, align 4
  %95 = load float, float* %10, align 4
  %96 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %97 = fneg float %96
  %98 = fcmp olt float %95, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %78
  %100 = load float, float* %10, align 4
  %101 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %102 = fcmp ogt float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %78
  br label %178

104:                                              ; preds = %99
  %105 = load i64*, i64** %5, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @DotProduct(i64* %105, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sitofp i64 %115 to float
  store float %116, float* %10, align 4
  %117 = load float, float* %10, align 4
  %118 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %119 = fneg float %118
  %120 = fcmp olt float %117, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %104
  %122 = load float, float* %10, align 4
  %123 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %124 = fcmp ogt float %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %104
  br label %178

126:                                              ; preds = %121
  %127 = load i64*, i64** %6, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @DotProduct(i64* %127, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %131 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sitofp i64 %137 to float
  store float %138, float* %10, align 4
  %139 = load float, float* %10, align 4
  %140 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %141 = fneg float %140
  %142 = fcmp olt float %139, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %126
  %144 = load float, float* %10, align 4
  %145 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %146 = fcmp ogt float %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %126
  br label %178

148:                                              ; preds = %143
  %149 = load i64*, i64** %6, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @DotProduct(i64* %149, i32 %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %153 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sitofp i64 %159 to float
  store float %160, float* %10, align 4
  %161 = load float, float* %10, align 4
  %162 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %163 = fneg float %162
  %164 = fcmp olt float %161, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %148
  %166 = load float, float* %10, align 4
  %167 = load float, float* @POINT_ON_LINE_EPSILON, align 4
  %168 = fcmp ogt float %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %148
  br label %178

170:                                              ; preds = %165
  %171 = load i64*, i64** %5, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %173 = call i32 @InsertPointOnEdge(i64* %171, %struct.TYPE_7__* %172)
  %174 = load i64*, i64** %6, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %176 = call i32 @InsertPointOnEdge(i64* %174, %struct.TYPE_7__* %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %4, align 4
  br label %248

178:                                              ; preds = %169, %147, %125, %103
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %74

181:                                              ; preds = %74
  %182 = load i32, i32* @numEdgeLines, align 4
  %183 = load i32, i32* @MAX_EDGE_LINES, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %181
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** @edgeLines, align 8
  %189 = load i32, i32* @numEdgeLines, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  store %struct.TYPE_7__* %191, %struct.TYPE_7__** %9, align 8
  %192 = load i32, i32* @numEdgeLines, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @numEdgeLines, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %201, align 8
  %202 = load i64*, i64** %5, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = call i32 @VectorCopy(i64* %202, i64* %205)
  %207 = load i64*, i64** %11, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 5
  %210 = load i64*, i64** %209, align 8
  %211 = call i32 @VectorCopy(i64* %207, i64* %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 5
  %214 = load i64*, i64** %213, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @MakeNormalVectors(i64* %214, i32 %217, i32 %220)
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 3
  %224 = load i64*, i64** %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @DotProduct(i64* %224, i32 %227)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i64*, i64** %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i8* @DotProduct(i64* %233, i32 %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load i64*, i64** %5, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %242 = call i32 @InsertPointOnEdge(i64* %240, %struct.TYPE_7__* %241)
  %243 = load i64*, i64** %6, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %245 = call i32 @InsertPointOnEdge(i64* %243, %struct.TYPE_7__* %244)
  %246 = load i32, i32* @numEdgeLines, align 4
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %187, %170, %48, %22
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*, i64*) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i8* @DotProduct(i64*, i32) #1

declare dso_local i32 @InsertPointOnEdge(i64*, %struct.TYPE_7__*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @MakeNormalVectors(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
