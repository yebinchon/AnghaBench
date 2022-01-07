; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_sdl_audio_render.c_sdl_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_sdl_audio_render.c_sdl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"audio underrun\00", align 1
@MMAL_ENCODING_PCM_SIGNED = common dso_local global i64 0, align 8
@MMAL_ENCODING_PCM_FLOAT = common dso_local global i64 0, align 8
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @sdl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_callback(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %9, align 8
  br label %27

27:                                               ; preds = %257, %241, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %263

30:                                               ; preds = %27
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_21__* @mmal_queue_get(i32 %33)
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %10, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = icmp ne %struct.TYPE_21__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %263

39:                                               ; preds = %30
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMAL_ENCODING_PCM_SIGNED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %39
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %95

57:                                               ; preds = %47
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @memcpy(i32* %67, i64 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %5, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %236

95:                                               ; preds = %47, %39
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %235

105:                                              ; preds = %95
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %6, align 4
  %111 = mul i32 2, %110
  %112 = icmp ugt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 2, %114
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 3
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @vcos_assert(i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MMAL_ENCODING_PCM_FLOAT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %116
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = inttoptr i64 %137 to float*
  store float* %138, float** %13, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = bitcast i32* %139 to float*
  store float* %140, float** %14, align 8
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %173, %130
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = udiv i32 %143, 4
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %141
  %147 = load float*, float** %13, align 8
  %148 = load float, float* %147, align 4
  %149 = fpext float %148 to double
  %150 = fcmp oge double %149, 1.000000e+00
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load float*, float** %14, align 8
  store float 3.276700e+04, float* %152, align 4
  br label %168

153:                                              ; preds = %146
  %154 = load float*, float** %13, align 8
  %155 = load float, float* %154, align 4
  %156 = fpext float %155 to double
  %157 = fcmp olt double %156, -1.000000e+00
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load float*, float** %14, align 8
  store float -3.276800e+04, float* %159, align 4
  br label %167

160:                                              ; preds = %153
  %161 = load float*, float** %13, align 8
  %162 = load float, float* %161, align 4
  %163 = fpext float %162 to double
  %164 = fmul double %163, 3.276800e+04
  %165 = fptrunc double %164 to float
  %166 = load float*, float** %14, align 8
  store float %165, float* %166, align 4
  br label %167

167:                                              ; preds = %160, %158
  br label %168

168:                                              ; preds = %167, %151
  %169 = load float*, float** %13, align 8
  %170 = getelementptr inbounds float, float* %169, i32 1
  store float* %170, float** %13, align 8
  %171 = load float*, float** %14, align 8
  %172 = getelementptr inbounds float, float* %171, i32 1
  store float* %172, float** %14, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %141

176:                                              ; preds = %141
  br label %214

177:                                              ; preds = %116
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MMAL_ENCODING_PCM_SIGNED, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %177
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = inttoptr i64 %192 to i32*
  store i32* %193, i32** %15, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = bitcast i32* %194 to float*
  store float* %195, float** %16, align 8
  store i32 0, i32* %11, align 4
  br label %196

196:                                              ; preds = %209, %185
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = udiv i32 %198, 4
  %200 = icmp ult i32 %197, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %196
  %202 = load i32*, i32** %15, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %15, align 8
  %204 = load i32, i32* %202, align 4
  %205 = ashr i32 %204, 16
  %206 = sitofp i32 %205 to float
  %207 = load float*, float** %16, align 8
  %208 = getelementptr inbounds float, float* %207, i32 1
  store float* %208, float** %16, align 8
  store float %206, float* %207, align 4
  br label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %11, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %196

212:                                              ; preds = %196
  br label %213

213:                                              ; preds = %212, %177
  br label %214

214:                                              ; preds = %213, %176
  %215 = load i32, i32* %12, align 4
  %216 = zext i32 %215 to i64
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %216
  store i64 %220, i64* %218, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sub i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* %12, align 4
  %227 = udiv i32 %226, 2
  %228 = load i32*, i32** %5, align 8
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %5, align 8
  %231 = load i32, i32* %12, align 4
  %232 = udiv i32 %231, 2
  %233 = load i32, i32* %6, align 4
  %234 = sub i32 %233, %232
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %214, %95
  br label %236

236:                                              ; preds = %235, %66
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %246 = call i32 @mmal_queue_put_back(i32 %244, %struct.TYPE_21__* %245)
  br label %27

247:                                              ; preds = %236
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %256 = call i32 @mmal_event_eos_send(%struct.TYPE_18__* %255)
  br label %257

257:                                              ; preds = %254, %247
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %262 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_18__* %260, %struct.TYPE_21__* %261)
  br label %27

263:                                              ; preds = %37, %27
  ret void
}

declare dso_local %struct.TYPE_21__* @mmal_queue_get(i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @mmal_event_eos_send(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
