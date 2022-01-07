; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_seek_to_absolute_sample_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_seek_to_absolute_sample_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_30__*, %struct.TYPE_23__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 (%struct.TYPE_25__*, i64, i32)*, i64, %struct.TYPE_29__, i32, i64, i32, i64, %struct.TYPE_22__, %struct.TYPE_32__, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i64, i64, i64 }

@FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_SEEK_ERROR = common dso_local global i8* null, align 8
@FLAC__STREAM_DECODER_SEEK_STATUS_OK = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_ABORTED = common dso_local global i64 0, align 8
@FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER = common dso_local global i64 0, align 8
@FLAC__SEEKABLE_STREAM_DECODER_SEEKING = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_END_OF_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seek_to_absolute_sample_(%struct.TYPE_25__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  store i64 -1, i64* %14, align 8
  store i32 1, i32* %17, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = call i64 @FLAC__stream_decoder_get_total_samples(%struct.TYPE_25__* %35)
  store i64 %36, i64* %18, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %20, align 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %21, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %22, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = call i32 @FLAC__stream_decoder_get_channels(%struct.TYPE_25__* %69)
  store i32 %70, i32* %23, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = call i32 @FLAC__stream_decoder_get_bits_per_sample(%struct.TYPE_25__* %71)
  store i32 %72, i32* %24, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %3
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  br label %87

86:                                               ; preds = %3
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi %struct.TYPE_24__* [ %85, %79 ], [ null, %86 ]
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %25, align 8
  %89 = load i32, i32* %23, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %91, %87
  %101 = load i32, i32* %24, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %103, %100
  %113 = load i32, i32* %21, align 4
  %114 = icmp ugt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %22, align 4
  %118 = add i32 %116, %117
  %119 = udiv i32 %118, 2
  %120 = add i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %144

121:                                              ; preds = %112
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load i32, i32* %19, align 4
  %127 = icmp ugt i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %23, align 4
  %131 = mul i32 %129, %130
  %132 = load i32, i32* %24, align 4
  %133 = mul i32 %131, %132
  %134 = udiv i32 %133, 8
  %135 = add i32 %134, 64
  store i32 %135, i32* %16, align 4
  br label %143

136:                                              ; preds = %125, %121
  %137 = load i32, i32* %23, align 4
  %138 = mul i32 4096, %137
  %139 = load i32, i32* %24, align 4
  %140 = mul i32 %138, %139
  %141 = udiv i32 %140, 8
  %142 = add i32 %141, 64
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %136, %128
  br label %144

144:                                              ; preds = %143, %115
  %145 = load i64, i64* %8, align 8
  store i64 %145, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %146 = load i64, i64* %6, align 8
  store i64 %146, i64* %10, align 8
  %147 = load i64, i64* %18, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i64, i64* %18, align 8
  br label %153

151:                                              ; preds = %144
  %152 = load i64, i64* %7, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i64 [ %150, %149 ], [ %152, %151 ]
  store i64 %154, i64* %12, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %156 = icmp ne %struct.TYPE_24__* %155, null
  br i1 %156, label %157, label %338

157:                                              ; preds = %153
  %158 = load i64, i64* %9, align 8
  store i64 %158, i64* %26, align 8
  %159 = load i64, i64* %10, align 8
  store i64 %159, i64* %27, align 8
  %160 = load i64, i64* %11, align 8
  store i64 %160, i64* %28, align 8
  %161 = load i64, i64* %12, align 8
  store i64 %161, i64* %29, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %218, %157
  %168 = load i32, i32* %15, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %221

170:                                              ; preds = %167
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %217

181:                                              ; preds = %170
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %181
  %192 = load i64, i64* %18, align 8
  %193 = icmp sle i64 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %18, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %194, %191
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %7, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %205
  br label %221

217:                                              ; preds = %205, %194, %181, %170
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %15, align 4
  br label %167

221:                                              ; preds = %216, %167
  %222 = load i32, i32* %15, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %221
  %225 = load i64, i64* %8, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %225, %233
  store i64 %234, i64* %26, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %28, align 8
  br label %243

243:                                              ; preds = %224, %221
  store i32 0, i32* %15, align 4
  br label %244

244:                                              ; preds = %299, %243
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %251, label %302

251:                                              ; preds = %244
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %298

262:                                              ; preds = %251
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp sgt i64 %270, 0
  br i1 %271, label %272, label %298

272:                                              ; preds = %262
  %273 = load i64, i64* %18, align 8
  %274 = icmp sle i64 %273, 0
  br i1 %274, label %286, label %275

275:                                              ; preds = %272
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* %18, align 8
  %285 = icmp slt i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %275, %272
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %7, align 8
  %296 = icmp sgt i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %286
  br label %302

298:                                              ; preds = %286, %275, %262, %251
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %15, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %15, align 4
  br label %244

302:                                              ; preds = %297, %244
  %303 = load i32, i32* %15, align 4
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = icmp slt i32 %303, %307
  br i1 %308, label %309, label %328

309:                                              ; preds = %302
  %310 = load i64, i64* %8, align 8
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %310, %318
  store i64 %319, i64* %27, align 8
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %29, align 8
  br label %328

328:                                              ; preds = %309, %302
  %329 = load i64, i64* %27, align 8
  %330 = load i64, i64* %26, align 8
  %331 = icmp sge i64 %329, %330
  br i1 %331, label %332, label %337

332:                                              ; preds = %328
  %333 = load i64, i64* %26, align 8
  store i64 %333, i64* %9, align 8
  %334 = load i64, i64* %27, align 8
  store i64 %334, i64* %10, align 8
  %335 = load i64, i64* %28, align 8
  store i64 %335, i64* %11, align 8
  %336 = load i64, i64* %29, align 8
  store i64 %336, i64* %12, align 8
  br label %337

337:                                              ; preds = %332, %328
  br label %338

338:                                              ; preds = %337, %153
  %339 = load i64, i64* %12, align 8
  %340 = load i64, i64* %11, align 8
  %341 = icmp sge i64 %339, %340
  %342 = zext i1 %341 to i32
  %343 = call i32 @FLAC__ASSERT(i32 %342)
  %344 = load i64, i64* %12, align 8
  %345 = load i64, i64* %11, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %338
  %348 = load i64, i64* %12, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, i64* %12, align 8
  br label %350

350:                                              ; preds = %347, %338
  %351 = load i64, i64* %7, align 8
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 7
  store i64 %351, i64* %355, align 8
  br label %356

356:                                              ; preds = %350, %522, %595
  %357 = load i64, i64* %11, align 8
  %358 = load i64, i64* %12, align 8
  %359 = icmp sge i64 %357, %358
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = load i64, i64* %9, align 8
  %362 = load i64, i64* %10, align 8
  %363 = icmp sgt i64 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %360, %356
  %365 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %366 = ptrtoint i8* %365 to i64
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %369, i32 0, i32 0
  store i64 %366, i64* %370, align 8
  store i32 0, i32* %4, align 4
  br label %597

371:                                              ; preds = %360
  %372 = load i64, i64* %9, align 8
  %373 = load i64, i64* %7, align 8
  %374 = load i64, i64* %11, align 8
  %375 = sub nsw i64 %373, %374
  %376 = sitofp i64 %375 to double
  %377 = load i64, i64* %12, align 8
  %378 = load i64, i64* %11, align 8
  %379 = sub nsw i64 %377, %378
  %380 = sitofp i64 %379 to double
  %381 = fdiv double %376, %380
  %382 = load i64, i64* %10, align 8
  %383 = load i64, i64* %9, align 8
  %384 = sub nsw i64 %382, %383
  %385 = sitofp i64 %384 to double
  %386 = fmul double %381, %385
  %387 = fptosi double %386 to i64
  %388 = add nsw i64 %372, %387
  %389 = load i32, i32* %16, align 4
  %390 = zext i32 %389 to i64
  %391 = sub nsw i64 %388, %390
  store i64 %391, i64* %14, align 8
  %392 = load i64, i64* %14, align 8
  %393 = load i64, i64* %10, align 8
  %394 = icmp sge i64 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %371
  %396 = load i64, i64* %10, align 8
  %397 = sub nsw i64 %396, 1
  store i64 %397, i64* %14, align 8
  br label %398

398:                                              ; preds = %395, %371
  %399 = load i64, i64* %14, align 8
  %400 = load i64, i64* %9, align 8
  %401 = icmp slt i64 %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i64, i64* %9, align 8
  store i64 %403, i64* %14, align 8
  br label %404

404:                                              ; preds = %402, %398
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 1
  %409 = load i64 (%struct.TYPE_25__*, i64, i32)*, i64 (%struct.TYPE_25__*, i64, i32)** %408, align 8
  %410 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %411 = load i64, i64* %14, align 8
  %412 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i32 0, i32 6
  %416 = load i32, i32* %415, align 8
  %417 = call i64 %409(%struct.TYPE_25__* %410, i64 %411, i32 %416)
  %418 = load i64, i64* @FLAC__STREAM_DECODER_SEEK_STATUS_OK, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %420, label %427

420:                                              ; preds = %404
  %421 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %422 = ptrtoint i8* %421 to i64
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i32 0, i32 0
  store i64 %422, i64* %426, align 8
  store i32 0, i32* %4, align 4
  br label %597

427:                                              ; preds = %404
  %428 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %429 = call i32 @FLAC__stream_decoder_flush(%struct.TYPE_25__* %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %427
  store i32 0, i32* %4, align 4
  br label %597

432:                                              ; preds = %427
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 5
  store i64 0, i64* %436, align 8
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %438 = call i32 @FLAC__stream_decoder_process_single(%struct.TYPE_25__* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %448

440:                                              ; preds = %432
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_30__*, %struct.TYPE_30__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @FLAC__STREAM_DECODER_ABORTED, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %440, %432
  %449 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %450 = ptrtoint i8* %449 to i64
  %451 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_30__*, %struct.TYPE_30__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %453, i32 0, i32 0
  store i64 %450, i64* %454, align 8
  store i32 0, i32* %4, align 4
  br label %597

455:                                              ; preds = %440
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_23__*, %struct.TYPE_23__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %463, label %462

462:                                              ; preds = %455
  br label %596

463:                                              ; preds = %455
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER, align 8
  %472 = icmp eq i64 %470, %471
  %473 = zext i1 %472 to i32
  %474 = call i32 @FLAC__ASSERT(i32 %473)
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %13, align 8
  %483 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 2
  %487 = load i64, i64* %486, align 8
  %488 = icmp eq i64 0, %487
  br i1 %488, label %504, label %489

489:                                              ; preds = %463
  %490 = load i64, i64* %13, align 8
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 1
  %493 = load %struct.TYPE_23__*, %struct.TYPE_23__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %493, i32 0, i32 3
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %490, %497
  %499 = load i64, i64* %12, align 8
  %500 = icmp sge i64 %498, %499
  br i1 %500, label %501, label %524

501:                                              ; preds = %489
  %502 = load i32, i32* %17, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %524, label %504

504:                                              ; preds = %501, %463
  %505 = load i64, i64* %14, align 8
  %506 = load i64, i64* %9, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %508, label %515

508:                                              ; preds = %504
  %509 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %510 = ptrtoint i8* %509 to i64
  %511 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_30__*, %struct.TYPE_30__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %513, i32 0, i32 0
  store i64 %510, i64* %514, align 8
  store i32 0, i32* %4, align 4
  br label %597

515:                                              ; preds = %504
  %516 = load i32, i32* %16, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = load i32, i32* %16, align 4
  %520 = mul i32 %519, 2
  br label %522

521:                                              ; preds = %515
  br label %522

522:                                              ; preds = %521, %518
  %523 = phi i32 [ %520, %518 ], [ 16, %521 ]
  store i32 %523, i32* %16, align 4
  br label %356

524:                                              ; preds = %501, %489
  store i32 0, i32* %17, align 4
  %525 = load i64, i64* %13, align 8
  %526 = load i64, i64* %11, align 8
  %527 = icmp slt i64 %525, %526
  br i1 %527, label %528, label %535

528:                                              ; preds = %524
  %529 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %530 = ptrtoint i8* %529 to i64
  %531 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %531, i32 0, i32 0
  %533 = load %struct.TYPE_30__*, %struct.TYPE_30__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %533, i32 0, i32 0
  store i64 %530, i64* %534, align 8
  store i32 0, i32* %4, align 4
  br label %597

535:                                              ; preds = %524
  %536 = load i64, i64* %7, align 8
  %537 = load i64, i64* %13, align 8
  %538 = icmp slt i64 %536, %537
  br i1 %538, label %539, label %567

539:                                              ; preds = %535
  %540 = load i64, i64* %13, align 8
  %541 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %541, i32 0, i32 1
  %543 = load %struct.TYPE_23__*, %struct.TYPE_23__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %543, i32 0, i32 3
  %545 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = add nsw i64 %540, %547
  store i64 %548, i64* %12, align 8
  %549 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %550 = call i32 @FLAC__stream_decoder_get_decode_position(%struct.TYPE_25__* %549, i64* %10)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %559, label %552

552:                                              ; preds = %539
  %553 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %554 = ptrtoint i8* %553 to i64
  %555 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %555, i32 0, i32 0
  %557 = load %struct.TYPE_30__*, %struct.TYPE_30__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %557, i32 0, i32 0
  store i64 %554, i64* %558, align 8
  store i32 0, i32* %4, align 4
  br label %597

559:                                              ; preds = %539
  %560 = load i64, i64* %10, align 8
  %561 = load i64, i64* %14, align 8
  %562 = sub nsw i64 %560, %561
  %563 = mul nsw i64 2, %562
  %564 = sdiv i64 %563, 3
  %565 = add nsw i64 %564, 16
  %566 = trunc i64 %565 to i32
  store i32 %566, i32* %16, align 4
  br label %595

567:                                              ; preds = %535
  %568 = load i64, i64* %13, align 8
  %569 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %569, i32 0, i32 1
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %571, i32 0, i32 3
  %573 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %573, i32 0, i32 1
  %575 = load i64, i64* %574, align 8
  %576 = add nsw i64 %568, %575
  store i64 %576, i64* %11, align 8
  %577 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %578 = call i32 @FLAC__stream_decoder_get_decode_position(%struct.TYPE_25__* %577, i64* %9)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %587, label %580

580:                                              ; preds = %567
  %581 = load i8*, i8** @FLAC__STREAM_DECODER_SEEK_ERROR, align 8
  %582 = ptrtoint i8* %581 to i64
  %583 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_30__*, %struct.TYPE_30__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %585, i32 0, i32 0
  store i64 %582, i64* %586, align 8
  store i32 0, i32* %4, align 4
  br label %597

587:                                              ; preds = %567
  %588 = load i64, i64* %9, align 8
  %589 = load i64, i64* %14, align 8
  %590 = sub nsw i64 %588, %589
  %591 = mul nsw i64 2, %590
  %592 = sdiv i64 %591, 3
  %593 = add nsw i64 %592, 16
  %594 = trunc i64 %593 to i32
  store i32 %594, i32* %16, align 4
  br label %595

595:                                              ; preds = %587, %559
  br label %356

596:                                              ; preds = %462
  store i32 1, i32* %4, align 4
  br label %597

597:                                              ; preds = %596, %580, %552, %528, %508, %448, %431, %420, %364
  %598 = load i32, i32* %4, align 4
  ret i32 %598
}

declare dso_local i64 @FLAC__stream_decoder_get_total_samples(%struct.TYPE_25__*) #1

declare dso_local i32 @FLAC__stream_decoder_get_channels(%struct.TYPE_25__*) #1

declare dso_local i32 @FLAC__stream_decoder_get_bits_per_sample(%struct.TYPE_25__*) #1

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__stream_decoder_flush(%struct.TYPE_25__*) #1

declare dso_local i32 @FLAC__stream_decoder_process_single(%struct.TYPE_25__*) #1

declare dso_local i32 @FLAC__stream_decoder_get_decode_position(%struct.TYPE_25__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
