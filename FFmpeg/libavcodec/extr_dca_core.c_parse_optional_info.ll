; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_optional_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_optional_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@DCA_SYNCWORD_XCH = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"XCH sync word not found\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_SYNCWORD_X96 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"X96 sync word not found\0A\00", align 1
@DCA_SYNCWORD_XXCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"XXCH sync word not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @parse_optional_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_optional_info(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  store i32 -1, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = call i32 @skip_bits_long(%struct.TYPE_10__* %23, i32 32)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @parse_aux_data(%struct.TYPE_8__* %31)
  store i32 %32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AV_EF_EXPLODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %325

45:                                               ; preds = %34, %30, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %324

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %324, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 32
  %71 = call i32 @FFMIN(i32 %65, i32 %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  %75 = call i32 @get_bits_count(%struct.TYPE_10__* %74)
  %76 = sdiv i32 %75, 32
  store i32 %76, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %323 [
    i32 129, label %80
    i32 130, label %164
    i32 128, label %232
  ]

80:                                               ; preds = %61
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %323

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %137, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 %95, %97
  %99 = call i32 @AV_RB32(i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @DCA_SYNCWORD_XCH, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %91
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 22
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sub nsw i32 %109, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sge i32 %113, 96
  br i1 %114, label %115, label %135

115:                                              ; preds = %103
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %119, %115
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 15
  %127 = and i32 %126, 127
  %128 = icmp eq i32 %127, 8
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 %130, 32
  %132 = add nsw i32 %131, 49
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %141

135:                                              ; preds = %124, %119, %103
  br label %136

136:                                              ; preds = %135, %91
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %11, align 4
  br label %87

141:                                              ; preds = %129, %87
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = call i32 @av_log(%struct.TYPE_11__* %149, i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AV_EF_EXPLODE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %2, align 4
  br label %325

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %141
  br label %323

164:                                              ; preds = %61
  br label %165

165:                                              ; preds = %205, %164
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %209

169:                                              ; preds = %165
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = mul nsw i32 %174, 4
  %176 = add nsw i32 %173, %175
  %177 = call i32 @AV_RB32(i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @DCA_SYNCWORD_X96, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %169
  %182 = load i32, i32* %11, align 4
  %183 = ashr i32 %182, 20
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = mul nsw i32 %188, 4
  %190 = sub nsw i32 %187, %189
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp sge i32 %191, 96
  br i1 %192, label %193, label %203

193:                                              ; preds = %181
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* %6, align 4
  %199 = mul nsw i32 %198, 32
  %200 = add nsw i32 %199, 44
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  br label %209

203:                                              ; preds = %193, %181
  br label %204

204:                                              ; preds = %203, %169
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %11, align 4
  br label %165

209:                                              ; preds = %197, %165
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %231, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = load i32, i32* @AV_LOG_ERROR, align 4
  %219 = call i32 @av_log(%struct.TYPE_11__* %217, i32 %218, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @AV_EF_EXPLODE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %214
  %229 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %229, i32* %2, align 4
  br label %325

230:                                              ; preds = %214
  br label %231

231:                                              ; preds = %230, %209
  br label %323

232:                                              ; preds = %61
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %323

238:                                              ; preds = %232
  br label %239

239:                                              ; preds = %296, %238
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp sge i32 %240, %241
  br i1 %242, label %243, label %300

243:                                              ; preds = %239
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %6, align 4
  %249 = mul nsw i32 %248, 4
  %250 = add nsw i32 %247, %249
  %251 = call i32 @AV_RB32(i32 %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @DCA_SYNCWORD_XXCH, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %243
  %256 = load i32, i32* %11, align 4
  %257 = ashr i32 %256, 26
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sdiv i32 %262, 8
  %264 = load i32, i32* %6, align 4
  %265 = mul nsw i32 %264, 4
  %266 = sub nsw i32 %263, %265
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp sge i32 %267, 11
  br i1 %268, label %269, label %294

269:                                              ; preds = %255
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %273, label %294

273:                                              ; preds = %269
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  %283 = mul nsw i32 %282, 4
  %284 = add nsw i32 %280, %283
  %285 = load i32, i32* %8, align 4
  %286 = sub nsw i32 %285, 4
  %287 = call i32 @av_crc(i32 %276, i32 65535, i32 %284, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %273
  %290 = load i32, i32* %6, align 4
  %291 = mul nsw i32 %290, 32
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 4
  store i32 %291, i32* %293, align 8
  br label %300

294:                                              ; preds = %273, %269, %255
  br label %295

295:                                              ; preds = %294, %243
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %11, align 4
  br label %239

300:                                              ; preds = %289, %239
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %322, label %305

305:                                              ; preds = %300
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = load i32, i32* @AV_LOG_ERROR, align 4
  %310 = call i32 @av_log(%struct.TYPE_11__* %308, i32 %309, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 5
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @AV_EF_EXPLODE, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %305
  %320 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %320, i32* %2, align 4
  br label %325

321:                                              ; preds = %305
  br label %322

322:                                              ; preds = %321, %300
  br label %323

323:                                              ; preds = %61, %322, %237, %231, %163, %85
  br label %324

324:                                              ; preds = %323, %56, %51
  store i32 0, i32* %2, align 4
  br label %325

325:                                              ; preds = %324, %319, %228, %160, %43
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

declare dso_local i32 @skip_bits_long(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @parse_aux_data(%struct.TYPE_8__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_10__*) #1

declare dso_local i32 @AV_RB32(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @av_crc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
