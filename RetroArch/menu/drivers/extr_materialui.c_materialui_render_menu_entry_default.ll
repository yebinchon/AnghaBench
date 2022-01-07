; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_default.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, float, float, i32, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_21__, %struct.TYPE_20__, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { float, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i8*, i64, i8* }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_23__ = type { i64* }
%struct.TYPE_28__ = type { i32, i32, i64, float }
%struct.TYPE_27__ = type { i32 }

@MUI_ENTRY_VALUE_NONE = common dso_local global i32 0, align 4
@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_ITEM = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL = common dso_local global i32 0, align 4
@MUI_TEXTURE_ARCHIVE = common dso_local global i64 0, align 8
@MUI_TEXTURE_IMAGE = common dso_local global i64 0, align 8
@MENU_SUBLABEL_MAX_LENGTH = common dso_local global i32 0, align 4
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@TEXT_ALIGN_RIGHT = common dso_local global i32 0, align 4
@MUI_TEXTURE_CHECKMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32, i32, i32, i32, i32)* @materialui_render_menu_entry_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_menu_entry_default(%struct.TYPE_29__* %0, i32* %1, %struct.TYPE_28__* %2, %struct.TYPE_27__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [255 x i8], align 16
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca [255 x i8], align 16
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  %45 = load i32, i32* @MUI_ENTRY_VALUE_NONE, align 4
  store i32 %45, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %46 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %46, i32* %27, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %51, %54
  store i32 %55, i32* %28, align 4
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %29, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sub nsw i32 %63, %67
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 2
  %73 = sub nsw i32 %68, %72
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 12
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = sub nsw i32 %73, %77
  store i32 %78, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i64 0, i64* %33, align 8
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %34, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %10
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %104

99:                                               ; preds = %10
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %86
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %106 = call i32 @menu_entry_get_rich_label(%struct.TYPE_27__* %105, i8** %22)
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %108 = call i32 @menu_entry_get_value(%struct.TYPE_27__* %107, i8** %21)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %110 = call i32 @menu_entry_get_sublabel(%struct.TYPE_27__* %109, i8** %23)
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %112 = call i32 @menu_entry_get_type_new(%struct.TYPE_27__* %111)
  store i32 %112, i32* %24, align 4
  %113 = load i8*, i8** %21, align 8
  %114 = call i32 @msg_hash_calculate(i8* %113)
  %115 = call i32 @msg_hash_to_file_type(i32 %114)
  store i32 %115, i32* %27, align 4
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %117 = load i8*, i8** %21, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %27, align 4
  %123 = call i32 @materialui_get_entry_value_type(%struct.TYPE_29__* %116, i8* %117, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %25, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %104
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* @MENU_SETTING_DROPDOWN_ITEM, align 4
  %136 = icmp uge i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* @MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL, align 4
  %140 = icmp ule i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  br label %154

144:                                              ; preds = %137, %133, %128
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 13
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %33, align 8
  br label %154

154:                                              ; preds = %144, %141
  br label %175

155:                                              ; preds = %104
  %156 = load i32, i32* %27, align 4
  switch i32 %156, label %173 [
    i32 133, label %157
    i32 132, label %165
  ]

157:                                              ; preds = %155
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 13
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @MUI_TEXTURE_ARCHIVE, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %33, align 8
  br label %174

165:                                              ; preds = %155
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 13
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @MUI_TEXTURE_IMAGE, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %33, align 8
  br label %174

173:                                              ; preds = %155
  br label %174

174:                                              ; preds = %173, %165, %157
  br label %175

175:                                              ; preds = %174, %154
  %176 = load i64, i64* %33, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %223

178:                                              ; preds = %175
  %179 = load i32*, i32** %12, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 3
  %182 = load float, float* %181, align 4
  %183 = load i64, i64* %33, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %184, %187
  %189 = load i32, i32* %28, align 4
  %190 = sitofp i32 %189 to float
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 3
  %193 = load float, float* %192, align 8
  %194 = fdiv float %193, 2.000000e+00
  %195 = fadd float %190, %194
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  %198 = load float, float* %197, align 4
  %199 = fdiv float %198, 2.000000e+00
  %200 = fsub float %195, %199
  %201 = fptosi float %200 to i32
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @materialui_draw_icon(i32* %179, float %182, i64 %183, i32 %188, i32 %201, i32 %202, i32 %203, i32 0, i32 1, i32 %207)
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 3
  %211 = load float, float* %210, align 4
  %212 = load i32, i32* %29, align 4
  %213 = sitofp i32 %212 to float
  %214 = fadd float %213, %211
  %215 = fptosi float %214 to i32
  store i32 %215, i32* %29, align 4
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 3
  %218 = load float, float* %217, align 4
  %219 = load i32, i32* %30, align 4
  %220 = sitofp i32 %219 to float
  %221 = fsub float %220, %218
  %222 = fptosi float %221 to i32
  store i32 %222, i32* %30, align 4
  br label %223

223:                                              ; preds = %178, %175
  %224 = load i8*, i8** %23, align 8
  %225 = call i32 @string_is_empty(i8* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %314, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %28, align 4
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 4
  %231 = load float, float* %230, align 8
  %232 = fdiv float %231, 5.000000e+00
  %233 = fptosi float %232 to i32
  %234 = add nsw i32 %228, %233
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load float, float* %238, align 4
  %240 = fptosi float %239 to i32
  %241 = add nsw i32 %234, %240
  store i32 %241, i32* %35, align 4
  %242 = load i32, i32* @MENU_SUBLABEL_MAX_LENGTH, align 4
  %243 = zext i32 %242 to i64
  %244 = call i8* @llvm.stacksave()
  store i8* %244, i8** %36, align 8
  %245 = alloca i8, i64 %243, align 16
  store i64 %243, i64* %37, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  store i8 0, i8* %246, align 16
  %247 = load i8*, i8** %23, align 8
  %248 = load i32, i32* %30, align 4
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sdiv i32 %248, %253
  %255 = call i32 @word_wrap(i8* %245, i8* %247, i32 %254, i32 1, i32 0)
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %29, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %35, align 4
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %227
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269, %227
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  br label %282

277:                                              ; preds = %269
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  br label %282

282:                                              ; preds = %277, %272
  %283 = phi i32 [ %276, %272 ], [ %281, %277 ]
  %284 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %285 = load i32, i32* %34, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* %35, align 4
  %289 = icmp slt i32 %288, 0
  br label %290

290:                                              ; preds = %287, %282
  %291 = phi i1 [ true, %282 ], [ %289, %287 ]
  %292 = zext i1 %291 to i32
  %293 = call i32 @menu_display_draw_text(i32 %260, i8* %245, i32 %263, i32 %264, i32 %265, i32 %266, i32 %283, i32 %284, float 1.000000e+00, i32 0, i32 0, i32 %292)
  %294 = load i32, i32* %28, align 4
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 4
  %297 = load float, float* %296, align 8
  %298 = fdiv float %297, 5.000000e+00
  %299 = fptosi float %298 to i32
  %300 = add nsw i32 %294, %299
  store i32 %300, i32* %31, align 4
  %301 = load i32, i32* %28, align 4
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 4
  %304 = load float, float* %303, align 8
  %305 = fdiv float %304, 6.000000e+00
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 3
  %308 = load float, float* %307, align 4
  %309 = fdiv float %308, 2.000000e+00
  %310 = fsub float %305, %309
  %311 = fptosi float %310 to i32
  %312 = add nsw i32 %301, %311
  store i32 %312, i32* %32, align 4
  %313 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %313)
  br label %341

314:                                              ; preds = %223
  %315 = load i32, i32* %28, align 4
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 0, i32 3
  %318 = load float, float* %317, align 8
  %319 = fdiv float %318, 2.000000e+00
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 0
  %324 = load float, float* %323, align 4
  %325 = fdiv float %324, 5.000000e+00
  %326 = fadd float %319, %325
  %327 = fptosi float %326 to i32
  %328 = add nsw i32 %315, %327
  store i32 %328, i32* %31, align 4
  %329 = load i32, i32* %28, align 4
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 3
  %332 = load float, float* %331, align 8
  %333 = fdiv float %332, 2.000000e+00
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 3
  %336 = load float, float* %335, align 4
  %337 = fdiv float %336, 2.000000e+00
  %338 = fsub float %333, %337
  %339 = fptosi float %338 to i32
  %340 = add nsw i32 %329, %339
  store i32 %340, i32* %32, align 4
  br label %341

341:                                              ; preds = %314, %290
  %342 = load i32, i32* %25, align 4
  switch i32 %342, label %572 [
    i32 128, label %343
    i32 129, label %493
    i32 130, label %505
    i32 131, label %517
  ]

343:                                              ; preds = %341
  store i32 0, i32* %38, align 4
  %344 = load i32, i32* %30, align 4
  %345 = sdiv i32 %344, 2
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %345, %348
  store i32 %349, i32* %39, align 4
  %350 = getelementptr inbounds [255 x i8], [255 x i8]* %40, i64 0, i64 0
  store i8 0, i8* %350, align 16
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 11
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %391

355:                                              ; preds = %343
  %356 = load i32, i32* %39, align 4
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 10
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 1
  store i32 %356, i32* %359, align 4
  %360 = load i8*, i8** %21, align 8
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 10
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  store i8* %360, i8** %363, align 8
  %364 = getelementptr inbounds [255 x i8], [255 x i8]* %40, i64 0, i64 0
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 10
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 3
  store i8* %364, i8** %367, align 8
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 10
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 4
  store i32 255, i32* %370, align 8
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i32 0, i32 10
  %373 = call i32 @menu_animation_ticker_smooth(%struct.TYPE_20__* %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %355
  %376 = load i32, i32* %39, align 4
  store i32 %376, i32* %26, align 4
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = add i32 %379, %382
  %384 = load i32, i32* %39, align 4
  %385 = sub nsw i32 %383, %384
  store i32 %385, i32* %38, align 4
  br label %390

386:                                              ; preds = %355
  %387 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 8
  store i32 %389, i32* %26, align 4
  br label %390

390:                                              ; preds = %386, %375
  br label %445

391:                                              ; preds = %343
  %392 = load i8*, i8** %21, align 8
  %393 = call i64 @utf8len(i8* %392)
  store i64 %393, i64* %41, align 8
  %394 = load i32, i32* %39, align 4
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = udiv i32 %394, %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %42, align 8
  %402 = load i64, i64* %42, align 8
  %403 = icmp ugt i64 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %391
  %405 = load i64, i64* %42, align 8
  %406 = sub i64 %405, 1
  br label %409

407:                                              ; preds = %391
  %408 = load i64, i64* %42, align 8
  br label %409

409:                                              ; preds = %407, %404
  %410 = phi i64 [ %406, %404 ], [ %408, %407 ]
  store i64 %410, i64* %42, align 8
  %411 = load i64, i64* %41, align 8
  %412 = load i64, i64* %42, align 8
  %413 = icmp ugt i64 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = load i64, i64* %42, align 8
  br label %418

416:                                              ; preds = %409
  %417 = load i64, i64* %41, align 8
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i64 [ %415, %414 ], [ %417, %416 ]
  store i64 %419, i64* %41, align 8
  %420 = getelementptr inbounds [255 x i8], [255 x i8]* %40, i64 0, i64 0
  %421 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %421, i32 0, i32 9
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 1
  store i8* %420, i8** %423, align 8
  %424 = load i64, i64* %41, align 8
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 9
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 2
  store i64 %424, i64* %427, align 8
  %428 = load i8*, i8** %21, align 8
  %429 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %429, i32 0, i32 9
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 3
  store i8* %428, i8** %431, align 8
  %432 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %433 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %432, i32 0, i32 9
  %434 = call i32 @menu_animation_ticker(%struct.TYPE_21__* %433)
  %435 = load i64, i64* %41, align 8
  %436 = add i64 %435, 1
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  %443 = mul i64 %436, %442
  %444 = trunc i64 %443 to i32
  store i32 %444, i32* %26, align 4
  br label %445

445:                                              ; preds = %418, %390
  %446 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = getelementptr inbounds [255 x i8], [255 x i8]* %40, i64 0, i64 0
  %452 = load i32, i32* %20, align 4
  %453 = load i32, i32* %38, align 4
  %454 = add nsw i32 %452, %453
  %455 = load i32, i32* %18, align 4
  %456 = add nsw i32 %454, %455
  %457 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = sub nsw i32 %456, %459
  %461 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %462 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = sub nsw i32 %460, %463
  %465 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %466 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %465, i32 0, i32 12
  %467 = load i64, i64* %466, align 8
  %468 = trunc i64 %467 to i32
  %469 = sub nsw i32 %464, %468
  %470 = load i32, i32* %31, align 4
  %471 = load i32, i32* %18, align 4
  %472 = load i32, i32* %19, align 4
  %473 = load i32, i32* %15, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %445
  %476 = load i32, i32* %16, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %475, %445
  %479 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %479, i32 0, i32 7
  %481 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  br label %488

483:                                              ; preds = %475
  %484 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %484, i32 0, i32 7
  %486 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  br label %488

488:                                              ; preds = %483, %478
  %489 = phi i32 [ %482, %478 ], [ %487, %483 ]
  %490 = load i32, i32* @TEXT_ALIGN_RIGHT, align 4
  %491 = load i32, i32* %34, align 4
  %492 = call i32 @menu_display_draw_text(i32 %450, i8* %451, i32 %469, i32 %470, i32 %471, i32 %472, i32 %489, i32 %490, float 1.000000e+00, i32 0, i32 0, i32 %491)
  br label %573

493:                                              ; preds = %341
  %494 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %495 = load i32*, i32** %12, align 8
  %496 = load i32, i32* %32, align 4
  %497 = load i32, i32* %18, align 4
  %498 = load i32, i32* %19, align 4
  %499 = load i32, i32* %20, align 4
  %500 = call i32 @materialui_render_switch_icon(%struct.TYPE_29__* %494, i32* %495, i32 %496, i32 %497, i32 %498, i32 %499, i32 1)
  %501 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %502 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %501, i32 0, i32 3
  %503 = load float, float* %502, align 4
  %504 = fptoui float %503 to i32
  store i32 %504, i32* %26, align 4
  br label %573

505:                                              ; preds = %341
  %506 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %507 = load i32*, i32** %12, align 8
  %508 = load i32, i32* %32, align 4
  %509 = load i32, i32* %18, align 4
  %510 = load i32, i32* %19, align 4
  %511 = load i32, i32* %20, align 4
  %512 = call i32 @materialui_render_switch_icon(%struct.TYPE_29__* %506, i32* %507, i32 %508, i32 %509, i32 %510, i32 %511, i32 0)
  %513 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %514 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %513, i32 0, i32 3
  %515 = load float, float* %514, align 4
  %516 = fptoui float %515 to i32
  store i32 %516, i32* %26, align 4
  br label %573

517:                                              ; preds = %341
  %518 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %519 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %518, i32 0, i32 13
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %519, i32 0, i32 0
  %521 = load i64*, i64** %520, align 8
  %522 = load i64, i64* @MUI_TEXTURE_CHECKMARK, align 8
  %523 = getelementptr inbounds i64, i64* %521, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %567

526:                                              ; preds = %517
  %527 = load i32*, i32** %12, align 8
  %528 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %529 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %528, i32 0, i32 3
  %530 = load float, float* %529, align 4
  %531 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %532 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %531, i32 0, i32 13
  %533 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %532, i32 0, i32 0
  %534 = load i64*, i64** %533, align 8
  %535 = load i64, i64* @MUI_TEXTURE_CHECKMARK, align 8
  %536 = getelementptr inbounds i64, i64* %534, i64 %535
  %537 = load i64, i64* %536, align 8
  %538 = load i32, i32* %20, align 4
  %539 = load i32, i32* %18, align 4
  %540 = add nsw i32 %538, %539
  %541 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %542 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 %540, %543
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = sub nsw i32 %544, %547
  %549 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %550 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %549, i32 0, i32 12
  %551 = load i64, i64* %550, align 8
  %552 = trunc i64 %551 to i32
  %553 = sub nsw i32 %548, %552
  %554 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %555 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %554, i32 0, i32 3
  %556 = load float, float* %555, align 4
  %557 = fptosi float %556 to i32
  %558 = sub nsw i32 %553, %557
  %559 = load i32, i32* %32, align 4
  %560 = load i32, i32* %18, align 4
  %561 = load i32, i32* %19, align 4
  %562 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %563 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %562, i32 0, i32 7
  %564 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @materialui_draw_icon(i32* %527, float %530, i64 %537, i32 %558, i32 %559, i32 %560, i32 %561, i32 0, i32 1, i32 %565)
  br label %567

567:                                              ; preds = %526, %517
  %568 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %569 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %568, i32 0, i32 3
  %570 = load float, float* %569, align 4
  %571 = fptoui float %570 to i32
  store i32 %571, i32* %26, align 4
  br label %573

572:                                              ; preds = %341
  store i32 0, i32* %26, align 4
  br label %573

573:                                              ; preds = %572, %567, %505, %493, %488
  %574 = load i8*, i8** %22, align 8
  %575 = call i32 @string_is_empty(i8* %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %681, label %577

577:                                              ; preds = %573
  %578 = load i32, i32* %30, align 4
  store i32 %578, i32* %43, align 4
  %579 = getelementptr inbounds [255 x i8], [255 x i8]* %44, i64 0, i64 0
  store i8 0, i8* %579, align 16
  %580 = load i32, i32* %26, align 4
  %581 = icmp ugt i32 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %577
  %583 = load i32, i32* %43, align 4
  %584 = load i32, i32* %26, align 4
  %585 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %586 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = add i32 %584, %587
  %589 = sub nsw i32 %583, %588
  br label %592

590:                                              ; preds = %577
  %591 = load i32, i32* %43, align 4
  br label %592

592:                                              ; preds = %590, %582
  %593 = phi i32 [ %589, %582 ], [ %591, %590 ]
  store i32 %593, i32* %43, align 4
  %594 = load i32, i32* %43, align 4
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %680

596:                                              ; preds = %592
  %597 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %598 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %597, i32 0, i32 11
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %620

601:                                              ; preds = %596
  %602 = load i32, i32* %43, align 4
  %603 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %604 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %603, i32 0, i32 10
  %605 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %604, i32 0, i32 1
  store i32 %602, i32* %605, align 4
  %606 = load i8*, i8** %22, align 8
  %607 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %608 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %607, i32 0, i32 10
  %609 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %608, i32 0, i32 2
  store i8* %606, i8** %609, align 8
  %610 = getelementptr inbounds [255 x i8], [255 x i8]* %44, i64 0, i64 0
  %611 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %612 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %611, i32 0, i32 10
  %613 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %612, i32 0, i32 3
  store i8* %610, i8** %613, align 8
  %614 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %615 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %614, i32 0, i32 10
  %616 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %615, i32 0, i32 4
  store i32 255, i32* %616, align 8
  %617 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %618 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %617, i32 0, i32 10
  %619 = call i32 @menu_animation_ticker_smooth(%struct.TYPE_20__* %618)
  br label %643

620:                                              ; preds = %596
  %621 = getelementptr inbounds [255 x i8], [255 x i8]* %44, i64 0, i64 0
  %622 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %623 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %622, i32 0, i32 9
  %624 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %623, i32 0, i32 1
  store i8* %621, i8** %624, align 8
  %625 = load i32, i32* %43, align 4
  %626 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %627 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %626, i32 0, i32 8
  %628 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = udiv i32 %625, %630
  %632 = zext i32 %631 to i64
  %633 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %634 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %633, i32 0, i32 9
  %635 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %634, i32 0, i32 2
  store i64 %632, i64* %635, align 8
  %636 = load i8*, i8** %22, align 8
  %637 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %638 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %637, i32 0, i32 9
  %639 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %638, i32 0, i32 3
  store i8* %636, i8** %639, align 8
  %640 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %641 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %640, i32 0, i32 9
  %642 = call i32 @menu_animation_ticker(%struct.TYPE_21__* %641)
  br label %643

643:                                              ; preds = %620, %601
  %644 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %645 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %644, i32 0, i32 8
  %646 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %646, i32 0, i32 2
  %648 = load i32, i32* %647, align 4
  %649 = getelementptr inbounds [255 x i8], [255 x i8]* %44, i64 0, i64 0
  %650 = load i32, i32* %20, align 4
  %651 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %652 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %651, i32 0, i32 5
  %653 = load i32, i32* %652, align 4
  %654 = add nsw i32 %650, %653
  %655 = load i32, i32* %29, align 4
  %656 = add nsw i32 %654, %655
  %657 = load i32, i32* %31, align 4
  %658 = load i32, i32* %18, align 4
  %659 = load i32, i32* %19, align 4
  %660 = load i32, i32* %15, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %665, label %662

662:                                              ; preds = %643
  %663 = load i32, i32* %16, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %670

665:                                              ; preds = %662, %643
  %666 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %667 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %666, i32 0, i32 7
  %668 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  br label %675

670:                                              ; preds = %662
  %671 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %672 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 4
  br label %675

675:                                              ; preds = %670, %665
  %676 = phi i32 [ %669, %665 ], [ %674, %670 ]
  %677 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %678 = load i32, i32* %34, align 4
  %679 = call i32 @menu_display_draw_text(i32 %648, i8* %649, i32 %656, i32 %657, i32 %658, i32 %659, i32 %676, i32 %677, float 1.000000e+00, i32 0, i32 0, i32 %678)
  br label %680

680:                                              ; preds = %675, %592
  br label %681

681:                                              ; preds = %680, %573
  ret void
}

declare dso_local i32 @menu_entry_get_rich_label(%struct.TYPE_27__*, i8**) #1

declare dso_local i32 @menu_entry_get_value(%struct.TYPE_27__*, i8**) #1

declare dso_local i32 @menu_entry_get_sublabel(%struct.TYPE_27__*, i8**) #1

declare dso_local i32 @menu_entry_get_type_new(%struct.TYPE_27__*) #1

declare dso_local i32 @msg_hash_to_file_type(i32) #1

declare dso_local i32 @msg_hash_calculate(i8*) #1

declare dso_local i32 @materialui_get_entry_value_type(%struct.TYPE_29__*, i8*, i32, i32, i32) #1

declare dso_local i32 @materialui_draw_icon(i32*, float, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @menu_display_draw_text(i32, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @menu_animation_ticker_smooth(%struct.TYPE_20__*) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @menu_animation_ticker(%struct.TYPE_21__*) #1

declare dso_local i32 @materialui_render_switch_icon(%struct.TYPE_29__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
