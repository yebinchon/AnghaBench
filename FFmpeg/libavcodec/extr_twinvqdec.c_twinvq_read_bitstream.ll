; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_twinvq_read_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_twinvq_read_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64, i8**, i8**, i32, i8***, i8**, i8**, i8**, i8**, i32**, i8****, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@TWINVQ_WINDOW_TYPE_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid window type, broken sample?\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_twinvq_wtype_to_ftype_table = common dso_local global i64* null, align 8
@TWINVQ_FT_LONG = common dso_local global i64 0, align 8
@TWINVQ_GAIN_BITS = common dso_local global i32 0, align 4
@TWINVQ_SUB_GAIN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32*, i32)* @twinvq_read_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twinvq_read_bitstream(i32* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @init_get_bits8(i32* %14, i32* %31, i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %5, align 4
  br label %334

37:                                               ; preds = %4
  %38 = call i8* @get_bits(i32* %14, i32 8)
  %39 = call i32 @skip_bits(i32* %14, i8* %38)
  %40 = load i32, i32* @TWINVQ_WINDOW_TYPE_BITS, align 4
  %41 = call i8* @get_bits(i32* %14, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 @av_log(i32* %50, i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %334

54:                                               ; preds = %37
  %55 = load i64*, i64** @ff_twinvq_wtype_to_ftype_table, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %55, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @read_cb_data(%struct.TYPE_12__* %76, i32* %14, i32 %79, i32 %83)
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %140, %54
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %136, %89
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %132, %94
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %96, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %95
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @get_bits(i32* %14, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 11
  %120 = load i8****, i8***** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8***, i8**** %120, i64 %122
  %124 = load i8***, i8**** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8**, i8*** %124, i64 %126
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  store i8* %117, i8** %131, align 8
  br label %132

132:                                              ; preds = %107
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %95

135:                                              ; preds = %95
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %90

139:                                              ; preds = %90
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %85

143:                                              ; preds = %85
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %169, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %172

148:                                              ; preds = %144
  store i32 0, i32* %16, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = call i32 @get_bits1(i32* %14)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 10
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %154, i32* %164, align 4
  br label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %149

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %144

172:                                              ; preds = %144
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TWINVQ_FT_LONG, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  store i32 0, i32* %15, align 4
  br label %179

179:                                              ; preds = %192, %178
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load i32, i32* @TWINVQ_GAIN_BITS, align 4
  %185 = call i8* @get_bits(i32* %14, i32 %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 9
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  store i8* %185, i8** %191, align 8
  br label %192

192:                                              ; preds = %183
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  br label %179

195:                                              ; preds = %179
  br label %235

196:                                              ; preds = %172
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %231, %196
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %234

201:                                              ; preds = %197
  %202 = load i32, i32* @TWINVQ_GAIN_BITS, align 4
  %203 = call i8* @get_bits(i32* %14, i32 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 9
  %206 = load i8**, i8*** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  store i8* %203, i8** %209, align 8
  store i32 0, i32* %16, align 4
  br label %210

210:                                              ; preds = %227, %201
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %230

214:                                              ; preds = %210
  %215 = load i32, i32* @TWINVQ_SUB_GAIN_BITS, align 4
  %216 = call i8* @get_bits(i32* %14, i32 %215)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 8
  %219 = load i8**, i8*** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %13, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %219, i64 %225
  store i8* %216, i8** %226, align 8
  br label %227

227:                                              ; preds = %214
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  br label %210

230:                                              ; preds = %210
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %197

234:                                              ; preds = %197
  br label %235

235:                                              ; preds = %234, %195
  store i32 0, i32* %15, align 4
  br label %236

236:                                              ; preds = %286, %235
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %289

240:                                              ; preds = %236
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i8* @get_bits(i32* %14, i32 %243)
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 7
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %244, i8** %250, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @get_bits(i32* %14, i32 %253)
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 6
  %257 = load i8**, i8*** %256, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  store i8* %254, i8** %260, align 8
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %282, %240
  %262 = load i32, i32* %16, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %261
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @get_bits(i32* %14, i32 %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 5
  %274 = load i8***, i8**** %273, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8**, i8*** %274, i64 %276
  %278 = load i8**, i8*** %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  store i8* %271, i8** %281, align 8
  br label %282

282:                                              ; preds = %267
  %283 = load i32, i32* %16, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %16, align 4
  br label %261

285:                                              ; preds = %261
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %236

289:                                              ; preds = %236
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @TWINVQ_FT_LONG, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %330

295:                                              ; preds = %289
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @read_cb_data(%struct.TYPE_12__* %296, i32* %14, i32 %299, i32 3)
  store i32 0, i32* %15, align 4
  br label %301

301:                                              ; preds = %326, %295
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* %12, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %329

305:                                              ; preds = %301
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = call i8* @get_bits(i32* %14, i32 %308)
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 3
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  store i8* %309, i8** %315, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = call i8* @get_bits(i32* %14, i32 %318)
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 2
  %322 = load i8**, i8*** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8*, i8** %322, i64 %324
  store i8* %319, i8** %325, align 8
  br label %326

326:                                              ; preds = %305
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %301

329:                                              ; preds = %301
  br label %330

330:                                              ; preds = %329, %289
  %331 = call i32 @get_bits_count(i32* %14)
  %332 = add nsw i32 %331, 7
  %333 = sdiv i32 %332, 8
  store i32 %333, i32* %5, align 4
  br label %334

334:                                              ; preds = %330, %49, %35
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i8*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @read_cb_data(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
