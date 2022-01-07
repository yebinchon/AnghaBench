; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_metasound_read_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_metasound_read_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64, i8**, i8**, i32, i8***, i8**, i8**, i8**, i8**, i32**, i8****, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@TWINVQ_WINDOW_TYPE_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid window type, broken sample?\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_twinvq_wtype_to_ftype_table = common dso_local global i64* null, align 8
@TWINVQ_FT_SHORT = common dso_local global i64 0, align 8
@TWINVQ_FT_LONG = common dso_local global i64 0, align 8
@TWINVQ_GAIN_BITS = common dso_local global i32 0, align 4
@TWINVQ_SUB_GAIN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32*, i32)* @metasound_read_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metasound_read_bitstream(i32* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3) #0 {
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
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @init_get_bits8(i32* %14, i32* %27, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %5, align 4
  br label %377

33:                                               ; preds = %4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %368, %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %373

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %50
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %10, align 8
  %52 = load i32, i32* @TWINVQ_WINDOW_TYPE_BITS, align 4
  %53 = call i8* @get_bits(i32* %14, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %66

61:                                               ; preds = %44
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 @av_log(i32* %62, i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %5, align 4
  br label %377

66:                                               ; preds = %44
  %67 = load i64*, i64** @ff_twinvq_wtype_to_ftype_table, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %67, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TWINVQ_FT_SHORT, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %66
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = call i8* @get_bits(i32* %14, i32 2)
  br label %103

103:                                              ; preds = %101, %96, %66
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @read_cb_data(%struct.TYPE_12__* %104, i32* %14, i32 %107, i32 %111)
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %168, %103
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %171

117:                                              ; preds = %113
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %164, %117
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %160, %122
  %124 = load i32, i32* %17, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %124, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %123
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @get_bits(i32* %14, i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 11
  %148 = load i8****, i8***** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8***, i8**** %148, i64 %150
  %152 = load i8***, i8**** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8**, i8*** %152, i64 %154
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %145, i8** %159, align 8
  br label %160

160:                                              ; preds = %135
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %123

163:                                              ; preds = %123
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %118

167:                                              ; preds = %118
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %113

171:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %197, %171
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  store i32 0, i32* %16, align 4
  br label %177

177:                                              ; preds = %193, %176
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %177
  %182 = call i32 @get_bits1(i32* %14)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 10
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %182, i32* %192, align 4
  br label %193

193:                                              ; preds = %181
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %177

196:                                              ; preds = %177
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  br label %172

200:                                              ; preds = %172
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @TWINVQ_FT_LONG, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  store i32 0, i32* %15, align 4
  br label %207

207:                                              ; preds = %220, %206
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load i32, i32* @TWINVQ_GAIN_BITS, align 4
  %213 = call i8* @get_bits(i32* %14, i32 %212)
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 9
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  store i8* %213, i8** %219, align 8
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %207

223:                                              ; preds = %207
  br label %263

224:                                              ; preds = %200
  store i32 0, i32* %15, align 4
  br label %225

225:                                              ; preds = %259, %224
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %262

229:                                              ; preds = %225
  %230 = load i32, i32* @TWINVQ_GAIN_BITS, align 4
  %231 = call i8* @get_bits(i32* %14, i32 %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 9
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  store i8* %231, i8** %237, align 8
  store i32 0, i32* %16, align 4
  br label %238

238:                                              ; preds = %255, %229
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = load i32, i32* @TWINVQ_SUB_GAIN_BITS, align 4
  %244 = call i8* @get_bits(i32* %14, i32 %243)
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 8
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %13, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %247, i64 %253
  store i8* %244, i8** %254, align 8
  br label %255

255:                                              ; preds = %242
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %238

258:                                              ; preds = %238
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %225

262:                                              ; preds = %225
  br label %263

263:                                              ; preds = %262, %223
  store i32 0, i32* %15, align 4
  br label %264

264:                                              ; preds = %314, %263
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %317

268:                                              ; preds = %264
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i8* @get_bits(i32* %14, i32 %271)
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 7
  %275 = load i8**, i8*** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* %272, i8** %278, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @get_bits(i32* %14, i32 %281)
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 6
  %285 = load i8**, i8*** %284, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  store i8* %282, i8** %288, align 8
  store i32 0, i32* %16, align 4
  br label %289

289:                                              ; preds = %310, %268
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %313

295:                                              ; preds = %289
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i8* @get_bits(i32* %14, i32 %298)
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 5
  %302 = load i8***, i8**** %301, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8**, i8*** %302, i64 %304
  %306 = load i8**, i8*** %305, align 8
  %307 = load i32, i32* %16, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %306, i64 %308
  store i8* %299, i8** %309, align 8
  br label %310

310:                                              ; preds = %295
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %16, align 4
  br label %289

313:                                              ; preds = %289
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %15, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %15, align 4
  br label %264

317:                                              ; preds = %264
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @TWINVQ_FT_LONG, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %358

323:                                              ; preds = %317
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @read_cb_data(%struct.TYPE_12__* %324, i32* %14, i32 %327, i32 3)
  store i32 0, i32* %15, align 4
  br label %329

329:                                              ; preds = %354, %323
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %357

333:                                              ; preds = %329
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = call i8* @get_bits(i32* %14, i32 %336)
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 3
  %340 = load i8**, i8*** %339, align 8
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  store i8* %337, i8** %343, align 8
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = call i8* @get_bits(i32* %14, i32 %346)
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 2
  %350 = load i8**, i8*** %349, align 8
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %350, i64 %352
  store i8* %347, i8** %353, align 8
  br label %354

354:                                              ; preds = %333
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %15, align 4
  br label %329

357:                                              ; preds = %329
  br label %358

358:                                              ; preds = %357, %317
  %359 = call i32 @get_bits_count(i32* %14)
  %360 = and i32 %359, 3
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %358
  %363 = call i32 @get_bits_count(i32* %14)
  %364 = and i32 %363, 3
  %365 = sub nsw i32 4, %364
  %366 = call i32 @skip_bits(i32* %14, i32 %365)
  br label %367

367:                                              ; preds = %362, %358
  br label %368

368:                                              ; preds = %367
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, 1
  store i64 %372, i64* %370, align 8
  br label %36

373:                                              ; preds = %36
  %374 = call i32 @get_bits_count(i32* %14)
  %375 = add nsw i32 %374, 7
  %376 = sdiv i32 %375, 8
  store i32 %376, i32* %5, align 4
  br label %377

377:                                              ; preds = %373, %61, %31
  %378 = load i32, i32* %5, align 4
  ret i32 %378
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @read_cb_data(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
