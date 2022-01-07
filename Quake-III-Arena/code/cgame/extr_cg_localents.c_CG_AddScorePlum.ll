; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_localents.c_CG_AddScorePlum.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_localents.c_CG_AddScorePlum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { float, float, i32, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32, i32*, i32 }

@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@NUMBER_SIZE = common dso_local global i32 0, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddScorePlum(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32* null, i32** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %22 = fsub float %20, %21
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  store float %26, float* %9, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 255, i32* %36, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 17, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 17, i32* %44, align 4
  br label %101

45:                                               ; preds = %1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 255, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 255, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 255, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 50
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 0, i32* %64, align 4
  br label %100

65:                                               ; preds = %45
  %66 = load i32, i32* %12, align 4
  %67 = icmp sge i32 %66, 20
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  br label %99

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 0, i32* %84, align 4
  br label %98

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %85
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %32
  %102 = load float, float* %9, align 4
  %103 = fpext float %102 to double
  %104 = fcmp olt double %103, 2.500000e-01
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load float, float* %9, align 4
  %107 = fmul float 1.020000e+03, %106
  %108 = fptosi float %107 to i32
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %108, i32* %112, align 4
  br label %118

113:                                              ; preds = %101
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 255, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %105
  %119 = load i32, i32* @NUMBER_SIZE, align 4
  %120 = sdiv i32 %119, 2
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @VectorCopy(i32 %126, i32* %127)
  %129 = load float, float* %9, align 4
  %130 = fmul float %129, 1.000000e+02
  %131 = fsub float 1.100000e+02, %130
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to float
  %136 = fadd float %135, %131
  %137 = fptosi float %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 0), align 8
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @VectorSubtract(i32* %138, i32* %139, i32* %140)
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @CrossProduct(i32* %142, i32* %143, i32* %144)
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @VectorNormalize(i32* %146)
  %148 = load i32*, i32** %4, align 8
  %149 = load float, float* %9, align 4
  %150 = fmul float %149, 2.000000e+00
  %151 = load float, float* @M_PI, align 4
  %152 = fmul float %150, %151
  %153 = call i32 @sin(float %152)
  %154 = mul nsw i32 20, %153
  %155 = add nsw i32 -10, %154
  %156 = sitofp i32 %155 to float
  %157 = load i32*, i32** %7, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @VectorMA(i32* %148, float %156, i32* %157, i32* %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 0), align 8
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @VectorSubtract(i32* %160, i32* %161, i32* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call float @VectorLength(i32* %164)
  store float %165, float* %10, align 4
  %166 = load float, float* %10, align 4
  %167 = fcmp olt float %166, 2.000000e+01
  br i1 %167, label %168, label %171

168:                                              ; preds = %118
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %170 = call i32 @CG_FreeLocalEntity(%struct.TYPE_15__* %169)
  br label %249

171:                                              ; preds = %118
  %172 = load i32, i32* @qfalse, align 4
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* @qtrue, align 4
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %12, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %175, %171
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %198, %179
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi i1 [ false, %180 ], [ %186, %183 ]
  %189 = xor i1 %188, true
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = srem i32 %191, 10
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %12, align 4
  %197 = sdiv i32 %196, 10
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %180

201:                                              ; preds = %187
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %206
  store i32 10, i32* %207, align 4
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %204, %201
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %246, %210
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %249

215:                                              ; preds = %211
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sitofp i32 %217 to float
  %219 = fdiv float %218, 2.000000e+00
  %220 = load i32, i32* %11, align 4
  %221 = sitofp i32 %220 to float
  %222 = fsub float %219, %221
  %223 = load i32, i32* @NUMBER_SIZE, align 4
  %224 = sitofp i32 %223 to float
  %225 = fmul float %222, %224
  %226 = load i32*, i32** %7, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @VectorMA(i32* %216, float %225, i32* %226, i32* %229)
  %231 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 0, i32 0), align 8
  %232 = load i32, i32* %14, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* %11, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %231, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %245 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_14__* %244)
  br label %246

246:                                              ; preds = %215
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %211

249:                                              ; preds = %168, %211
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i32 @sin(float) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @CG_FreeLocalEntity(%struct.TYPE_15__*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
