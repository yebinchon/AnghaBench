; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_getDefaultFilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_getDefaultFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sws_getDefaultFilter(float %0, float %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = call %struct.TYPE_5__* @av_malloc(i32 32)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %267

23:                                               ; preds = %7
  %24 = load float, float* %9, align 4
  %25 = fpext float %24 to double
  %26 = fcmp une double %25, 0.000000e+00
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load float, float* %9, align 4
  %29 = call i8* @sws_getGaussianVec(float %28, double 3.000000e+00)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load float, float* %9, align 4
  %34 = call i8* @sws_getGaussianVec(float %33, double 3.000000e+00)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  br label %47

38:                                               ; preds = %23
  %39 = call i8* (...) @sws_getIdentityVec()
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = call i8* (...) @sws_getIdentityVec()
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %38, %27
  %48 = load float, float* %10, align 4
  %49 = fpext float %48 to double
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load float, float* %10, align 4
  %53 = call i8* @sws_getGaussianVec(float %52, double 3.000000e+00)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load float, float* %10, align 4
  %58 = call i8* @sws_getGaussianVec(float %57, double 3.000000e+00)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  br label %71

62:                                               ; preds = %47
  %63 = call i8* (...) @sws_getIdentityVec()
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = call i8* (...) @sws_getIdentityVec()
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %62, %51
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86, %81, %76, %71
  br label %249

92:                                               ; preds = %86
  %93 = load float, float* %12, align 4
  %94 = fpext float %93 to double
  %95 = fcmp une double %94, 0.000000e+00
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = call i8* (...) @sws_getIdentityVec()
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %17, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %249

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load float, float* %12, align 4
  %107 = fneg float %106
  %108 = call i32 @sws_scaleVec(i32* %105, float %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load float, float* %12, align 4
  %113 = fneg float %112
  %114 = call i32 @sws_scaleVec(i32* %111, float %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = call i32 @sws_addVec(i32* %117, i32* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @sws_addVec(i32* %122, i32* %123)
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @sws_freeVec(i32* %125)
  br label %127

127:                                              ; preds = %102, %92
  %128 = load float, float* %11, align 4
  %129 = fpext float %128 to double
  %130 = fcmp une double %129, 0.000000e+00
  br i1 %130, label %131, label %162

131:                                              ; preds = %127
  %132 = call i8* (...) @sws_getIdentityVec()
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %18, align 8
  %134 = load i32*, i32** %18, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %249

137:                                              ; preds = %131
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load float, float* %11, align 4
  %142 = fneg float %141
  %143 = call i32 @sws_scaleVec(i32* %140, float %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load float, float* %11, align 4
  %148 = fneg float %147
  %149 = call i32 @sws_scaleVec(i32* %146, float %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @sws_addVec(i32* %152, i32* %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = call i32 @sws_addVec(i32* %157, i32* %158)
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @sws_freeVec(i32* %160)
  br label %162

162:                                              ; preds = %137, %127
  %163 = load float, float* %13, align 4
  %164 = fpext float %163 to double
  %165 = fcmp une double %164, 0.000000e+00
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load float, float* %13, align 4
  %171 = fpext float %170 to double
  %172 = fadd double %171, 5.000000e-01
  %173 = fptosi double %172 to i32
  %174 = call i32 @sws_shiftVec(i32* %169, i32 %173)
  br label %175

175:                                              ; preds = %166, %162
  %176 = load float, float* %14, align 4
  %177 = fpext float %176 to double
  %178 = fcmp une double %177, 0.000000e+00
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load float, float* %14, align 4
  %184 = fpext float %183 to double
  %185 = fadd double %184, 5.000000e-01
  %186 = fptosi double %185 to i32
  %187 = call i32 @sws_shiftVec(i32* %182, i32 %186)
  br label %188

188:                                              ; preds = %179, %175
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @sws_normalizeVec(i32* %191, double 1.000000e+00)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @sws_normalizeVec(i32* %195, double 1.000000e+00)
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @sws_normalizeVec(i32* %199, double 1.000000e+00)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @sws_normalizeVec(i32* %203, double 1.000000e+00)
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @isnan_vec(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %228, label %210

210:                                              ; preds = %188
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i64 @isnan_vec(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @isnan_vec(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @isnan_vec(i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222, %216, %210, %188
  br label %249

229:                                              ; preds = %222
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @AV_LOG_DEBUG, align 4
  %237 = call i32 @sws_printVec2(i32* %235, i32* null, i32 %236)
  br label %238

238:                                              ; preds = %232, %229
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* @AV_LOG_DEBUG, align 4
  %246 = call i32 @sws_printVec2(i32* %244, i32* null, i32 %245)
  br label %247

247:                                              ; preds = %241, %238
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %248, %struct.TYPE_5__** %8, align 8
  br label %267

249:                                              ; preds = %228, %136, %101, %91
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @sws_freeVec(i32* %252)
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @sws_freeVec(i32* %256)
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @sws_freeVec(i32* %260)
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @sws_freeVec(i32* %264)
  %266 = call i32 @av_freep(%struct.TYPE_5__** %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %267

267:                                              ; preds = %249, %247, %22
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  ret %struct.TYPE_5__* %268
}

declare dso_local %struct.TYPE_5__* @av_malloc(i32) #1

declare dso_local i8* @sws_getGaussianVec(float, double) #1

declare dso_local i8* @sws_getIdentityVec(...) #1

declare dso_local i32 @sws_scaleVec(i32*, float) #1

declare dso_local i32 @sws_addVec(i32*, i32*) #1

declare dso_local i32 @sws_freeVec(i32*) #1

declare dso_local i32 @sws_shiftVec(i32*, i32) #1

declare dso_local i32 @sws_normalizeVec(i32*, double) #1

declare dso_local i64 @isnan_vec(i32*) #1

declare dso_local i32 @sws_printVec2(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
