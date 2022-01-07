; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Interlacing\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid size %dx%d\0A\00", align 1
@VP56_SIZE_CHANGE = common dso_local global i32 0, align 4
@vp6_parse_coeff = common dso_local global i32 0, align 4
@vp6_parse_coeff_huffman = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @vp6_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp6_parse_header(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 10
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  store i32 %23, i32* %17, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 16
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %32, align 8
  %34 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 1
  %43 = and i32 %42, 63
  %44 = call i32 @ff_vp56_init_dequant(%struct.TYPE_9__* %38, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 16
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %261

54:                                               ; preds = %3
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 3
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %4, align 4
  br label %457

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 6
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 9
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i32 @avpriv_report_missing_feature(%struct.TYPE_10__* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %80, i32* %4, align 4
  br label %457

81:                                               ; preds = %63
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84, %81
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = call i32 @AV_RB16(i32* %91)
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32* %95, i32** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 2
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %89, %84
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 9
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = load i32, i32* %14, align 4
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %13, align 4
  %118 = shl i32 %117, 4
  %119 = call i32 @av_log(%struct.TYPE_10__* %113, i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %118)
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %4, align 4
  br label %457

121:                                              ; preds = %107
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 15
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 16, %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 9
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %128, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %13, align 4
  %137 = mul nsw i32 16, %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 9
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %137, %142
  br i1 %143, label %144, label %236

144:                                              ; preds = %135, %126, %121
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 9
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %184

151:                                              ; preds = %144
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 9
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FFALIGN(i32 %156, i32 16)
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 16, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %151
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 9
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @FFALIGN(i32 %166, i32 16)
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 16, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %161
  %172 = load i32, i32* %14, align 4
  %173 = mul nsw i32 16, %172
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 9
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 8
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 16, %178
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 9
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  br label %234

184:                                              ; preds = %161, %151, %144
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 16, %188
  %190 = load i32, i32* %13, align 4
  %191 = mul nsw i32 16, %190
  %192 = call i32 @ff_set_dimensions(%struct.TYPE_10__* %187, i32 %189, i32 %191)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %4, align 4
  br label %457

197:                                              ; preds = %184
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 9
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %233

204:                                              ; preds = %197
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 9
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 9
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, %212
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 9
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 15
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 9
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, %226
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %204, %197
  br label %234

234:                                              ; preds = %233, %171
  %235 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %234, %135
  %237 = load i32*, i32** %8, align 8
  %238 = load i32*, i32** %6, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  %240 = load i32, i32* %7, align 4
  %241 = sub nsw i32 %240, 6
  %242 = call i32 @ff_vp56_init_range_decoder(i32* %237, i32* %239, i32 %241)
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %236
  br label %446

246:                                              ; preds = %236
  %247 = load i32*, i32** %8, align 8
  %248 = call i32 @vp56_rac_gets(i32* %247, i32 2)
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp slt i32 %252, 8
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  store i32 5, i32* %11, align 4
  br label %255

255:                                              ; preds = %254, %246
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 2
  store i32 0, i32* %260, align 8
  br label %341

261:                                              ; preds = %3
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %261
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 9
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 9
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %273, %266, %261
  %281 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %281, i32* %4, align 4
  br label %457

282:                                              ; preds = %273
  %283 = load i32, i32* %17, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %285, %282
  %291 = load i32*, i32** %6, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = call i32 @AV_RB16(i32* %292)
  %294 = sub nsw i32 %293, 2
  store i32 %294, i32* %10, align 4
  %295 = load i32*, i32** %6, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  store i32* %296, i32** %6, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %297, 2
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %290, %285
  %300 = load i32*, i32** %8, align 8
  %301 = load i32*, i32** %6, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %7, align 4
  %304 = sub nsw i32 %303, 1
  %305 = call i32 @ff_vp56_init_range_decoder(i32* %300, i32* %302, i32 %304)
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* %16, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %299
  %309 = load i32, i32* %16, align 4
  store i32 %309, i32* %4, align 4
  br label %457

310:                                              ; preds = %299
  %311 = load i32*, i32** %8, align 8
  %312 = call i32 @vp56_rac_get(i32* %311)
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %340

319:                                              ; preds = %310
  %320 = load i32*, i32** %8, align 8
  %321 = call i32 @vp56_rac_get(i32* %320)
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %319
  %329 = load i32*, i32** %8, align 8
  %330 = call i32 @vp56_rac_get(i32* %329)
  br label %331

331:                                              ; preds = %328, %319
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp sgt i32 %334, 7
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @vp56_rac_get(i32* %337)
  store i32 %338, i32* %9, align 4
  br label %339

339:                                              ; preds = %336, %331
  br label %340

340:                                              ; preds = %339, %310
  br label %341

341:                                              ; preds = %340, %255
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %387

344:                                              ; preds = %341
  %345 = load i32*, i32** %8, align 8
  %346 = call i32 @vp56_rac_get(i32* %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %362

348:                                              ; preds = %344
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 4
  store i32 2, i32* %350, align 8
  %351 = load i32*, i32** %8, align 8
  %352 = call i32 @vp56_rac_gets(i32* %351, i32 5)
  %353 = load i32, i32* %11, align 4
  %354 = shl i32 %352, %353
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  %357 = load i32*, i32** %8, align 8
  %358 = call i32 @vp56_rac_gets(i32* %357, i32 3)
  %359 = shl i32 2, %358
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 6
  store i32 %359, i32* %361, align 8
  br label %373

362:                                              ; preds = %344
  %363 = load i32*, i32** %8, align 8
  %364 = call i32 @vp56_rac_get(i32* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 4
  store i32 1, i32* %368, align 8
  br label %372

369:                                              ; preds = %362
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 4
  store i32 0, i32* %371, align 8
  br label %372

372:                                              ; preds = %369, %366
  br label %373

373:                                              ; preds = %372, %348
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp sgt i32 %376, 7
  br i1 %377, label %378, label %383

378:                                              ; preds = %373
  %379 = load i32*, i32** %8, align 8
  %380 = call i32 @vp56_rac_gets(i32* %379, i32 4)
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 7
  store i32 %380, i32* %382, align 4
  br label %386

383:                                              ; preds = %373
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 7
  store i32 16, i32* %385, align 4
  br label %386

386:                                              ; preds = %383, %378
  br label %387

387:                                              ; preds = %386, %341
  %388 = load i32*, i32** %8, align 8
  %389 = call i32 @vp56_rac_get(i32* %388)
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 8
  store i32 %389, i32* %391, align 8
  %392 = load i32, i32* @vp6_parse_coeff, align 4
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 14
  store i32 %392, i32* %394, align 8
  %395 = load i32, i32* %10, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %439

397:                                              ; preds = %387
  %398 = load i32, i32* %10, align 4
  %399 = load i32*, i32** %6, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  store i32* %401, i32** %6, align 8
  %402 = load i32, i32* %10, align 4
  %403 = load i32, i32* %7, align 4
  %404 = sub nsw i32 %403, %402
  store i32 %404, i32* %7, align 4
  %405 = load i32, i32* %7, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %397
  %408 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %408, i32* %16, align 4
  br label %446

409:                                              ; preds = %397
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 8
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %409
  %415 = load i32, i32* @vp6_parse_coeff_huffman, align 4
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 14
  store i32 %415, i32* %417, align 8
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 13
  %420 = load i32*, i32** %6, align 8
  %421 = load i32, i32* %7, align 4
  %422 = shl i32 %421, 3
  %423 = call i32 @init_get_bits(i32* %419, i32* %420, i32 %422)
  br label %438

424:                                              ; preds = %409
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 12
  %427 = load i32*, i32** %6, align 8
  %428 = load i32, i32* %7, align 4
  %429 = call i32 @ff_vp56_init_range_decoder(i32* %426, i32* %427, i32 %428)
  store i32 %429, i32* %16, align 4
  %430 = load i32, i32* %16, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %424
  br label %446

433:                                              ; preds = %424
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 12
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 11
  store i32* %435, i32** %437, align 8
  br label %438

438:                                              ; preds = %433, %414
  br label %444

439:                                              ; preds = %387
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 10
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 11
  store i32* %441, i32** %443, align 8
  br label %444

444:                                              ; preds = %439, %438
  %445 = load i32, i32* %15, align 4
  store i32 %445, i32* %4, align 4
  br label %457

446:                                              ; preds = %432, %407, %245
  %447 = load i32, i32* %15, align 4
  %448 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %455

450:                                              ; preds = %446
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 9
  %453 = load %struct.TYPE_10__*, %struct.TYPE_10__** %452, align 8
  %454 = call i32 @ff_set_dimensions(%struct.TYPE_10__* %453, i32 0, i32 0)
  br label %455

455:                                              ; preds = %450, %446
  %456 = load i32, i32* %16, align 4
  store i32 %456, i32* %4, align 4
  br label %457

457:                                              ; preds = %455, %444, %308, %280, %195, %110, %75, %61
  %458 = load i32, i32* %4, align 4
  ret i32 %458
}

declare dso_local i32 @ff_vp56_init_dequant(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ff_vp56_init_range_decoder(i32*, i32*, i32) #1

declare dso_local i32 @vp56_rac_gets(i32*, i32) #1

declare dso_local i32 @vp56_rac_get(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
