; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_menu_init_base.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_menu_init_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_font_data = common dso_local global i8* null, align 8
@MENU_X2 = common dso_local global i64 0, align 8
@fontdata8x8 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"font.png\00", align 1
@READPNG_FONT = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"selector.png\00", align 1
@READPNG_SELECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"skin.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"found skin.txt\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"text_color=\00", align 1
@menu_text_color = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"skin.txt: parse error for text_color\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"selection_color=\00", align 1
@menu_sel_color = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"skin.txt: parse error for selection_color\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"skin.txt: parse error: %s\0A\00", align 1
@LC_TIME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_init_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i8*, i8** @menu_font_data, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8*, i8** @menu_font_data, align 8
  %18 = call i32 @free(i8* %17)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i64, i64* @MENU_X2, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 81920, i32 20480
  %24 = sdiv i32 %23, 2
  %25 = call i8* @calloc(i32 %24, i32 1)
  store i8* %25, i8** @menu_font_data, align 8
  %26 = load i8*, i8** @menu_font_data, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %368

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  %30 = load i8*, i8** @menu_font_data, align 8
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %133, %29
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %136

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %127, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %130

38:                                               ; preds = %35
  %39 = load i8*, i8** @fontdata8x8, align 8
  %40 = load i32, i32* %2, align 4
  %41 = mul nsw i32 %40, 8
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  store i8 -16, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 64
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 15
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  store i8 -16, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %64
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 16
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, 15
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  %87 = load i8, i8* %9, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i8*, i8** %5, align 8
  store i8 -16, i8* %92, align 1
  br label %93

93:                                               ; preds = %91, %84
  %94 = load i8, i8* %9, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, 15
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  %107 = load i8, i8* %9, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i8*, i8** %5, align 8
  store i8 -16, i8* %112, align 1
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i8, i8* %9, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, 15
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  br label %124

124:                                              ; preds = %118, %113
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %35

130:                                              ; preds = %35
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  store i8* %132, i8** %5, align 8
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %31

136:                                              ; preds = %31
  %137 = load i64, i64* @MENU_X2, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %238

139:                                              ; preds = %136
  %140 = load i8*, i8** @menu_font_data, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 10240
  %142 = getelementptr inbounds i8, i8* %141, i64 -4
  store i8* %142, i8** %6, align 8
  %143 = load i8*, i8** @menu_font_data, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 40960
  %145 = getelementptr inbounds i8, i8* %144, i64 -1
  store i8* %145, i8** %5, align 8
  store i32 255, i32* %2, align 4
  br label %146

146:                                              ; preds = %234, %139
  %147 = load i32, i32* %2, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %237

149:                                              ; preds = %146
  store i32 9, i32* %3, align 4
  br label %150

150:                                              ; preds = %228, %149
  %151 = load i32, i32* %3, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %233

153:                                              ; preds = %150
  store i32 3, i32* %1, align 4
  br label %154

154:                                              ; preds = %187, %153
  %155 = load i32, i32* %1, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %154
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 15
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = shl i32 %166, 4
  %168 = or i32 %165, %167
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 -1
  store i8* %171, i8** %5, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %1, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = ashr i32 %177, 4
  %179 = and i32 %178, 15
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = shl i32 %181, 4
  %183 = or i32 %180, %182
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 -1
  store i8* %186, i8** %5, align 8
  store i8 %184, i8* %185, align 1
  br label %187

187:                                              ; preds = %157
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %1, align 4
  br label %154

190:                                              ; preds = %154
  store i32 3, i32* %1, align 4
  br label %191

191:                                              ; preds = %224, %190
  %192 = load i32, i32* %1, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %227

194:                                              ; preds = %191
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %1, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 15
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = shl i32 %203, 4
  %205 = or i32 %202, %204
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %5, align 8
  store i8 %206, i8* %207, align 1
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* %1, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = ashr i32 %214, 4
  %216 = and i32 %215, 15
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = shl i32 %218, 4
  %220 = or i32 %217, %219
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 -1
  store i8* %223, i8** %5, align 8
  store i8 %221, i8* %222, align 1
  br label %224

224:                                              ; preds = %194
  %225 = load i32, i32* %1, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %1, align 4
  br label %191

227:                                              ; preds = %191
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %3, align 4
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 -4
  store i8* %232, i8** %6, align 8
  br label %150

233:                                              ; preds = %150
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %2, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %2, align 4
  br label %146

237:                                              ; preds = %146
  br label %238

