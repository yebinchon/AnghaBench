; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fitsdec.c_fits_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fitsdec.c_fits_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@STATE_BITPIX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"File contains RGB image but NAXIS = %d and NAXIS3 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"unsupported number of dimensions, NAXIS = %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"BLANK keyword found but BITPIX = %d\0A. Ignoring BLANK\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"unsupported size of FITS image\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid BITPIX, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"data min/max (%g %g) is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"data min/max indicates a blank image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_6__*, i32*, i32**)* @fits_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fits_read_header(i32* %0, i32** %1, %struct.TYPE_6__* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = load i32, i32* @STATE_BITPIX, align 4
  %22 = call i32 @avpriv_fits_header_init(%struct.TYPE_6__* %20, i32 %21)
  br label %23

23:                                               ; preds = %42, %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %6, align 4
  br label %313

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @avpriv_fits_header_parse_line(i32* %34, %struct.TYPE_6__* %35, i32* %36, i32*** %11)
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 80
  store i32* %39, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %23, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %6, align 4
  br label %313

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 35
  %54 = sdiv i32 %53, 36
  %55 = mul nsw i32 %54, 36
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %55, %56
  %58 = mul nsw i32 %57, 80
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %6, align 4
  br label %313

70:                                               ; preds = %51
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %12, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 3
  br i1 %83, label %98, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %111

91:                                               ; preds = %84
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %98, label %111

98:                                               ; preds = %91, %79
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %99, i32 %100, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %108)
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %6, align 4
  br label %313

111:                                              ; preds = %91, %84, %70
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 2
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %122, i32 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %128, i32* %6, align 4
  br label %313

129:                                              ; preds = %116, %111
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, -32
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, -64
  br i1 %143, label %144, label %153

144:                                              ; preds = %139, %134
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @AV_LOG_WARNING, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %145, i32 %146, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 10
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %144, %139, %129
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @abs(i32 %156) #3
  %158 = ashr i32 %157, 3
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %17, align 8
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %198, %153
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %201

166:                                              ; preds = %160
  %167 = load i64, i64* %17, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* @SIZE_MAX, align 8
  %179 = load i64, i64* %17, align 8
  %180 = udiv i64 %178, %179
  %181 = icmp ugt i64 %177, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %169, %166
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %183, i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %6, align 4
  br label %313

187:                                              ; preds = %169
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %17, align 8
  %197 = mul i64 %196, %195
  store i64 %197, i64* %17, align 8
  br label %198

198:                                              ; preds = %187
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %160

201:                                              ; preds = %160
  %202 = load i32*, i32** %10, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = ptrtoint i32* %202 to i64
  %205 = ptrtoint i32* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 4
  %208 = load i64, i64* %17, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %211, i32* %6, align 4
  br label %313

212:                                              ; preds = %201
  %213 = load i32*, i32** %12, align 8
  %214 = load i32**, i32*** %8, align 8
  store i32* %213, i32** %214, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 7
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %245, label %219

219:                                              ; preds = %212
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %245, label %229

229:                                              ; preds = %224, %219
  %230 = load i32*, i32** %12, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = call i32 @fill_data_min_max(i32* %230, %struct.TYPE_6__* %231, i32* %232)
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* @AV_LOG_ERROR, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %237, i32 %238, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %16, align 4
  store i32 %243, i32* %6, align 4
  br label %313

244:                                              ; preds = %229
  br label %272

245:                                              ; preds = %224, %212
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %248, %251
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = sdiv i32 %252, %255
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %261, %264
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = sdiv i32 %265, %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 6
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %245, %244
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 7
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %312, label %277

277:                                              ; preds = %272
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = icmp sge i32 %280, %283
  br i1 %284, label %285, label %312

285:                                              ; preds = %277
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = icmp sgt i32 %288, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %285
  %294 = load i32*, i32** %7, align 8
  %295 = load i32, i32* @AV_LOG_ERROR, align 4
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %294, i32 %295, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %298, i32 %301)
  %303 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %303, i32* %6, align 4
  br label %313

304:                                              ; preds = %285
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* @AV_LOG_WARNING, align 4
  %307 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %305, i32 %306, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %304, %277, %272
  store i32 0, i32* %6, align 4
  br label %313

313:                                              ; preds = %312, %293, %236, %210, %182, %121, %98, %68, %49, %31
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local i32 @avpriv_fits_header_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @avpriv_fits_header_parse_line(i32*, %struct.TYPE_6__*, i32*, i32***) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @fill_data_min_max(i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
