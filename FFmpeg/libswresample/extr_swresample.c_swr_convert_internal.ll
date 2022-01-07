; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_swr_convert_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_swr_convert_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { i64, i32, i32, i32, i64, %struct.TYPE_28__, i32, i32 (i64, i64, i64, i32, i32, i32, i32)*, i32, i32 (i64, i64, i64, i32, i32, i32, i32)*, i64, i64, %struct.TYPE_29__, %struct.TYPE_30__, i32, i32, i32, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, i64 }
%struct.TYPE_28__ = type { i32, i64, i32, %struct.TYPE_31__, %struct.TYPE_31__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_31__ = type { i64, i32, i32, i64*, i32 }

@SWR_DITHER_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SwrContext*, %struct.TYPE_31__*, i32, %struct.TYPE_31__*, i32)* @swr_convert_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swr_convert_internal(%struct.SwrContext* %0, %struct.TYPE_31__* %1, i32 %2, %struct.TYPE_31__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.SwrContext*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__, align 8
  %17 = alloca %struct.TYPE_31__, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.SwrContext* %0, %struct.SwrContext** %7, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %24 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %23, i32 0, i32 20
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %5
  %28 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %29 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @av_assert0(i32 %33)
  %35 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %36 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %35, i32 0, i32 20
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @swri_audio_convert(i64 %37, %struct.TYPE_31__* %38, %struct.TYPE_31__* %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %6, align 4
  br label %681

43:                                               ; preds = %5
  %44 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %45 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %44, i32 0, i32 19
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %681

51:                                               ; preds = %43
  %52 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %53 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %58 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %57, i32 0, i32 18
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %62 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @av_assert0(i32 %65)
  %67 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %68 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %67, i32 0, i32 18
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %681

74:                                               ; preds = %56
  br label %95

75:                                               ; preds = %51
  %76 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %77 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %76, i32 0, i32 18
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %81 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %80, i32 0, i32 13
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @av_assert0(i32 %85)
  %87 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %88 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %87, i32 0, i32 18
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %681

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %97 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %96, i32 0, i32 17
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %681

103:                                              ; preds = %95
  %104 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %105 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %104, i32 0, i32 19
  store %struct.TYPE_31__* %105, %struct.TYPE_31__** %12, align 8
  %106 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %107 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %106, i32 0, i32 18
  %108 = bitcast %struct.TYPE_31__* %17 to i8*
  %109 = bitcast %struct.TYPE_31__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 32, i1 false)
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %13, align 8
  %110 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %111 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %110, i32 0, i32 17
  %112 = bitcast %struct.TYPE_31__* %16 to i8*
  %113 = bitcast %struct.TYPE_31__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 32, i1 false)
  store %struct.TYPE_31__* %16, %struct.TYPE_31__** %14, align 8
  %114 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %115 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %118 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %103
  %122 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %123 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %129 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %128, i32 0, i32 16
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* %133, %struct.TYPE_31__** %12, align 8
  br label %134

134:                                              ; preds = %132, %127, %121, %103
  %135 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %136 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %141 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %149

144:                                              ; preds = %134
  %145 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %146 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_31__* %150, %struct.TYPE_31__** %13, align 8
  br label %151

151:                                              ; preds = %149, %144, %139
  %152 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %153 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %158 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %157, i32 0, i32 15
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %166

161:                                              ; preds = %151
  %162 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %163 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %162, i32 0, i32 14
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %167, %struct.TYPE_31__** %14, align 8
  br label %168

168:                                              ; preds = %166, %161, %156
  %169 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %170 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %173 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %229

176:                                              ; preds = %168
  %177 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %178 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %177, i32 0, i32 13
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %229

182:                                              ; preds = %176
  %183 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %184 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 128
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %189 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, 31
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %229, label %194

