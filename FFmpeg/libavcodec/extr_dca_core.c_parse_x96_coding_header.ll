; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_coding_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_coding_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32, i64, i32, i8***, i8**, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid X96 channel set header checksum\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid X96 subband start index (%d)\0A\00", align 1
@DCA_SUBBANDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid X96 subband activity count (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid X96 joint intensity coding index\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid X96 scale factor code book\0A\00", align 1
@ff_dca_quant_index_sel_nbits = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Read past end of X96 channel set header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @parse_x96_coding_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_x96_coding_header(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  %14 = call i32 @get_bits_count(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 7
  %17 = call i64 @get_bits_left(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %4, align 4
  br label %317

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = call i8* @get_bits(i32* %26, i32 7)
  %28 = getelementptr i8, i8* %27, i64 1
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 8
  %44 = add nsw i32 %41, %43
  %45 = call i64 @ff_dca_check_crc(i32 %37, i32* %39, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (i32, i32, i8*, ...) @av_log(i32 %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %317

54:                                               ; preds = %34, %24
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 7
  %58 = call i32 @get_bits1(i32* %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %87

65:                                               ; preds = %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  %68 = call i8* @get_bits(i32* %67, i32 5)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 27
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i32, i8*, ...) @av_log(i32 %79, i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %4, align 4
  br label %317

86:                                               ; preds = %65
  br label %91

87:                                               ; preds = %55
  %88 = load i32, i32* @DCA_SUBBANDS, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %86
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %135, %91
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %93
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = call i8* @get_bits(i32* %101, i32 6)
  %103 = getelementptr i8, i8* %102, i64 1
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DCA_SUBBANDS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %99
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i32, i8*, ...) @av_log(i32 %123, i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %4, align 4
  br label %317

134:                                              ; preds = %99
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %93

138:                                              ; preds = %93
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %181, %138
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 7
  %149 = call i8* @get_bits(i32* %148, i32 3)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %155, %152, %146
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %161, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = call i32 (i32, i32, i8*, ...) @av_log(i32 %169, i32 %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %4, align 4
  br label %317

173:                                              ; preds = %160
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %140

184:                                              ; preds = %140
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %219, %184
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %186
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 7
  %195 = call i8* @get_bits(i32* %194, i32 3)
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %209, 6
  br i1 %210, label %211, label %218

211:                                              ; preds = %192
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @AV_LOG_ERROR, align 4
  %216 = call i32 (i32, i32, i8*, ...) @av_log(i32 %214, i32 %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %217, i32* %4, align 4
  br label %317

218:                                              ; preds = %192
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %186

222:                                              ; preds = %186
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %240, %222
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %243

230:                                              ; preds = %224
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 7
  %233 = call i8* @get_bits(i32* %232, i32 3)
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 11
  %236 = load i8**, i8*** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* %233, i8** %239, align 8
  br label %240

240:                                              ; preds = %230
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %224

243:                                              ; preds = %224
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %283, %243
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 4, %248
  %250 = add nsw i32 6, %249
  %251 = icmp slt i32 %245, %250
  br i1 %251, label %252, label %286

252:                                              ; preds = %244
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %279, %252
  %255 = load i32, i32* %9, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %282

260:                                              ; preds = %254
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 7
  %263 = load i32*, i32** @ff_dca_quant_index_sel_nbits, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @get_bits(i32* %262, i32 %267)
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 10
  %271 = load i8***, i8**** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8**, i8*** %271, i64 %273
  %275 = load i8**, i8*** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* %268, i8** %278, align 8
  br label %279

279:                                              ; preds = %260
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %254

282:                                              ; preds = %254
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %244

286:                                              ; preds = %244
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %286
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 7
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %10, align 4
  %294 = mul nsw i32 %293, 8
  %295 = add nsw i32 %292, %294
  %296 = call i64 @ff_dca_seek_bits(i32* %291, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %289
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 9
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @AV_LOG_ERROR, align 4
  %303 = call i32 (i32, i32, i8*, ...) @av_log(i32 %301, i32 %302, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %304 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %304, i32* %4, align 4
  br label %317

305:                                              ; preds = %289
  br label %316

306:                                              ; preds = %286
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 8
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 7
  %314 = call i32 @skip_bits(i32* %313, i32 16)
  br label %315

315:                                              ; preds = %311, %306
  br label %316

316:                                              ; preds = %315, %305
  store i32 0, i32* %4, align 4
  br label %317

317:                                              ; preds = %316, %298, %211, %166, %120, %76, %47, %19
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i64 @ff_dca_check_crc(i32, i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
