; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_vorbis_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_vorbis_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32*, i32, float*, float*, %struct.TYPE_31__, i32*, i32*, %struct.TYPE_32__*, %struct.TYPE_29__*, i64, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i64*, i64*, i32, i32*, i32*, i64* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"output buffer is too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_FLOOR_VALUES = common dso_local global i32 0, align 4
@AV_PKT_DATA_SKIP_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_35__*, i32*, i32*)* @vorbis_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_encode_frame(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_34__, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %10, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = shl i32 1, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %4
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ff_af_queue_add(%struct.TYPE_31__* %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %475

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @av_frame_clone(i32* %52)
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %5, align 4
  br label %475

59:                                               ; preds = %51
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 10
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @ff_bufqueue_add(%struct.TYPE_36__* %60, %struct.TYPE_30__* %62, i32* %63)
  br label %73

65:                                               ; preds = %4
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %475

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %73
  %91 = phi i1 [ false, %73 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %475

96:                                               ; preds = %90
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %147, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %99
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sdiv i32 %111, %114
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %115, %119
  store i32 %120, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %142, %110
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %19, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32* @spawn_empty_frame(%struct.TYPE_36__* %126, i32 %129)
  store i32* %130, i32** %21, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %5, align 4
  br label %475

136:                                              ; preds = %125
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 10
  %140 = load i32*, i32** %21, align 8
  %141 = call i32 @ff_bufqueue_add(%struct.TYPE_36__* %137, %struct.TYPE_30__* %139, i32* %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  br label %121

145:                                              ; preds = %121
  br label %146

146:                                              ; preds = %145, %99
  br label %147

147:                                              ; preds = %146, %96
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @move_audio(%struct.TYPE_33__* %148, i32 %151)
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %154 = call i32 @apply_window_and_mdct(%struct.TYPE_33__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %475

157:                                              ; preds = %147
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %160 = call i32 @ff_alloc_packet2(%struct.TYPE_36__* %158, %struct.TYPE_35__* %159, i32 8192, i32 0)
  store i32 %160, i32* %12, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %5, align 4
  br label %475

164:                                              ; preds = %157
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @init_put_bits(%struct.TYPE_34__* %17, i32 %167, i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @put_bits_count(%struct.TYPE_34__* %17)
  %175 = sub nsw i32 %173, %174
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 9
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %178, 1
  %180 = call i32 @ilog(i64 %179)
  %181 = add nsw i32 1, %180
  %182 = icmp slt i32 %175, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %164
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = call i32 @av_log(%struct.TYPE_36__* %184, i32 %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %187 = load i32, i32* @EINVAL, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %5, align 4
  br label %475

189:                                              ; preds = %164
  %190 = call i32 @put_bits(%struct.TYPE_34__* %17, i32 1, i32 0)
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %193, 1
  %195 = call i32 @ilog(i64 %194)
  %196 = call i32 @put_bits(%struct.TYPE_34__* %17, i32 %195, i32 1)
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i64 1
  store %struct.TYPE_29__* %200, %struct.TYPE_29__** %15, align 8
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %202, align 8
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i64 %206
  store %struct.TYPE_32__* %207, %struct.TYPE_32__** %16, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %189
  %213 = call i32 @put_bits(%struct.TYPE_34__* %17, i32 1, i32 1)
  %214 = call i32 @put_bits(%struct.TYPE_34__* %17, i32 1, i32 1)
  br label %215

215:                                              ; preds = %212, %189
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %279, %215
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %282

222:                                              ; preds = %216
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i64, i64* %228, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32, i32* %225, i64 %237
  store i32* %238, i32** %22, align 8
  %239 = load i32, i32* @MAX_FLOOR_VALUES, align 4
  %240 = zext i32 %239 to i64
  %241 = call i8* @llvm.stacksave()
  store i8* %241, i8** %23, align 8
  %242 = alloca i32, i64 %240, align 16
  store i64 %240, i64* %24, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %244 = load i32*, i32** %22, align 8
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 2
  %247 = load float*, float** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %14, align 4
  %250 = mul nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %247, i64 %251
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @floor_fit(%struct.TYPE_33__* %243, i32* %244, float* %252, i32* %242, i32 %253)
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %256 = load i32*, i32** %22, align 8
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 3
  %259 = load float*, float** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %14, align 4
  %262 = mul nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %259, i64 %263
  %265 = load i32, i32* %14, align 4
  %266 = call i64 @floor_encode(%struct.TYPE_33__* %255, i32* %256, %struct.TYPE_34__* %17, i32* %242, float* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %222
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %270 = load i32, i32* @AV_LOG_ERROR, align 4
  %271 = call i32 @av_log(%struct.TYPE_36__* %269, i32 %270, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %272 = load i32, i32* @EINVAL, align 4
  %273 = call i32 @AVERROR(i32 %272)
  store i32 %273, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %275

274:                                              ; preds = %222
  store i32 0, i32* %25, align 4
  br label %275

275:                                              ; preds = %274, %268
  %276 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %276)
  %277 = load i32, i32* %25, align 4
  switch i32 %277, label %477 [
    i32 0, label %278
    i32 1, label %475
  ]

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %216

282:                                              ; preds = %216
  store i32 0, i32* %11, align 4
  br label %283

283:                                              ; preds = %307, %282
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = mul nsw i32 %287, %288
  %290 = icmp slt i32 %284, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %283
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 3
  %294 = load float*, float** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 2
  %301 = load float*, float** %300, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = fdiv float %305, %298
  store float %306, float* %304, align 4
  br label %307

307:                                              ; preds = %291
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  br label %283

310:                                              ; preds = %283
  store i32 0, i32* %11, align 4
  br label %311

311:                                              ; preds = %402, %310
  %312 = load i32, i32* %11, align 4
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %405

317:                                              ; preds = %311
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 2
  %320 = load float*, float** %319, align 8
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %14, align 4
  %329 = mul nsw i32 %327, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %320, i64 %330
  store float* %331, float** %26, align 8
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 2
  %334 = load float*, float** %333, align 8
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 4
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %14, align 4
  %343 = mul nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %334, i64 %344
  store float* %345, float** %27, align 8
  store i32 0, i32* %28, align 4
  br label %346

346:                                              ; preds = %398, %317
  %347 = load i32, i32* %28, align 4
  %348 = load i32, i32* %14, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %401

350:                                              ; preds = %346
  %351 = load float*, float** %27, align 8
  %352 = load i32, i32* %28, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %351, i64 %353
  %355 = load float, float* %354, align 4
  store float %355, float* %29, align 4
  %356 = load float*, float** %26, align 8
  %357 = load i32, i32* %28, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %356, i64 %358
  %360 = load float, float* %359, align 4
  %361 = load float*, float** %27, align 8
  %362 = load i32, i32* %28, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = fsub float %365, %360
  store float %366, float* %364, align 4
  %367 = load float*, float** %26, align 8
  %368 = load i32, i32* %28, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %367, i64 %369
  %371 = load float, float* %370, align 4
  %372 = fcmp ogt float %371, 0.000000e+00
  br i1 %372, label %373, label %384

373:                                              ; preds = %350
  %374 = load float*, float** %27, align 8
  %375 = load i32, i32* %28, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %374, i64 %376
  %378 = load float, float* %377, align 4
  %379 = fneg float %378
  %380 = load float*, float** %27, align 8
  %381 = load i32, i32* %28, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float* %380, i64 %382
  store float %379, float* %383, align 4
  br label %384

384:                                              ; preds = %373, %350
  %385 = load float*, float** %27, align 8
  %386 = load i32, i32* %28, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %385, i64 %387
  %389 = load float, float* %388, align 4
  %390 = fcmp olt float %389, 0.000000e+00
  br i1 %390, label %391, label %397

391:                                              ; preds = %384
  %392 = load float, float* %29, align 4
  %393 = load float*, float** %26, align 8
  %394 = load i32, i32* %28, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %393, i64 %395
  store float %392, float* %396, align 4
  br label %397

397:                                              ; preds = %391, %384
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %28, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %28, align 4
  br label %346

401:                                              ; preds = %346
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %11, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %11, align 4
  br label %311

405:                                              ; preds = %311
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %407, i32 0, i32 5
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %410, i32 0, i32 5
  %412 = load i64*, i64** %411, align 8
  %413 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %414 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %413, i32 0, i32 1
  %415 = load i64*, i64** %414, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 0
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds i64, i64* %412, i64 %417
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds i32, i32* %409, i64 %419
  %421 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %421, i32 0, i32 2
  %423 = load float*, float** %422, align 8
  %424 = load i32, i32* %14, align 4
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = call i64 @residue_encode(%struct.TYPE_33__* %406, i32* %420, %struct.TYPE_34__* %17, float* %423, i32 %424, i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %405
  %431 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %432 = load i32, i32* @AV_LOG_ERROR, align 4
  %433 = call i32 @av_log(%struct.TYPE_36__* %431, i32 %432, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %434 = load i32, i32* @EINVAL, align 4
  %435 = call i32 @AVERROR(i32 %434)
  store i32 %435, i32* %5, align 4
  br label %475

436:                                              ; preds = %405
  %437 = call i32 @flush_put_bits(%struct.TYPE_34__* %17)
  %438 = call i32 @put_bits_count(%struct.TYPE_34__* %17)
  %439 = ashr i32 %438, 3
  %440 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %440, i32 0, i32 0
  store i32 %439, i32* %441, align 4
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 4
  %444 = load i32, i32* %14, align 4
  %445 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %445, i32 0, i32 2
  %447 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %447, i32 0, i32 1
  %449 = call i32 @ff_af_queue_remove(%struct.TYPE_31__* %443, i32 %444, i32* %446, i32* %448)
  %450 = load i32, i32* %14, align 4
  %451 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = icmp sgt i32 %450, %453
  br i1 %454, label %455, label %473

455:                                              ; preds = %436
  %456 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %457 = load i32, i32* @AV_PKT_DATA_SKIP_SAMPLES, align 4
  %458 = call i32* @av_packet_new_side_data(%struct.TYPE_35__* %456, i32 %457, i32 10)
  store i32* %458, i32** %30, align 8
  %459 = load i32*, i32** %30, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %464, label %461

461:                                              ; preds = %455
  %462 = load i32, i32* @ENOMEM, align 4
  %463 = call i32 @AVERROR(i32 %462)
  store i32 %463, i32* %5, align 4
  br label %475

464:                                              ; preds = %455
  %465 = load i32*, i32** %30, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 4
  %467 = load i32, i32* %14, align 4
  %468 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %467, %470
  %472 = call i32 @AV_WL32(i32* %466, i32 %471)
  br label %473

473:                                              ; preds = %464, %436
  %474 = load i32*, i32** %9, align 8
  store i32 1, i32* %474, align 4
  store i32 0, i32* %5, align 4
  br label %475

475:                                              ; preds = %473, %461, %430, %275, %183, %162, %156, %133, %95, %71, %56, %49
  %476 = load i32, i32* %5, align 4
  ret i32 %476

477:                                              ; preds = %275
  unreachable
}

declare dso_local i32 @ff_af_queue_add(%struct.TYPE_31__*, i32*) #1

declare dso_local i32* @av_frame_clone(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_36__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32* @spawn_empty_frame(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @move_audio(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @apply_window_and_mdct(%struct.TYPE_33__*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @init_put_bits(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_34__*) #1

declare dso_local i32 @ilog(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_36__*, i32, i8*) #1

declare dso_local i32 @put_bits(%struct.TYPE_34__*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @floor_fit(%struct.TYPE_33__*, i32*, float*, i32*, i32) #1

declare dso_local i64 @floor_encode(%struct.TYPE_33__*, i32*, %struct.TYPE_34__*, i32*, float*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @residue_encode(%struct.TYPE_33__*, i32*, %struct.TYPE_34__*, float*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_34__*) #1

declare dso_local i32 @ff_af_queue_remove(%struct.TYPE_31__*, i32, i32*, i32*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
