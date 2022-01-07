; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_settings.c_ghb_update_widget.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_settings.c_ghb_update_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GHB_ARRAY = common dso_local global i64 0, align 8
@GHB_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GTK_TYPE_ENTRY = common dso_local global i64 0, align 8
@GTK_TYPE_RADIO_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_CHECK_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_TOGGLE_TOOL_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_TOGGLE_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_CHECK_MENU_ITEM = common dso_local global i64 0, align 8
@GTK_TYPE_COMBO_BOX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@GTK_TYPE_SPIN_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_SCALE = common dso_local global i64 0, align 8
@GTK_TYPE_SCALE_BUTTON = common dso_local global i64 0, align 8
@GTK_TYPE_TEXT_VIEW = common dso_local global i64 0, align 8
@ghb_update_widget.text_view_busy = internal global i32 0, align 4
@GTK_TYPE_LABEL = common dso_local global i64 0, align 8
@GTK_TYPE_FILE_CHOOSER_BUTTON = common dso_local global i64 0, align 8
@GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER = common dso_local global i64 0, align 8
@GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER = common dso_local global i64 0, align 8
@GTK_FILE_CHOOSER_ACTION_SAVE = common dso_local global i64 0, align 8
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Attempt to set unknown widget type, name %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_update_widget(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @ghb_get_setting_key(i32* %20)
  store i8* %21, i8** %10, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @ghb_value_type(i32* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @GHB_ARRAY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @GHB_DICT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %2
  br label %345

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %345

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = call i64* @ghb_value_get_string_xform(i32* %37)
  store i64* %38, i64** %7, align 8
  store i64* %38, i64** %6, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ghb_value_get_int(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @ghb_value_get_double(i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @G_OBJECT_TYPE(i32* %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i64* bitcast ([1 x i8]* @.str to i64*), i64** %6, align 8
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @GTK_TYPE_ENTRY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = call i32 @ghb_editable_set_text(i32* %53, i64* %54)
  br label %342

56:                                               ; preds = %48
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @GTK_TYPE_RADIO_BUTTON, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @GTK_TOGGLE_BUTTON(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @gtk_toggle_button_set_active(i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %63, %60
  br label %341

73:                                               ; preds = %56
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @GTK_TYPE_CHECK_BUTTON, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @GTK_TOGGLE_BUTTON(i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @gtk_toggle_button_set_active(i32 %79, i32 %80)
  br label %340

82:                                               ; preds = %73
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @GTK_TYPE_TOGGLE_TOOL_BUTTON, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @GTK_TOGGLE_TOOL_BUTTON(i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @gtk_toggle_tool_button_set_active(i32 %88, i32 %89)
  br label %339

91:                                               ; preds = %82
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @GTK_TYPE_TOGGLE_BUTTON, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @GTK_TOGGLE_BUTTON(i32* %96)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @gtk_toggle_button_set_active(i32 %97, i32 %98)
  br label %338

100:                                              ; preds = %91
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @GTK_TYPE_CHECK_MENU_ITEM, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @GTK_CHECK_MENU_ITEM(i32* %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @gtk_check_menu_item_set_active(i32 %106, i32 %107)
  br label %337

109:                                              ; preds = %100
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @GTK_TYPE_COMBO_BOX, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %204

113:                                              ; preds = %109
  %114 = load i64, i64* @FALSE, align 8
  store i64 %114, i64* %15, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @GTK_COMBO_BOX(i32* %115)
  %117 = call i32* @gtk_combo_box_get_model(i32 %116)
  store i32* %117, i32** %11, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i64 @gtk_tree_model_get_iter_first(i32* %118, i32* %12)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 (i32*, i32*, i32, ...) @gtk_tree_model_get(i32* %123, i32* %12, i32 2, i64** %13, i32 -1)
  %125 = load i64*, i64** %13, align 8
  %126 = load i64*, i64** %6, align 8
  %127 = call i64 @strcasecmp(i64* %125, i64* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @GTK_COMBO_BOX(i32* %130)
  %132 = call i32 @gtk_combo_box_set_active_iter(i32 %131, i32* %12)
  %133 = load i64*, i64** %13, align 8
  %134 = call i32 @g_free(i64* %133)
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %15, align 8
  br label %143

136:                                              ; preds = %122
  %137 = load i64*, i64** %13, align 8
  %138 = call i32 @g_free(i64* %137)
  br label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %11, align 8
  %141 = call i64 @gtk_tree_model_iter_next(i32* %140, i32* %12)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %122, label %143

143:                                              ; preds = %139, %129
  br label %144

144:                                              ; preds = %143, %113
  %145 = load i64, i64* %15, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %174, label %147

147:                                              ; preds = %144
  %148 = load i32*, i32** %11, align 8
  %149 = call i64 @gtk_tree_model_get_iter_first(i32* %148, i32* %12)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 (i32*, i32*, i32, ...) @gtk_tree_model_get(i32* %153, i32* %12, i32 3, i64* %14, i32 -1)
  %155 = load i64, i64* %14, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159, %152
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @GTK_COMBO_BOX(i32* %164)
  %166 = call i32 @gtk_combo_box_set_active_iter(i32 %165, i32* %12)
  %167 = load i64, i64* @TRUE, align 8
  store i64 %167, i64* %15, align 8
  br label %173

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168
  %170 = load i32*, i32** %11, align 8
  %171 = call i64 @gtk_tree_model_iter_next(i32* %170, i32* %12)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %152, label %173

173:                                              ; preds = %169, %163
  br label %174

174:                                              ; preds = %173, %147, %144
  %175 = load i64, i64* %15, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %203, label %177

177:                                              ; preds = %174
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @GTK_COMBO_BOX(i32* %178)
  %180 = call i64 @gtk_combo_box_get_has_entry(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %177
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @GTK_BIN(i32* %183)
  %185 = call i32 @gtk_bin_get_child(i32 %184)
  %186 = call i32* @GTK_ENTRY(i32 %185)
  store i32* %186, i32** %16, align 8
  %187 = load i32*, i32** %16, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32*, i32** %16, align 8
  %191 = load i64*, i64** %6, align 8
  %192 = call i32 @ghb_editable_set_text(i32* %190, i64* %191)
  br label %197

193:                                              ; preds = %182
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @GTK_COMBO_BOX(i32* %194)
  %196 = call i32 @gtk_combo_box_set_active(i32 %195, i32 0)
  br label %197

197:                                              ; preds = %193, %189
  br label %202

198:                                              ; preds = %177
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @GTK_COMBO_BOX(i32* %199)
  %201 = call i32 @gtk_combo_box_set_active(i32 %200, i32 0)
  br label %202

202:                                              ; preds = %198, %197
  br label %203

203:                                              ; preds = %202, %174
  br label %336

204:                                              ; preds = %109
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* @GTK_TYPE_SPIN_BUTTON, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @GTK_SPIN_BUTTON(i32* %209)
  %211 = load i64, i64* %9, align 8
  %212 = call i32 @gtk_spin_button_set_value(i32 %210, i64 %211)
  br label %335

213:                                              ; preds = %204
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* @GTK_TYPE_SCALE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @GTK_RANGE(i32* %218)
  %220 = load i64, i64* %9, align 8
  %221 = call i32 @gtk_range_set_value(i32 %219, i64 %220)
  br label %334

222:                                              ; preds = %213
  %223 = load i64, i64* %5, align 8
  %224 = load i64, i64* @GTK_TYPE_SCALE_BUTTON, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @GTK_SCALE_BUTTON(i32* %227)
  %229 = load i64, i64* %9, align 8
  %230 = call i32 @gtk_scale_button_set_value(i32 %228, i64 %229)
  br label %333

231:                                              ; preds = %222
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* @GTK_TYPE_TEXT_VIEW, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %231
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @GTK_TEXT_VIEW(i32* %236)
  %238 = call i32* @gtk_text_view_get_buffer(i32 %237)
  store i32* %238, i32** %17, align 8
  %239 = load i32, i32* @ghb_update_widget.text_view_busy, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %235
  store i32 1, i32* @ghb_update_widget.text_view_busy, align 4
  %242 = load i32*, i32** %17, align 8
  %243 = load i64*, i64** %6, align 8
  %244 = call i32 @gtk_text_buffer_set_text(i32* %242, i64* %243, i32 -1)
  store i32 0, i32* @ghb_update_widget.text_view_busy, align 4
  br label %245

245:                                              ; preds = %241, %235
  br label %332

246:                                              ; preds = %231
  %247 = load i64, i64* %5, align 8
  %248 = load i64, i64* @GTK_TYPE_LABEL, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @GTK_LABEL(i32* %251)
  %253 = load i64*, i64** %6, align 8
  %254 = call i32 @gtk_label_set_markup(i32 %252, i64* %253)
  br label %331

255:                                              ; preds = %246
  %256 = load i64, i64* %5, align 8
  %257 = load i64, i64* @GTK_TYPE_FILE_CHOOSER_BUTTON, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %327

259:                                              ; preds = %255
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 @GTK_FILE_CHOOSER(i32* %260)
  %262 = call i64 @gtk_file_chooser_get_action(i32 %261)
  store i64 %262, i64* %18, align 8
  %263 = load i64*, i64** %6, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %326

268:                                              ; preds = %259
  %269 = load i64, i64* %18, align 8
  %270 = load i64, i64* @GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i64, i64* %18, align 8
  %274 = load i64, i64* @GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %272, %268
  %277 = load i32*, i32** %3, align 8
  %278 = call i32 @GTK_FILE_CHOOSER(i32* %277)
  %279 = load i64*, i64** %6, align 8
  %280 = call i32 @gtk_file_chooser_set_filename(i32 %278, i64* %279)
  br label %325

281:                                              ; preds = %272
  %282 = load i64, i64* %18, align 8
  %283 = load i64, i64* @GTK_FILE_CHOOSER_ACTION_SAVE, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  %286 = load i32*, i32** %3, align 8
  %287 = call i32 @GTK_FILE_CHOOSER(i32* %286)
  %288 = load i64*, i64** %6, align 8
  %289 = call i32 @gtk_file_chooser_set_filename(i32 %287, i64* %288)
  br label %324

290:                                              ; preds = %281
  %291 = load i64*, i64** %6, align 8
  %292 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %293 = call i64 @g_file_test(i64* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @GTK_FILE_CHOOSER(i32* %296)
  %298 = load i64*, i64** %6, align 8
  %299 = call i32 @gtk_file_chooser_set_current_folder(i32 %297, i64* %298)
  br label %323

300:                                              ; preds = %290
  %301 = load i64*, i64** %6, align 8
  %302 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %303 = call i64 @g_file_test(i64* %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load i32*, i32** %3, align 8
  %307 = call i32 @GTK_FILE_CHOOSER(i32* %306)
  %308 = load i64*, i64** %6, align 8
  %309 = call i32 @gtk_file_chooser_set_filename(i32 %307, i64* %308)
  br label %322

310:                                              ; preds = %300
  %311 = load i64*, i64** %6, align 8
  %312 = call i64* @g_path_get_dirname(i64* %311)
  store i64* %312, i64** %19, align 8
  %313 = load i32*, i32** %3, align 8
  %314 = call i32 @GTK_FILE_CHOOSER(i32* %313)
  %315 = load i64*, i64** %19, align 8
  %316 = call i32 @gtk_file_chooser_set_current_folder(i32 %314, i64* %315)
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 @GTK_FILE_CHOOSER(i32* %317)
  %319 = call i32 @gtk_file_chooser_unselect_all(i32 %318)
  %320 = load i64*, i64** %19, align 8
  %321 = call i32 @g_free(i64* %320)
  br label %322

322:                                              ; preds = %310, %305
  br label %323

323:                                              ; preds = %322, %295
  br label %324

324:                                              ; preds = %323, %285
  br label %325

325:                                              ; preds = %324, %276
  br label %326

326:                                              ; preds = %325, %267
  br label %330

327:                                              ; preds = %255
  %328 = load i8*, i8** %10, align 8
  %329 = call i32 @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %328)
  br label %330

330:                                              ; preds = %327, %326
  br label %331

331:                                              ; preds = %330, %250
  br label %332

332:                                              ; preds = %331, %245
  br label %333

333:                                              ; preds = %332, %226
  br label %334

334:                                              ; preds = %333, %217
  br label %335

335:                                              ; preds = %334, %208
  br label %336

336:                                              ; preds = %335, %203
  br label %337

337:                                              ; preds = %336, %104
  br label %338

338:                                              ; preds = %337, %95
  br label %339

339:                                              ; preds = %338, %86
  br label %340

340:                                              ; preds = %339, %77
  br label %341

341:                                              ; preds = %340, %72
  br label %342

342:                                              ; preds = %341, %52
  %343 = load i64*, i64** %7, align 8
  %344 = call i32 @g_free(i64* %343)
  br label %345

345:                                              ; preds = %342, %35, %31
  ret void
}

declare dso_local i8* @ghb_get_setting_key(i32*) #1

declare dso_local i64 @ghb_value_type(i32*) #1

declare dso_local i64* @ghb_value_get_string_xform(i32*) #1

declare dso_local i32 @ghb_value_get_int(i32*) #1

declare dso_local i64 @ghb_value_get_double(i32*) #1

declare dso_local i64 @G_OBJECT_TYPE(i32*) #1

declare dso_local i32 @ghb_editable_set_text(i32*, i64*) #1

declare dso_local i32 @gtk_toggle_button_set_active(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_BUTTON(i32*) #1

declare dso_local i32 @gtk_toggle_tool_button_set_active(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_TOOL_BUTTON(i32*) #1

declare dso_local i32 @gtk_check_menu_item_set_active(i32, i32) #1

declare dso_local i32 @GTK_CHECK_MENU_ITEM(i32*) #1

declare dso_local i32* @gtk_combo_box_get_model(i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter_first(i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, ...) #1

declare dso_local i64 @strcasecmp(i64*, i64*) #1

declare dso_local i32 @gtk_combo_box_set_active_iter(i32, i32*) #1

declare dso_local i32 @g_free(i64*) #1

declare dso_local i64 @gtk_tree_model_iter_next(i32*, i32*) #1

declare dso_local i64 @gtk_combo_box_get_has_entry(i32) #1

declare dso_local i32* @GTK_ENTRY(i32) #1

declare dso_local i32 @gtk_bin_get_child(i32) #1

declare dso_local i32 @GTK_BIN(i32*) #1

declare dso_local i32 @gtk_combo_box_set_active(i32, i32) #1

declare dso_local i32 @gtk_spin_button_set_value(i32, i64) #1

declare dso_local i32 @GTK_SPIN_BUTTON(i32*) #1

declare dso_local i32 @gtk_range_set_value(i32, i64) #1

declare dso_local i32 @GTK_RANGE(i32*) #1

declare dso_local i32 @gtk_scale_button_set_value(i32, i64) #1

declare dso_local i32 @GTK_SCALE_BUTTON(i32*) #1

declare dso_local i32* @gtk_text_view_get_buffer(i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(i32*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32*, i64*, i32) #1

declare dso_local i32 @gtk_label_set_markup(i32, i64*) #1

declare dso_local i32 @GTK_LABEL(i32*) #1

declare dso_local i64 @gtk_file_chooser_get_action(i32) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32 @gtk_file_chooser_set_filename(i32, i64*) #1

declare dso_local i64 @g_file_test(i64*, i32) #1

declare dso_local i32 @gtk_file_chooser_set_current_folder(i32, i64*) #1

declare dso_local i64* @g_path_get_dirname(i64*) #1

declare dso_local i32 @gtk_file_chooser_unselect_all(i32) #1

declare dso_local i32 @g_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
