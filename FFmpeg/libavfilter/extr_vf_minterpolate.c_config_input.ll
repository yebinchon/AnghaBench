; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i8*, i8*, i8*, %struct.TYPE_12__*, i32, i32, i8**, i8*, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@NB_FRAMES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MI_MODE_MCI = common dso_local global i64 0, align 8
@ME_MODE_BILAT = common dso_local global i64 0, align 8
@AV_ME_METHOD_EPZS = common dso_local global i64 0, align 8
@SCD_METHOD_FDIFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ME_MODE_BIDIR = common dso_local global i64 0, align 8
@get_sad_ob = common dso_local global i32 0, align 4
@get_sbad_ob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 20
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @av_pix_fmt_count_planes(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @av_ceil_log2_c(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %57, %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %64, %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %105, %1
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NB_FRAMES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 12
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %89
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %11, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @av_mallocz_array(i32 %93, i32 4)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %84
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %2, align 4
  br label %298

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MI_MODE_MCI, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %206

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %115, %116
  %118 = call i8* @av_mallocz_array(i32 %117, i32 4)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 11
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i8* @av_mallocz_array(i32 %123, i32 4)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %127, %128
  %130 = call i8* @av_mallocz_array(i32 %129, i32 4)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 11
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %114
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 10
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 9
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142, %137, %114
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %10, align 4
  br label %270

150:                                              ; preds = %142
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ME_MODE_BILAT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @av_mallocz_array(i32 %159, i32 4)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 16
  store i8* %160, i8** %162, align 8
  %163 = icmp ne i8* %160, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %2, align 4
  br label %298

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167, %150
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AV_ME_METHOD_EPZS, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %205

174:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %201, %174
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @av_mallocz_array(i32 %181, i32 1)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 15
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %182, i8** %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 15
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %178
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = call i32 @AVERROR(i32 %198)
  store i32 %199, i32* %2, align 4
  br label %298

200:                                              ; preds = %178
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %175

204:                                              ; preds = %175
  br label %205

205:                                              ; preds = %204, %168
  br label %206

206:                                              ; preds = %205, %108
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SCD_METHOD_FDIFF, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %206
  %213 = call i32 @ff_scene_sad_get_fn(i32 8)
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 14
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 14
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = load i32, i32* @EINVAL, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %2, align 4
  br label %298

223:                                              ; preds = %212
  br label %224

224:                                              ; preds = %223, %206
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 13
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = shl i32 %237, %240
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = shl i32 %245, %248
  %250 = call i32 @ff_me_init_context(%struct.TYPE_14__* %225, i32 %228, i32 %231, i32 %232, i32 %233, i32 0, i32 %241, i32 0, i32 %249)
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @ME_MODE_BIDIR, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %224
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  store i32* @get_sad_ob, i32** %258, align 8
  br label %269

259:                                              ; preds = %224
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @ME_MODE_BILAT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i32* @get_sbad_ob, i32** %267, align 8
  br label %268

268:                                              ; preds = %265, %259
  br label %269

269:                                              ; preds = %268, %256
  store i32 0, i32* %2, align 4
  br label %298

270:                                              ; preds = %147
  store i32 0, i32* %9, align 4
  br label %271

271:                                              ; preds = %284, %270
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @NB_FRAMES, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %271
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 12
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = call i32 @av_freep(i8** %282)
  br label %284

284:                                              ; preds = %275
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %271

287:                                              ; preds = %271
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 11
  %290 = call i32 @av_freep(i8** %289)
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 10
  %293 = call i32 @av_freep(i8** %292)
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 9
  %296 = call i32 @av_freep(i8** %295)
  %297 = load i32, i32* %10, align 4
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %287, %269, %220, %197, %164, %101
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_ceil_log2_c(i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_scene_sad_get_fn(i32) #1

declare dso_local i32 @ff_me_init_context(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
