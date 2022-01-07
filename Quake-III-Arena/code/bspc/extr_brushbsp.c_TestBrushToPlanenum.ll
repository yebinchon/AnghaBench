; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_TestBrushToPlanenum.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_TestBrushToPlanenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float, i32 }
%struct.TYPE_11__ = type { float*, float*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_MAPFILE_PLANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad planenum\00", align 1
@SFL_TESTED = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@PSIDE_FACING = common dso_local global i32 0, align 4
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BOTH = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i64 0, align 8
@SFL_VISIBLE = common dso_local global i32 0, align 4
@SURF_SKIP = common dso_local global i32 0, align 4
@SURF_HINT = common dso_local global i32 0, align 4
@PLANESIDE_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestBrushToPlanenum(%struct.TYPE_11__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapplanes, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %89, %5
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @MAX_MAPFILE_PLANES, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @Error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %37
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* @SFL_TESTED, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %56
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @PSIDE_BACK, align 4
  %67 = load i32, i32* @PSIDE_FACING, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  br label %256

69:                                               ; preds = %51
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, 1
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32, i32* @SFL_TESTED, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %75
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @PSIDE_FRONT, align 4
  %86 = load i32, i32* @PSIDE_FACING, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %6, align 4
  br label %256

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %31

92:                                               ; preds = %31
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load float*, float** %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load float*, float** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %100 = call i32 @BoxOnPlaneSide(float* %95, float* %98, %struct.TYPE_10__* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @PSIDE_BOTH, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %256

106:                                              ; preds = %92
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %235, %106
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %238

113:                                              ; preds = %107
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TEXINFO_NODE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %235

125:                                              ; preds = %113
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SFL_VISIBLE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %125
  br label %235

138:                                              ; preds = %125
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %17, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %148 = icmp ne %struct.TYPE_9__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  br label %235

150:                                              ; preds = %138
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %194, %150
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %197

157:                                              ; preds = %151
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call double @DotProduct(i32 %164, i32 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = fpext float %171 to double
  %173 = fsub double %168, %172
  store double %173, double* %18, align 8
  %174 = load double, double* %18, align 8
  %175 = load double, double* %19, align 8
  %176 = fcmp ogt double %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %157
  %178 = load double, double* %18, align 8
  store double %178, double* %19, align 8
  br label %179

179:                                              ; preds = %177, %157
  %180 = load double, double* %18, align 8
  %181 = load double, double* %20, align 8
  %182 = fcmp olt double %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load double, double* %18, align 8
  store double %184, double* %20, align 8
  br label %185

185:                                              ; preds = %183, %179
  %186 = load double, double* %18, align 8
  %187 = fcmp ogt double %186, 1.000000e-01
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 1, i32* %21, align 4
  br label %189

189:                                              ; preds = %188, %185
  %190 = load double, double* %18, align 8
  %191 = fcmp olt double %190, -1.000000e-01
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 1, i32* %22, align 4
  br label %193

193:                                              ; preds = %192, %189
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %151

197:                                              ; preds = %151
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %234

200:                                              ; preds = %197
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %234

203:                                              ; preds = %200
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @SURF_SKIP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %203
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SURF_HINT, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %215
  %231 = load i32*, i32** %10, align 8
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %230, %215
  br label %233

233:                                              ; preds = %232, %203
  br label %234

234:                                              ; preds = %233, %200, %197
  br label %235

235:                                              ; preds = %234, %149, %137, %124
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %12, align 4
  br label %107

238:                                              ; preds = %107
  %239 = load double, double* %19, align 8
  %240 = fcmp ogt double %239, 0.000000e+00
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load double, double* %19, align 8
  %243 = fcmp olt double %242, 1.000000e+00
  br i1 %243, label %250, label %244

244:                                              ; preds = %241, %238
  %245 = load double, double* %20, align 8
  %246 = fcmp olt double %245, 0.000000e+00
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load double, double* %20, align 8
  %249 = fcmp ogt double %248, -1.000000e+00
  br i1 %249, label %250, label %254

250:                                              ; preds = %247, %241
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %250, %247, %244
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %254, %104, %74, %55
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @BoxOnPlaneSide(float*, float*, %struct.TYPE_10__*) #1

declare dso_local double @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