194:                                              ; preds = %187, %182
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %197 = icmp eq %struct.TYPE_31__* %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @FFMIN(i32 %199, i32 %200)
  store i32 %201, i32* %9, align 4
  %202 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %203 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %202, i32 0, i32 12
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @av_assert0(i32 %205)
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @copy(%struct.TYPE_31__* %207, %struct.TYPE_31__* %208, i32 %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %6, align 4
  br label %681

212:                                              ; preds = %194
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %215 = icmp eq %struct.TYPE_31__* %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %217, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_31__* %217, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %217, %struct.TYPE_31__** %14, align 8
  br label %227

218:                                              ; preds = %212
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %221 = icmp eq %struct.TYPE_31__* %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %223, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %223, %struct.TYPE_31__** %14, align 8
  br label %226

224:                                              ; preds = %218
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %225, %struct.TYPE_31__** %14, align 8
  br label %226

226:                                              ; preds = %224, %222
  br label %227

227:                                              ; preds = %226, %216
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %187, %176, %168
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %232 = icmp ne %struct.TYPE_31__* %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %235 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %234, i32 0, i32 11
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @swri_audio_convert(i64 %236, %struct.TYPE_31__* %237, %struct.TYPE_31__* %238, i32 %239)
  br label %241

241:                                              ; preds = %233, %229
  %242 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %243 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %242, i32 0, i32 10
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %272

246:                                              ; preds = %241
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %249 = icmp ne %struct.TYPE_31__* %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @resample(%struct.SwrContext* %251, %struct.TYPE_31__* %252, i32 %253, %struct.TYPE_31__* %254, i32 %255)
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %250, %246
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %260 = icmp ne %struct.TYPE_31__* %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %257
  %262 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %268 = icmp eq %struct.TYPE_31__* %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @swri_rematrix(%struct.SwrContext* %262, %struct.TYPE_31__* %263, %struct.TYPE_31__* %264, i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %261, %257
  br label %298

272:                                              ; preds = %241
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %275 = icmp ne %struct.TYPE_31__* %273, %274
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %283 = icmp eq %struct.TYPE_31__* %281, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @swri_rematrix(%struct.SwrContext* %277, %struct.TYPE_31__* %278, %struct.TYPE_31__* %279, i32 %280, i32 %284)
  br label %286

286:                                              ; preds = %276, %272
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %289 = icmp ne %struct.TYPE_31__* %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @resample(%struct.SwrContext* %291, %struct.TYPE_31__* %292, i32 %293, %struct.TYPE_31__* %294, i32 %295)
  store i32 %296, i32* %9, align 4
  br label %297

297:                                              ; preds = %290, %286
  br label %298

298:                                              ; preds = %297, %271
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %301 = icmp ne %struct.TYPE_31__* %299, %300
  br i1 %301, label %302, label %679

302:                                              ; preds = %298
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %679

305:                                              ; preds = %302
  %306 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  store %struct.TYPE_31__* %306, %struct.TYPE_31__** %18, align 8
  %307 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %308 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %671

312:                                              ; preds = %305
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @FFMAX(i32 %313, i32 65536)
  store i32 %314, i32* %20, align 4
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %317 = icmp eq %struct.TYPE_31__* %315, %316
  br i1 %317, label %318, label %331

318:                                              ; preds = %312
  %319 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %320 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 4
  store %struct.TYPE_31__* %321, %struct.TYPE_31__** %18, align 8
  %322 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %323 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 4
  %325 = load i32, i32* %20, align 4
  %326 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %324, i32 %325)
  store i32 %326, i32* %15, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %318
  %329 = load i32, i32* %15, align 4
  store i32 %329, i32* %6, align 4
  br label %681

330:                                              ; preds = %318
  br label %331

331:                                              ; preds = %330, %312
  %332 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %333 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 3
  %335 = load i32, i32* %20, align 4
  %336 = call i32 @swri_realloc_audio(%struct.TYPE_31__* %334, i32 %335)
  store i32 %336, i32* %15, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %331
  %339 = load i32, i32* %15, align 4
  store i32 %339, i32* %6, align 4
  br label %681

340:                                              ; preds = %331
  %341 = load i32, i32* %15, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %388

343:                                              ; preds = %340
  store i32 0, i32* %19, align 4
  br label %344

344:                                              ; preds = %384, %343
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %348 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp slt i64 %346, %351
  br i1 %352, label %353, label %387

353:                                              ; preds = %344
  %354 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %355 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %356 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 3
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %19, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %365 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %19, align 4
  %370 = sext i32 %369 to i64
  %371 = mul i64 12345678913579, %370
  %372 = add i64 %371, 3141592
  %373 = urem i64 %372, 2718281828
  %374 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %375 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @swri_get_dither(%struct.SwrContext* %354, i64 %363, i32 %368, i64 %373, i32 %378)
  store i32 %379, i32* %15, align 4
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %353
  %382 = load i32, i32* %15, align 4
  store i32 %382, i32* %6, align 4
  br label %681

383:                                              ; preds = %353
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %19, align 4
  br label %344

387:                                              ; preds = %344
  br label %388

388:                                              ; preds = %387, %340
  %389 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %390 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %393, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @av_assert0(i32 %398)
  %400 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %401 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* %9, align 4
  %405 = add nsw i32 %403, %404
  %406 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %407 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 3
  %409 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = icmp sgt i32 %405, %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %388
  %413 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %414 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 2
  store i32 0, i32* %415, align 8
  br label %416

416:                                              ; preds = %412, %388
  %417 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %418 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @SWR_DITHER_NS, align 8
  %422 = icmp slt i64 %420, %421
  br i1 %422, label %423, label %623

423:                                              ; preds = %416
  %424 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %425 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %424, i32 0, i32 9
  %426 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %425, align 8
  %427 = icmp ne i32 (i64, i64, i64, i32, i32, i32, i32)* %426, null
  br i1 %427, label %428, label %566

428:                                              ; preds = %423
  %429 = load i32, i32* %9, align 4
  %430 = and i32 %429, -16
  store i32 %430, i32* %21, align 4
  %431 = load i32, i32* %21, align 4
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = mul nsw i32 %431, %434
  store i32 %435, i32* %22, align 4
  %436 = load i32, i32* %21, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %494

438:                                              ; preds = %428
  store i32 0, i32* %19, align 4
  br label %439

439:                                              ; preds = %490, %438
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %443 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = icmp slt i64 %441, %444
  br i1 %445, label %446, label %493

446:                                              ; preds = %439
  %447 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %448 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %447, i32 0, i32 9
  %449 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %448, align 8
  %450 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %451 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %450, i32 0, i32 3
  %452 = load i64*, i64** %451, align 8
  %453 = load i32, i32* %19, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i64, i64* %452, i64 %454
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %458 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %457, i32 0, i32 3
  %459 = load i64*, i64** %458, align 8
  %460 = load i32, i32* %19, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i64, i64* %459, i64 %461
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %465 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %464, i32 0, i32 5
  %466 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %465, i32 0, i32 3
  %467 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %466, i32 0, i32 3
  %468 = load i64*, i64** %467, align 8
  %469 = load i32, i32* %19, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i64, i64* %468, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %474 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %473, i32 0, i32 5
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %479 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = mul nsw i32 %477, %481
  %483 = sext i32 %482 to i64
  %484 = add nsw i64 %472, %483
  %485 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %486 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %485, i32 0, i32 8
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %21, align 4
  %489 = call i32 %449(i64 %456, i64 %463, i64 %484, i32 %487, i32 0, i32 0, i32 %488)
  br label %490

490:                                              ; preds = %446
  %491 = load i32, i32* %19, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %19, align 4
  br label %439

493:                                              ; preds = %439
  br label %494

494:                                              ; preds = %493, %428
  %495 = load i32, i32* %9, align 4
  %496 = load i32, i32* %21, align 4
  %497 = icmp ne i32 %495, %496
  br i1 %497, label %498, label %565

498:                                              ; preds = %494
  store i32 0, i32* %19, align 4
  br label %499

499:                                              ; preds = %561, %498
  %500 = load i32, i32* %19, align 4
  %501 = sext i32 %500 to i64
  %502 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %503 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp slt i64 %501, %504
  br i1 %505, label %506, label %564

506:                                              ; preds = %499
  %507 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %508 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %507, i32 0, i32 7
  %509 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %508, align 8
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %511 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %510, i32 0, i32 3
  %512 = load i64*, i64** %511, align 8
  %513 = load i32, i32* %19, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %512, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load i32, i32* %22, align 4
  %518 = sext i32 %517 to i64
  %519 = add nsw i64 %516, %518
  %520 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %520, i32 0, i32 3
  %522 = load i64*, i64** %521, align 8
  %523 = load i32, i32* %19, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i64, i64* %522, i64 %524
  %526 = load i64, i64* %525, align 8
  %527 = load i32, i32* %22, align 4
  %528 = sext i32 %527 to i64
  %529 = add nsw i64 %526, %528
  %530 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %531 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %531, i32 0, i32 3
  %533 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %532, i32 0, i32 3
  %534 = load i64*, i64** %533, align 8
  %535 = load i32, i32* %19, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i64, i64* %534, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %540 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %540, i32 0, i32 3
  %542 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %545 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = mul nsw i32 %543, %547
  %549 = sext i32 %548 to i64
  %550 = add nsw i64 %538, %549
  %551 = load i32, i32* %22, align 4
  %552 = sext i32 %551 to i64
  %553 = add nsw i64 %550, %552
  %554 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %555 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* %9, align 4
  %558 = load i32, i32* %21, align 4
  %559 = sub nsw i32 %557, %558
  %560 = call i32 %509(i64 %519, i64 %529, i64 %553, i32 %556, i32 0, i32 0, i32 %559)
  br label %561

561:                                              ; preds = %506
  %562 = load i32, i32* %19, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %19, align 4
  br label %499

564:                                              ; preds = %499
  br label %565

565:                                              ; preds = %564, %494
  br label %622

566:                                              ; preds = %423
  store i32 0, i32* %19, align 4
  br label %567

567:                                              ; preds = %618, %566
  %568 = load i32, i32* %19, align 4
  %569 = sext i32 %568 to i64
  %570 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %571 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = icmp slt i64 %569, %572
  br i1 %573, label %574, label %621

574:                                              ; preds = %567
  %575 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %576 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %575, i32 0, i32 7
  %577 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %576, align 8
  %578 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %579 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %578, i32 0, i32 3
  %580 = load i64*, i64** %579, align 8
  %581 = load i32, i32* %19, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i64, i64* %580, i64 %582
  %584 = load i64, i64* %583, align 8
  %585 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %586 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %585, i32 0, i32 3
  %587 = load i64*, i64** %586, align 8
  %588 = load i32, i32* %19, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i64, i64* %587, i64 %589
  %591 = load i64, i64* %590, align 8
  %592 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %593 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %592, i32 0, i32 5
  %594 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %593, i32 0, i32 3
  %595 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %594, i32 0, i32 3
  %596 = load i64*, i64** %595, align 8
  %597 = load i32, i32* %19, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i64, i64* %596, i64 %598
  %600 = load i64, i64* %599, align 8
  %601 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %602 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %602, i32 0, i32 3
  %604 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %603, i32 0, i32 2
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %607 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %606, i32 0, i32 5
  %608 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = mul nsw i32 %605, %609
  %611 = sext i32 %610 to i64
  %612 = add nsw i64 %600, %611
  %613 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %614 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %613, i32 0, i32 6
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* %9, align 4
  %617 = call i32 %577(i64 %584, i64 %591, i64 %612, i32 %615, i32 0, i32 0, i32 %616)
  br label %618

618:                                              ; preds = %574
  %619 = load i32, i32* %19, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %19, align 4
  br label %567

621:                                              ; preds = %567
  br label %622

622:                                              ; preds = %621, %565
  br label %664

623:                                              ; preds = %416
  %624 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %625 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 8
  switch i32 %626, label %663 [
    i32 129, label %627
    i32 128, label %636
    i32 130, label %645
    i32 131, label %654
  ]

627:                                              ; preds = %623
  %628 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %629 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %630 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %631 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %632 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %631, i32 0, i32 5
  %633 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %632, i32 0, i32 3
  %634 = load i32, i32* %9, align 4
  %635 = call i32 @swri_noise_shaping_int16(%struct.SwrContext* %628, %struct.TYPE_31__* %629, %struct.TYPE_31__* %630, %struct.TYPE_31__* %633, i32 %634)
  br label %663

636:                                              ; preds = %623
  %637 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %638 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %639 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %640 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %641 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %640, i32 0, i32 5
  %642 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %641, i32 0, i32 3
  %643 = load i32, i32* %9, align 4
  %644 = call i32 @swri_noise_shaping_int32(%struct.SwrContext* %637, %struct.TYPE_31__* %638, %struct.TYPE_31__* %639, %struct.TYPE_31__* %642, i32 %643)
  br label %663

645:                                              ; preds = %623
  %646 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %647 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %648 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %649 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %650 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %650, i32 0, i32 3
  %652 = load i32, i32* %9, align 4
  %653 = call i32 @swri_noise_shaping_float(%struct.SwrContext* %646, %struct.TYPE_31__* %647, %struct.TYPE_31__* %648, %struct.TYPE_31__* %651, i32 %652)
  br label %663

654:                                              ; preds = %623
  %655 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %656 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %657 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %658 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %659 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %658, i32 0, i32 5
  %660 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %659, i32 0, i32 3
  %661 = load i32, i32* %9, align 4
  %662 = call i32 @swri_noise_shaping_double(%struct.SwrContext* %655, %struct.TYPE_31__* %656, %struct.TYPE_31__* %657, %struct.TYPE_31__* %660, i32 %661)
  br label %663

663:                                              ; preds = %623, %654, %645, %636, %627
  br label %664

664:                                              ; preds = %663, %622
  %665 = load i32, i32* %9, align 4
  %666 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %667 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %666, i32 0, i32 5
  %668 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = add nsw i32 %669, %665
  store i32 %670, i32* %668, align 8
  br label %671

671:                                              ; preds = %664, %305
  %672 = load %struct.SwrContext*, %struct.SwrContext** %7, align 8
  %673 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %672, i32 0, i32 4
  %674 = load i64, i64* %673, align 8
  %675 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %676 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %677 = load i32, i32* %9, align 4
  %678 = call i32 @swri_audio_convert(i64 %674, %struct.TYPE_31__* %675, %struct.TYPE_31__* %676, i32 %677)
  br label %679

679:                                              ; preds = %671, %302, %298
  %680 = load i32, i32* %9, align 4
  store i32 %680, i32* %6, align 4
  br label %681

681:                                              ; preds = %679, %381, %338, %328, %198, %101, %92, %72, %49, %27
  %682 = load i32, i32* %6, align 4
  ret i32 %682
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @swri_audio_convert(i64, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @swri_realloc_audio(%struct.TYPE_31__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @copy(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @resample(%struct.SwrContext*, %struct.TYPE_31__*, i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @swri_rematrix(%struct.SwrContext*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @swri_get_dither(%struct.SwrContext*, i64, i32, i64, i32) #1

declare dso_local i32 @swri_noise_shaping_int16(%struct.SwrContext*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @swri_noise_shaping_int32(%struct.SwrContext*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @swri_noise_shaping_float(%struct.SwrContext*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @swri_noise_shaping_double(%struct.SwrContext*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