238:                                              ; preds = %237, %136
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %240 = call i32 @plat_get_skin_dir(i8* %239, i32 256)
  store i32 %240, i32* %4, align 4
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = call i32 @strcpy(i8* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %246 = load i8*, i8** @menu_font_data, align 8
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %248 = load i32, i32* @READPNG_FONT, align 4
  %249 = load i64, i64* @MENU_X2, align 8
  %250 = icmp ne i64 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 256, i32 128
  %253 = load i64, i64* @MENU_X2, align 8
  %254 = icmp ne i64 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 320, i32 160
  %257 = call i32 @readpng(i8* %246, i8* %247, i32 %248, i32 %252, i32 %256)
  %258 = load i8*, i8** @menu_font_data, align 8
  %259 = load i8*, i8** @menu_font_data, align 8
  %260 = load i32, i32* @me_mfont_w, align 4
  %261 = mul nsw i32 62, %260
  %262 = load i32, i32* @me_mfont_h, align 4
  %263 = mul nsw i32 %261, %262
  %264 = sdiv i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %259, i64 %265
  %267 = load i32, i32* @me_mfont_w, align 4
  %268 = load i32, i32* @me_mfont_h, align 4
  %269 = mul nsw i32 %267, %268
  %270 = sdiv i32 %269, 2
  %271 = call i32 @memcpy(i8* %258, i8* %266, i32 %270)
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = call i32 @strcpy(i8* %275, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %277 = load i8*, i8** @menu_font_data, align 8
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %279 = load i32, i32* @READPNG_SELECTOR, align 4
  %280 = load i32, i32* @me_mfont_w, align 4
  %281 = load i32, i32* @me_mfont_h, align 4
  %282 = call i32 @readpng(i8* %277, i8* %278, i32 %279, i32 %280, i32 %281)
  %283 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = call i32 @strcpy(i8* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %288 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %289 = call i32* @fopen(i8* %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %289, i32** %8, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %365

292:                                              ; preds = %238
  %293 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %294

294:                                              ; preds = %361, %326, %315, %292
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @feof(i32* %295)
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  br i1 %298, label %299, label %362

299:                                              ; preds = %294
  %300 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %301 = load i32*, i32** %8, align 8
  %302 = call i32* @fgets(i8* %300, i32 256, i32* %301)
  %303 = icmp eq i32* %302, null
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  br label %362

305:                                              ; preds = %299
  %306 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %307 = load i8, i8* %306, align 16
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 35
  br i1 %309, label %315, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %312 = load i8, i8* %311, align 16
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 47
  br i1 %314, label %315, label %316

315:                                              ; preds = %310, %305
  br label %294

316:                                              ; preds = %310
  %317 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %318 = load i8, i8* %317, align 16
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 13
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %323 = load i8, i8* %322, align 16
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 10
  br i1 %325, label %326, label %327

326:                                              ; preds = %321, %316
  br label %294

327:                                              ; preds = %321
  %328 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %329 = call i64 @strncmp(i8* %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %327
  %332 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %333 = getelementptr inbounds i8, i8* %332, i64 11
  %334 = call i32 @parse_hex_color(i8* %333)
  store i32 %334, i32* %12, align 4
  %335 = load i32, i32* %12, align 4
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* %12, align 4
  store i32 %338, i32* @menu_text_color, align 4
  br label %341

339:                                              ; preds = %331
  %340 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %337
  br label %361

342:                                              ; preds = %327
  %343 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %344 = call i64 @strncmp(i8* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 16)
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %342
  %347 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %348 = getelementptr inbounds i8, i8* %347, i64 16
  %349 = call i32 @parse_hex_color(i8* %348)
  store i32 %349, i32* %13, align 4
  %350 = load i32, i32* %13, align 4
  %351 = icmp sge i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %346
  %353 = load i32, i32* %13, align 4
  store i32 %353, i32* @menu_sel_color, align 4
  br label %356

354:                                              ; preds = %346
  %355 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %352
  br label %360

357:                                              ; preds = %342
  %358 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %359 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %358)
  br label %360

360:                                              ; preds = %357, %356
  br label %361

361:                                              ; preds = %360, %341
  br label %294

362:                                              ; preds = %304, %294
  %363 = load i32*, i32** %8, align 8
  %364 = call i32 @fclose(i32* %363)
  br label %365

365:                                              ; preds = %362, %238
  %366 = load i32, i32* @LC_TIME, align 4
  %367 = call i32 @setlocale(i32 %366, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %28
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @plat_get_skin_dir(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @readpng(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_hex_color(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
