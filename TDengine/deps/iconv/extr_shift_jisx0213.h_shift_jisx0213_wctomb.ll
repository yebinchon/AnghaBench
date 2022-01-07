; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_shift_jisx0213.h_shift_jisx0213_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_shift_jisx0213.h_shift_jisx0213_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16 }

@shift_jisx0213_comp_table02e5_idx = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table02e5_len = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table02e9_idx = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table02e9_len = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table0300_idx = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table0300_len = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table0301_idx = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table0301_len = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table309a_idx = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table309a_len = common dso_local global i32 0, align 4
@shift_jisx0213_comp_table_data = common dso_local global %struct.TYPE_5__* null, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32)* @shift_jisx0213_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_jisx0213_wctomb(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %11, align 2
  %20 = load i16, i16* %11, align 2
  %21 = icmp ne i16 %20, 0
  br i1 %21, label %22, label %129

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 741
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @shift_jisx0213_comp_table02e5_idx, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @shift_jisx0213_comp_table02e5_len, align 4
  store i32 %27, i32* %13, align 4
  br label %57

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 745
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @shift_jisx0213_comp_table02e9_idx, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @shift_jisx0213_comp_table02e9_len, align 4
  store i32 %33, i32* %13, align 4
  br label %56

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 768
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @shift_jisx0213_comp_table0300_idx, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @shift_jisx0213_comp_table0300_len, align 4
  store i32 %39, i32* %13, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 769
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @shift_jisx0213_comp_table0301_idx, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @shift_jisx0213_comp_table0301_len, align 4
  store i32 %45, i32* %13, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 12442
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @shift_jisx0213_comp_table309a_idx, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @shift_jisx0213_comp_table309a_len, align 4
  store i32 %51, i32* %13, align 4
  br label %53

52:                                               ; preds = %46
  br label %108

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %31
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %71, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shift_jisx0213_comp_table_data, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %77

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %58, label %77

77:                                               ; preds = %71, %69
  %78 = load i32, i32* %13, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 2
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shift_jisx0213_comp_table_data, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i16, i16* %88, align 2
  store i16 %89, i16* %11, align 2
  %90 = load i16, i16* %11, align 2
  %91 = zext i16 %90 to i32
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %94, i8* %96, align 1
  %97 = load i16, i16* %11, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %100, i8* %102, align 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i16 0, i16* %104, align 2
  store i32 2, i32* %5, align 4
  br label %317

105:                                              ; preds = %80
  %106 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %106, i32* %5, align 4
  br label %317

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107, %52
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %112, i32* %5, align 4
  br label %317

113:                                              ; preds = %108
  %114 = load i16, i16* %11, align 2
  %115 = zext i16 %114 to i32
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i16, i16* %11, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %124, i8* %126, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  store i8* %128, i8** %7, align 8
  store i32 2, i32* %10, align 4
  br label %129

129:                                              ; preds = %113, %4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 128
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 92
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 126
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 %144, i8* %146, align 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i16 0, i16* %148, align 2
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %317

151:                                              ; preds = %138
  %152 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %152, i32* %5, align 4
  br label %317

153:                                              ; preds = %135, %132, %129
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 165
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 92, i8* %162, align 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i16 0, i16* %164, align 2
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %317

167:                                              ; preds = %156
  %168 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %168, i32* %5, align 4
  br label %317

169:                                              ; preds = %153
  %170 = load i32, i32* %8, align 4
  %171 = icmp eq i32 %170, 8254
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 126, i8* %178, align 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i16 0, i16* %180, align 2
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %317

183:                                              ; preds = %172
  %184 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %184, i32* %5, align 4
  br label %317

185:                                              ; preds = %169
  %186 = load i32, i32* %8, align 4
  %187 = icmp sge i32 %186, 65377
  br i1 %187, label %188, label %207

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = icmp sle i32 %189, 65439
  br i1 %190, label %191, label %207

191:                                              ; preds = %188
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  %197 = sub nsw i32 %196, 65216
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 %198, i8* %200, align 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i16 0, i16* %202, align 2
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %317

205:                                              ; preds = %191
  %206 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %206, i32* %5, align 4
  br label %317

207:                                              ; preds = %188, %185
  %208 = load i32, i32* %8, align 4
  %209 = call zeroext i16 @ucs4_to_jisx0213(i32 %208)
  store i16 %209, i16* %16, align 2
  %210 = load i16, i16* %16, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %315

213:                                              ; preds = %207
  %214 = load i16, i16* %16, align 2
  %215 = zext i16 %214 to i32
  %216 = ashr i32 %215, 8
  store i32 %216, i32* %14, align 4
  %217 = load i16, i16* %16, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, 127
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %14, align 4
  %221 = sub i32 %220, 33
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sub i32 %222, 33
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp uge i32 %224, 94
  br i1 %225, label %226, label %246

226:                                              ; preds = %213
  %227 = load i32, i32* %14, align 4
  %228 = icmp uge i32 %227, 205
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = sub i32 %230, 102
  store i32 %231, i32* %14, align 4
  br label %245

232:                                              ; preds = %226
  %233 = load i32, i32* %14, align 4
  %234 = icmp uge i32 %233, 139
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %14, align 4
  %237 = icmp eq i32 %236, 135
  br i1 %237, label %238, label %241

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %14, align 4
  %240 = sub i32 %239, 40
  store i32 %240, i32* %14, align 4
  br label %244

241:                                              ; preds = %235
  %242 = load i32, i32* %14, align 4
  %243 = sub i32 %242, 34
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %241, %238
  br label %245

245:                                              ; preds = %244, %229
  br label %246

246:                                              ; preds = %245, %213
  %247 = load i32, i32* %14, align 4
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, i32* %15, align 4
  %252 = add i32 %251, 94
  store i32 %252, i32* %15, align 4
  br label %253

253:                                              ; preds = %250, %246
  %254 = load i32, i32* %14, align 4
  %255 = lshr i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp ult i32 %256, 31
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %14, align 4
  %260 = add i32 %259, 129
  store i32 %260, i32* %14, align 4
  br label %264

261:                                              ; preds = %253
  %262 = load i32, i32* %14, align 4
  %263 = add i32 %262, 193
  store i32 %263, i32* %14, align 4
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %15, align 4
  %266 = icmp ult i32 %265, 63
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %15, align 4
  %269 = add i32 %268, 64
  store i32 %269, i32* %15, align 4
  br label %273

270:                                              ; preds = %264
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %271, 65
  store i32 %272, i32* %15, align 4
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i16, i16* %16, align 2
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, 128
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %273
  %279 = load i16, i16* %16, align 2
  %280 = zext i16 %279 to i32
  %281 = and i32 %280, 32768
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = call i32 (...) @abort() #3
  unreachable

285:                                              ; preds = %278
  %286 = load i32, i32* %14, align 4
  %287 = shl i32 %286, 8
  %288 = load i32, i32* %15, align 4
  %289 = or i32 %287, %288
  %290 = trunc i32 %289 to i16
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  store i16 %290, i16* %292, align 2
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 0
  store i32 %294, i32* %5, align 4
  br label %317

295:                                              ; preds = %273
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, 2
  %299 = icmp sge i32 %296, %298
  br i1 %299, label %300, label %313

300:                                              ; preds = %295
  %301 = load i32, i32* %14, align 4
  %302 = trunc i32 %301 to i8
  %303 = load i8*, i8** %7, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 0
  store i8 %302, i8* %304, align 1
  %305 = load i32, i32* %15, align 4
  %306 = trunc i32 %305 to i8
  %307 = load i8*, i8** %7, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 1
  store i8 %306, i8* %308, align 1
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  store i16 0, i16* %310, align 2
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %5, align 4
  br label %317

313:                                              ; preds = %295
  %314 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %314, i32* %5, align 4
  br label %317

315:                                              ; preds = %207
  %316 = load i32, i32* @RET_ILUNI, align 4
  store i32 %316, i32* %5, align 4
  br label %317

317:                                              ; preds = %315, %313, %300, %285, %205, %195, %183, %176, %167, %160, %151, %142, %111, %105, %83
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local zeroext i16 @ucs4_to_jisx0213(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
