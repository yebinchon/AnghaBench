; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_inputbox.c_dialog_inputbox.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_inputbox.c_dialog_inputbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@dialog_input_result = common dso_local global i8* null, align 8
@stdscr = common dso_local global i32 0, align 4
@INPUTBOX_HEIGTH_MIN = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@INPUTBOX_WIDTH_MIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ACS_LTEE = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i8 0, align 1
@ACS_RTEE = common dso_local global i8 0, align 1
@MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_inputbox(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %26 = load i8*, i8** @dialog_input_result, align 8
  store i8* %26, i8** %24, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i8*, i8** %24, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  br label %36

32:                                               ; preds = %5
  %33 = load i8*, i8** %24, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %636, %36
  %38 = load i32, i32* @stdscr, align 4
  %39 = call i32 @getmaxy(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @INPUTBOX_HEIGTH_MIN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %644

47:                                               ; preds = %37
  %48 = load i32, i32* @stdscr, align 4
  %49 = call i32 @getmaxx(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @INPUTBOX_WIDTH_MIN, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %644

57:                                               ; preds = %47
  %58 = load i32, i32* @stdscr, align 4
  %59 = call i32 @getmaxx(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @stdscr, align 4
  %64 = call i32 @getmaxy(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @stdscr, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @draw_shadow(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32* @newwin(i32 %74, i32 %75, i32 %76, i32 %77)
  store i32* %78, i32** %25, align 8
  %79 = load i32*, i32** %25, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @keypad(i32* %79, i32 %80)
  %82 = load i32*, i32** %25, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %87 = call i32 @draw_box(i32* %82, i32 0, i32 0, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %25, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %90 = call i32 @wattrset(i32* %88, i32 %89)
  %91 = load i32*, i32** %25, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 3
  %94 = load i32, i32* @ACS_LTEE, align 4
  %95 = call i32 @mvwaddch(i32* %91, i32 %93, i32 0, i32 %94)
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %105, %57
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 2
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32*, i32** %25, align 8
  %103 = load i8, i8* @ACS_HLINE, align 1
  %104 = call i32 @waddch(i32* %102, i8 signext %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %96

108:                                              ; preds = %96
  %109 = load i32*, i32** %25, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %111 = call i32 @wattrset(i32* %109, i32 %110)
  %112 = load i32*, i32** %25, align 8
  %113 = load i8, i8* @ACS_RTEE, align 1
  %114 = call i32 @waddch(i32* %112, i8 signext %113)
  %115 = load i32*, i32** %25, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @print_title(i32* %115, i8* %116, i32 %117)
  %119 = load i32*, i32** %25, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %121 = call i32 @wattrset(i32* %119, i32 %120)
  %122 = load i32*, i32** %25, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 2
  %126 = call i32 @print_autowrap(i32* %122, i8* %123, i32 %125, i32 1, i32 3)
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 6
  store i32 %128, i32* %17, align 4
  %129 = load i32*, i32** %25, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @getyx(i32* %129, i32 %130, i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %17, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sdiv i32 %137, 2
  store i32 %138, i32* %16, align 4
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 2
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %148 = call i32 @draw_box(i32* %139, i32 %141, i32 %143, i32 3, i32 %145, i32 %146, i32 %147)
  %149 = load i32*, i32** %25, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @print_buttons(i32* %149, i32 %150, i32 %151, i32 0)
  %153 = load i32*, i32** %25, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @wmove(i32* %153, i32 %154, i32 %155)
  %157 = load i32*, i32** %25, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %159 = call i32 @wattrset(i32* %157, i32 %158)
  %160 = load i8*, i8** %24, align 8
  %161 = call i32 @strlen(i8* %160)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %192

166:                                              ; preds = %108
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %167, %168
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %17, align 4
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %188, %166
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load i32*, i32** %25, align 8
  %180 = load i8*, i8** %24, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = call i32 @waddch(i32* %179, i8 signext %186)
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %173

191:                                              ; preds = %173
  br label %197

192:                                              ; preds = %108
  store i32 0, i32* %21, align 4
  %193 = load i32, i32* %22, align 4
  store i32 %193, i32* %18, align 4
  %194 = load i32*, i32** %25, align 8
  %195 = load i8*, i8** %24, align 8
  %196 = call i32 @waddstr(i32* %194, i8* %195)
  br label %197

197:                                              ; preds = %192, %191
  %198 = load i32*, i32** %25, align 8
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %200, %201
  %203 = call i32 @wmove(i32* %198, i32 %199, i32 %202)
  %204 = load i32*, i32** %25, align 8
  %205 = call i32 @wrefresh(i32* %204)
  br label %206

206:                                              ; preds = %640, %559, %442, %372, %309, %197
  %207 = load i32, i32* %19, align 4
  %208 = icmp ne i32 %207, 133
  br i1 %208, label %209, label %641

209:                                              ; preds = %206
  %210 = load i32*, i32** %25, align 8
  %211 = call i32 @wgetch(i32* %210)
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %20, align 4
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %562

214:                                              ; preds = %209
  %215 = load i32, i32* %19, align 4
  switch i32 %215, label %443 [
    i32 128, label %216
    i32 129, label %216
    i32 134, label %216
    i32 135, label %217
    i32 127, label %217
    i32 132, label %310
    i32 130, label %373
  ]

216:                                              ; preds = %214, %214, %214
  br label %561

217:                                              ; preds = %214, %214
  %218 = load i32, i32* %23, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %309

220:                                              ; preds = %217
  %221 = load i32*, i32** %25, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %223 = call i32 @wattrset(i32* %221, i32 %222)
  %224 = load i32, i32* %18, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %21, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %21, align 4
  br label %232

229:                                              ; preds = %220
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* %22, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %232
  %237 = load i32, i32* %23, align 4
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %239

239:                                              ; preds = %254, %236
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %22, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %239
  %244 = load i8*, i8** %24, align 8
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %24, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8 %249, i8* %253, align 1
  br label %254

254:                                              ; preds = %243
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %239

257:                                              ; preds = %239
  br label %258

258:                                              ; preds = %257, %232
  %259 = load i32, i32* %23, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %23, align 4
  %261 = load i32, i32* %22, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %22, align 4
  %263 = load i8*, i8** %24, align 8
  %264 = load i32, i32* %22, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 0, i8* %266, align 1
  %267 = load i32*, i32** %25, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @wmove(i32* %267, i32 %268, i32 %269)
  store i32 0, i32* %12, align 4
  br label %271

271:                                              ; preds = %297, %258
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %17, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %300

275:                                              ; preds = %271
  %276 = load i8*, i8** %24, align 8
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %276, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = icmp ne i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %275
  %285 = load i32*, i32** %25, align 8
  %286 = call i32 @waddch(i32* %285, i8 signext 32)
  br label %300

287:                                              ; preds = %275
  %288 = load i32*, i32** %25, align 8
  %289 = load i8*, i8** %24, align 8
  %290 = load i32, i32* %21, align 4
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %289, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = call i32 @waddch(i32* %288, i8 signext %295)
  br label %297

297:                                              ; preds = %287
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %12, align 4
  br label %271

300:                                              ; preds = %284, %271
  %301 = load i32*, i32** %25, align 8
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* %18, align 4
  %304 = load i32, i32* %16, align 4
  %305 = add nsw i32 %303, %304
  %306 = call i32 @wmove(i32* %301, i32 %302, i32 %305)
  %307 = load i32*, i32** %25, align 8
  %308 = call i32 @wrefresh(i32* %307)
  br label %309

309:                                              ; preds = %300, %217
  br label %206

310:                                              ; preds = %214
  %311 = load i32, i32* %23, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %372

313:                                              ; preds = %310
  %314 = load i32, i32* %18, align 4
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load i32*, i32** %25, align 8
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* %18, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %16, align 4
  %322 = add nsw i32 %320, %321
  %323 = call i32 @wmove(i32* %317, i32 %318, i32 %322)
  br label %369

324:                                              ; preds = %313
  %325 = load i32, i32* %18, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %368

327:                                              ; preds = %324
  %328 = load i32, i32* %21, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %21, align 4
  %330 = load i32*, i32** %25, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @wmove(i32* %330, i32 %331, i32 %332)
  store i32 0, i32* %12, align 4
  br label %334

334:                                              ; preds = %360, %327
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* %17, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %363

338:                                              ; preds = %334
  %339 = load i8*, i8** %24, align 8
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %339, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = icmp ne i8 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %338
  %348 = load i32*, i32** %25, align 8
  %349 = call i32 @waddch(i32* %348, i8 signext 32)
  br label %363

350:                                              ; preds = %338
  %351 = load i32*, i32** %25, align 8
  %352 = load i8*, i8** %24, align 8
  %353 = load i32, i32* %21, align 4
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %352, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = call i32 @waddch(i32* %351, i8 signext %358)
  br label %360

360:                                              ; preds = %350
  %361 = load i32, i32* %12, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %12, align 4
  br label %334

363:                                              ; preds = %347, %334
  %364 = load i32*, i32** %25, align 8
  %365 = load i32, i32* %15, align 4
  %366 = load i32, i32* %16, align 4
  %367 = call i32 @wmove(i32* %364, i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %363, %324
  br label %369

369:                                              ; preds = %368, %316
  %370 = load i32, i32* %23, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %23, align 4
  br label %372

372:                                              ; preds = %369, %310
  br label %206

373:                                              ; preds = %214
  %374 = load i32, i32* %23, align 4
  %375 = load i32, i32* %22, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %442

377:                                              ; preds = %373
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %17, align 4
  %380 = sub nsw i32 %379, 1
  %381 = icmp slt i32 %378, %380
  br i1 %381, label %382, label %390

382:                                              ; preds = %377
  %383 = load i32*, i32** %25, align 8
  %384 = load i32, i32* %15, align 4
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %18, align 4
  %387 = load i32, i32* %16, align 4
  %388 = add nsw i32 %386, %387
  %389 = call i32 @wmove(i32* %383, i32 %384, i32 %388)
  br label %439

390:                                              ; preds = %377
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* %17, align 4
  %393 = sub nsw i32 %392, 1
  %394 = icmp eq i32 %391, %393
  br i1 %394, label %395, label %438

395:                                              ; preds = %390
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %21, align 4
  %398 = load i32*, i32** %25, align 8
  %399 = load i32, i32* %15, align 4
  %400 = load i32, i32* %16, align 4
  %401 = call i32 @wmove(i32* %398, i32 %399, i32 %400)
  store i32 0, i32* %12, align 4
  br label %402

402:                                              ; preds = %428, %395
  %403 = load i32, i32* %12, align 4
  %404 = load i32, i32* %17, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %431

406:                                              ; preds = %402
  %407 = load i8*, i8** %24, align 8
  %408 = load i32, i32* %21, align 4
  %409 = load i32, i32* %12, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %407, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = icmp ne i8 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %406
  %416 = load i32*, i32** %25, align 8
  %417 = call i32 @waddch(i32* %416, i8 signext 32)
  br label %431

418:                                              ; preds = %406
  %419 = load i32*, i32** %25, align 8
  %420 = load i8*, i8** %24, align 8
  %421 = load i32, i32* %21, align 4
  %422 = load i32, i32* %12, align 4
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %420, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = call i32 @waddch(i32* %419, i8 signext %426)
  br label %428

428:                                              ; preds = %418
  %429 = load i32, i32* %12, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %12, align 4
  br label %402

431:                                              ; preds = %415, %402
  %432 = load i32*, i32** %25, align 8
  %433 = load i32, i32* %15, align 4
  %434 = load i32, i32* %18, align 4
  %435 = load i32, i32* %16, align 4
  %436 = add nsw i32 %434, %435
  %437 = call i32 @wmove(i32* %432, i32 %433, i32 %436)
  br label %438

438:                                              ; preds = %431, %390
  br label %439

439:                                              ; preds = %438, %382
  %440 = load i32, i32* %23, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %23, align 4
  br label %442

442:                                              ; preds = %439, %373
  br label %206

443:                                              ; preds = %214
  %444 = load i32, i32* %19, align 4
  %445 = icmp slt i32 %444, 256
  br i1 %445, label %446, label %560

446:                                              ; preds = %443
  %447 = load i32, i32* %19, align 4
  %448 = call i32 @isprint(i32 %447) #3
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %560

450:                                              ; preds = %446
  %451 = load i32, i32* %22, align 4
  %452 = load i32, i32* @MAX_LEN, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %557

454:                                              ; preds = %450
  %455 = load i32*, i32** %25, align 8
  %456 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %457 = call i32 @wattrset(i32* %455, i32 %456)
  %458 = load i32, i32* %23, align 4
  %459 = load i32, i32* %22, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %488

461:                                              ; preds = %454
  %462 = load i32, i32* %22, align 4
  store i32 %462, i32* %12, align 4
  br label %463

463:                                              ; preds = %478, %461
  %464 = load i32, i32* %12, align 4
  %465 = load i32, i32* %23, align 4
  %466 = icmp sgt i32 %464, %465
  br i1 %466, label %467, label %481

467:                                              ; preds = %463
  %468 = load i8*, i8** %24, align 8
  %469 = load i32, i32* %12, align 4
  %470 = sub nsw i32 %469, 1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %468, i64 %471
  %473 = load i8, i8* %472, align 1
  %474 = load i8*, i8** %24, align 8
  %475 = load i32, i32* %12, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* %474, i64 %476
  store i8 %473, i8* %477, align 1
  br label %478

478:                                              ; preds = %467
  %479 = load i32, i32* %12, align 4
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %12, align 4
  br label %463

481:                                              ; preds = %463
  %482 = load i32, i32* %19, align 4
  %483 = trunc i32 %482 to i8
  %484 = load i8*, i8** %24, align 8
  %485 = load i32, i32* %23, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, i8* %484, i64 %486
  store i8 %483, i8* %487, align 1
  br label %495

488:                                              ; preds = %454
  %489 = load i32, i32* %19, align 4
  %490 = trunc i32 %489 to i8
  %491 = load i8*, i8** %24, align 8
  %492 = load i32, i32* %22, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, i8* %491, i64 %493
  store i8 %490, i8* %494, align 1
  br label %495

495:                                              ; preds = %488, %481
  %496 = load i32, i32* %23, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %23, align 4
  %498 = load i32, i32* %22, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %22, align 4
  %500 = load i8*, i8** %24, align 8
  %501 = load i32, i32* %22, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  store i8 0, i8* %503, align 1
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* %17, align 4
  %506 = sub nsw i32 %505, 1
  %507 = icmp eq i32 %504, %506
  br i1 %507, label %508, label %511

508:                                              ; preds = %495
  %509 = load i32, i32* %21, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %21, align 4
  br label %514

511:                                              ; preds = %495
  %512 = load i32, i32* %18, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %18, align 4
  br label %514

514:                                              ; preds = %511, %508
  %515 = load i32*, i32** %25, align 8
  %516 = load i32, i32* %15, align 4
  %517 = load i32, i32* %16, align 4
  %518 = call i32 @wmove(i32* %515, i32 %516, i32 %517)
  store i32 0, i32* %12, align 4
  br label %519

519:                                              ; preds = %545, %514
  %520 = load i32, i32* %12, align 4
  %521 = load i32, i32* %17, align 4
  %522 = icmp slt i32 %520, %521
  br i1 %522, label %523, label %548

523:                                              ; preds = %519
  %524 = load i8*, i8** %24, align 8
  %525 = load i32, i32* %21, align 4
  %526 = load i32, i32* %12, align 4
  %527 = add nsw i32 %525, %526
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8, i8* %524, i64 %528
  %530 = load i8, i8* %529, align 1
  %531 = icmp ne i8 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %523
  %533 = load i32*, i32** %25, align 8
  %534 = call i32 @waddch(i32* %533, i8 signext 32)
  br label %548

535:                                              ; preds = %523
  %536 = load i32*, i32** %25, align 8
  %537 = load i8*, i8** %24, align 8
  %538 = load i32, i32* %21, align 4
  %539 = load i32, i32* %12, align 4
  %540 = add nsw i32 %538, %539
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %537, i64 %541
  %543 = load i8, i8* %542, align 1
  %544 = call i32 @waddch(i32* %536, i8 signext %543)
  br label %545

545:                                              ; preds = %535
  %546 = load i32, i32* %12, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %12, align 4
  br label %519

548:                                              ; preds = %532, %519
  %549 = load i32*, i32** %25, align 8
  %550 = load i32, i32* %15, align 4
  %551 = load i32, i32* %18, align 4
  %552 = load i32, i32* %16, align 4
  %553 = add nsw i32 %551, %552
  %554 = call i32 @wmove(i32* %549, i32 %550, i32 %553)
  %555 = load i32*, i32** %25, align 8
  %556 = call i32 @wrefresh(i32* %555)
  br label %559

557:                                              ; preds = %450
  %558 = call i32 (...) @flash()
  br label %559

559:                                              ; preds = %557, %548
  br label %206

560:                                              ; preds = %446, %443
  br label %561

561:                                              ; preds = %560, %216
  br label %562

562:                                              ; preds = %561, %209
  %563 = load i32, i32* %19, align 4
  switch i32 %563, label %640 [
    i32 79, label %564
    i32 111, label %564
    i32 72, label %567
    i32 104, label %567
    i32 129, label %570
    i32 132, label %570
    i32 128, label %596
    i32 134, label %596
    i32 130, label %596
    i32 32, label %622
    i32 10, label %622
    i32 88, label %632
    i32 120, label %632
    i32 133, label %633
    i32 131, label %636
  ]

564:                                              ; preds = %562, %562
  %565 = load i32*, i32** %25, align 8
  %566 = call i32 @delwin(i32* %565)
  store i32 0, i32* %6, align 4
  br label %644

567:                                              ; preds = %562, %562
  %568 = load i32*, i32** %25, align 8
  %569 = call i32 @delwin(i32* %568)
  store i32 1, i32* %6, align 4
  br label %644

570:                                              ; preds = %562, %562
  %571 = load i32, i32* %20, align 4
  switch i32 %571, label %595 [
    i32 -1, label %572
    i32 0, label %577
    i32 1, label %590
  ]

572:                                              ; preds = %570
  store i32 1, i32* %20, align 4
  %573 = load i32*, i32** %25, align 8
  %574 = load i32, i32* %9, align 4
  %575 = load i32, i32* %10, align 4
  %576 = call i32 @print_buttons(i32* %573, i32 %574, i32 %575, i32 1)
  br label %595

577:                                              ; preds = %570
  store i32 -1, i32* %20, align 4
  %578 = load i32*, i32** %25, align 8
  %579 = load i32, i32* %9, align 4
  %580 = load i32, i32* %10, align 4
  %581 = call i32 @print_buttons(i32* %578, i32 %579, i32 %580, i32 0)
  %582 = load i32*, i32** %25, align 8
  %583 = load i32, i32* %15, align 4
  %584 = load i32, i32* %16, align 4
  %585 = load i32, i32* %18, align 4
  %586 = add nsw i32 %584, %585
  %587 = call i32 @wmove(i32* %582, i32 %583, i32 %586)
  %588 = load i32*, i32** %25, align 8
  %589 = call i32 @wrefresh(i32* %588)
  br label %595

590:                                              ; preds = %570
  store i32 0, i32* %20, align 4
  %591 = load i32*, i32** %25, align 8
  %592 = load i32, i32* %9, align 4
  %593 = load i32, i32* %10, align 4
  %594 = call i32 @print_buttons(i32* %591, i32 %592, i32 %593, i32 0)
  br label %595

595:                                              ; preds = %570, %590, %577, %572
  br label %640

596:                                              ; preds = %562, %562, %562
  %597 = load i32, i32* %20, align 4
  switch i32 %597, label %621 [
    i32 -1, label %598
    i32 0, label %603
    i32 1, label %608
  ]

598:                                              ; preds = %596
  store i32 0, i32* %20, align 4
  %599 = load i32*, i32** %25, align 8
  %600 = load i32, i32* %9, align 4
  %601 = load i32, i32* %10, align 4
  %602 = call i32 @print_buttons(i32* %599, i32 %600, i32 %601, i32 0)
  br label %621

603:                                              ; preds = %596
  store i32 1, i32* %20, align 4
  %604 = load i32*, i32** %25, align 8
  %605 = load i32, i32* %9, align 4
  %606 = load i32, i32* %10, align 4
  %607 = call i32 @print_buttons(i32* %604, i32 %605, i32 %606, i32 1)
  br label %621

608:                                              ; preds = %596
  store i32 -1, i32* %20, align 4
  %609 = load i32*, i32** %25, align 8
  %610 = load i32, i32* %9, align 4
  %611 = load i32, i32* %10, align 4
  %612 = call i32 @print_buttons(i32* %609, i32 %610, i32 %611, i32 0)
  %613 = load i32*, i32** %25, align 8
  %614 = load i32, i32* %15, align 4
  %615 = load i32, i32* %16, align 4
  %616 = load i32, i32* %18, align 4
  %617 = add nsw i32 %615, %616
  %618 = call i32 @wmove(i32* %613, i32 %614, i32 %617)
  %619 = load i32*, i32** %25, align 8
  %620 = call i32 @wrefresh(i32* %619)
  br label %621

621:                                              ; preds = %596, %608, %603, %598
  br label %640

622:                                              ; preds = %562, %562
  %623 = load i32*, i32** %25, align 8
  %624 = call i32 @delwin(i32* %623)
  %625 = load i32, i32* %20, align 4
  %626 = icmp eq i32 %625, -1
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  br label %630

628:                                              ; preds = %622
  %629 = load i32, i32* %20, align 4
  br label %630

630:                                              ; preds = %628, %627
  %631 = phi i32 [ 0, %627 ], [ %629, %628 ]
  store i32 %631, i32* %6, align 4
  br label %644

632:                                              ; preds = %562, %562
  store i32 133, i32* %19, align 4
  br label %640

633:                                              ; preds = %562
  %634 = load i32*, i32** %25, align 8
  %635 = call i32 @on_key_esc(i32* %634)
  store i32 %635, i32* %19, align 4
  br label %640

636:                                              ; preds = %562
  %637 = load i32*, i32** %25, align 8
  %638 = call i32 @delwin(i32* %637)
  %639 = call i32 (...) @on_key_resize()
  br label %37

640:                                              ; preds = %562, %633, %632, %621, %595
  br label %206

641:                                              ; preds = %206
  %642 = load i32*, i32** %25, align 8
  %643 = call i32 @delwin(i32* %642)
  store i32 133, i32* %6, align 4
  br label %644

644:                                              ; preds = %641, %630, %567, %564, %54, %44
  %645 = load i32, i32* %6, align 4
  ret i32 %645
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @draw_shadow(i32, i32, i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @draw_box(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @print_title(i32*, i8*, i32) #1

declare dso_local i32 @print_autowrap(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @print_buttons(i32*, i32, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @wgetch(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @flash(...) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @on_key_esc(i32*) #1

declare dso_local i32 @on_key_resize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
