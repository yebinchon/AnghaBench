; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_audio_resample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_audio_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, float*, i32, i32, float*, i32, float*, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.resampler_data*)* }
%struct.resampler_data = type { float*, float*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.record_audio_data = type { i32, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.record_audio_data*)* @ffmpeg_audio_resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_audio_resample(%struct.TYPE_9__* %0, %struct.record_audio_data* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.record_audio_data*, align 8
  %5 = alloca %struct.resampler_data, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.record_audio_data* %1, %struct.record_audio_data** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %253

18:                                               ; preds = %11, %2
  %19 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %20 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %141

27:                                               ; preds = %18
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load float*, float** %30, align 8
  %32 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %33 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @av_realloc(float* %31, i32 %42)
  %44 = inttoptr i64 %43 to float*
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store float* %44, float** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load float*, float** %50, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %27
  br label %253

54:                                               ; preds = %27
  %55 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %56 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %62 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = add nsw i32 %68, 16
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load float*, float** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %80, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i64 @av_realloc(float* %76, i32 %88)
  %90 = inttoptr i64 %89 to float*
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store float* %90, float** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load float*, float** %96, align 8
  %98 = icmp ne float* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %54
  br label %253

100:                                              ; preds = %54
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @MAX(i32 %104, i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  store i32 %109, i32* %112, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 6
  %116 = load float*, float** %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %120, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i64 @av_realloc(float* %116, i32 %128)
  %130 = inttoptr i64 %129 to float*
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 6
  store float* %130, float** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load float*, float** %136, align 8
  %138 = icmp ne float* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %100
  br label %253

140:                                              ; preds = %100
  br label %141

141:                                              ; preds = %140, %18
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 9
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = icmp ne %struct.TYPE_6__* %151, null
  br i1 %152, label %153, label %176

153:                                              ; preds = %147, %141
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load float*, float** %156, align 8
  %158 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %159 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %158, i32 0, i32 1
  %160 = load float*, float** %159, align 8
  %161 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %162 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %163, %167
  %169 = call i32 @convert_s16_to_float(float* %157, float* %160, i32 %168, double 1.000000e+00)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load float*, float** %172, align 8
  %174 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %175 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %174, i32 0, i32 1
  store float* %173, float** %175, align 8
  br label %176

176:                                              ; preds = %153, %147
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 9
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = icmp ne %struct.TYPE_6__* %180, null
  br i1 %181, label %182, label %253

182:                                              ; preds = %176
  %183 = bitcast %struct.resampler_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %183, i8 0, i64 32, i1 false)
  %184 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %185 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %184, i32 0, i32 1
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %5, i32 0, i32 0
  store float* %186, float** %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load float*, float** %190, align 8
  %192 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %5, i32 0, i32 1
  store float* %191, float** %192, align 8
  %193 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %194 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %5, i32 0, i32 2
  store i32 %195, i32* %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %5, i32 0, i32 3
  store i32 %200, i32* %201, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 9
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32 (i32, %struct.resampler_data*)*, i32 (i32, %struct.resampler_data*)** %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %207(i32 %211, %struct.resampler_data* %5)
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  %216 = load float*, float** %215, align 8
  %217 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %218 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %217, i32 0, i32 1
  store float* %216, float** %218, align 8
  %219 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %5, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %222 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %182
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 6
  %232 = load float*, float** %231, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 4
  %236 = load float*, float** %235, align 8
  %237 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %238 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %239, %243
  %245 = call i32 @convert_float_to_s16(float* %232, float* %236, i32 %244)
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 6
  %249 = load float*, float** %248, align 8
  %250 = load %struct.record_audio_data*, %struct.record_audio_data** %4, align 8
  %251 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %250, i32 0, i32 1
  store float* %249, float** %251, align 8
  br label %252

252:                                              ; preds = %228, %182
  br label %253

253:                                              ; preds = %17, %53, %99, %139, %252, %176
  ret void
}

declare dso_local i64 @av_realloc(float*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @convert_s16_to_float(float*, float*, i32, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @convert_float_to_s16(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
