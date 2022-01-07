; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_playlist_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_playlist_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i64, %struct.TYPE_16__, i32, %struct.TYPE_18__, i64, %struct.TYPE_14__, %struct.TYPE_23__, i64, i64, i64, i64, %struct.TYPE_19__, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i8*, i64, i8* }
%struct.TYPE_23__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32, i32 }

@MUI_LIST_VIEW_PLAYLIST = common dso_local global i64 0, align 8
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@MENU_SUBLABEL_MAX_LENGTH = common dso_local global i32 0, align 4
@MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, %struct.TYPE_21__*, i32*, i32, i32, i32, i32, i32, i32)* @materialui_render_menu_entry_playlist_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_menu_entry_playlist_list(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_21__* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca [255 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %34, %37
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %38, %41
  store i32 %42, i32* %23, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sub nsw i32 %50, %54
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = sub nsw i32 %55, %59
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 12
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %23, align 4
  %67 = sitofp i32 %66 to float
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = sitofp i64 %74 to float
  %76 = fdiv float %75, 2.000000e+00
  %77 = fadd float %67, %76
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to float
  %84 = fmul float 1.300000e+01, %83
  %85 = fdiv float %84, 2.000000e+01
  %86 = fadd float %77, %85
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %27, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %10
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 5
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %113

108:                                              ; preds = %10
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %95
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @menu_entry_get_rich_label(i32* %114, i8** %21)
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @menu_entry_get_sublabel(i32* %116, i8** %22)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %280

123:                                              ; preds = %113
  store i32 0, i32* %28, align 4
  %124 = load i32, i32* %23, align 4
  %125 = sitofp i32 %124 to float
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to float
  %130 = fdiv float %129, 2.000000e+00
  %131 = fadd float %125, %130
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 16
  %134 = load i64, i64* %133, align 8
  %135 = sitofp i64 %134 to float
  %136 = fdiv float %135, 2.000000e+00
  %137 = fsub float %131, %136
  store float %137, float* %29, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 15
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %123
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 13
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 14
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %28, align 4
  br label %153

153:                                              ; preds = %147, %142
  br label %171

154:                                              ; preds = %123
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %165, %168
  store i32 %169, i32* %28, align 4
  br label %170

170:                                              ; preds = %162, %154
  br label %171

171:                                              ; preds = %170, %153
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %28, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %179, %182
  %184 = sitofp i32 %183 to float
  %185 = load float, float* %29, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @materialui_draw_thumbnail(%struct.TYPE_22__* %172, i32* %173, i32* %176, float %184, float %185, i32 %186, i32 %187, float 1.000000e+00)
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 11
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %28, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  %195 = load i32, i32* %24, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %24, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 11
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %28, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = sub nsw i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %25, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 13
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %253

213:                                              ; preds = %171
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %215 = load i32*, i32** %12, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %28, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %223, %226
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 12
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = sub nsw i32 %227, %231
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 11
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = sub nsw i32 %232, %236
  %238 = sitofp i32 %237 to float
  %239 = load float, float* %29, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @materialui_draw_thumbnail(%struct.TYPE_22__* %214, i32* %215, i32* %218, float %238, float %239, i32 %240, i32 %241, float 1.000000e+00)
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 11
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %28, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %245, %247
  %249 = load i32, i32* %25, align 4
  %250 = sext i32 %249 to i64
  %251 = sub nsw i64 %250, %248
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %25, align 4
  br label %279

253:                                              ; preds = %171
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %278

258:                                              ; preds = %253
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %261, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  br label %274

270:                                              ; preds = %258
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  br label %274

274:                                              ; preds = %270, %266
  %275 = phi i32 [ %269, %266 ], [ %273, %270 ]
  %276 = load i32, i32* %25, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %25, align 4
  br label %278

278:                                              ; preds = %274, %253
  br label %279

279:                                              ; preds = %278, %213
  br label %280

280:                                              ; preds = %279, %113
  %281 = load i8*, i8** %21, align 8
  %282 = call i32 @string_is_empty(i8* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %374, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds [255 x i8], [255 x i8]* %30, i64 0, i64 0
  store i8 0, i8* %285, align 16
  %286 = load i32, i32* %25, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %373

288:                                              ; preds = %284
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 10
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %288
  %294 = load i32, i32* %25, align 4
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 1
  store i32 %294, i32* %297, align 4
  %298 = load i8*, i8** %21, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 9
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 2
  store i8* %298, i8** %301, align 8
  %302 = getelementptr inbounds [255 x i8], [255 x i8]* %30, i64 0, i64 0
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 9
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 3
  store i8* %302, i8** %305, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 9
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 4
  store i32 255, i32* %308, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 9
  %311 = call i32 @menu_animation_ticker_smooth(%struct.TYPE_23__* %310)
  br label %335

312:                                              ; preds = %288
  %313 = getelementptr inbounds [255 x i8], [255 x i8]* %30, i64 0, i64 0
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  store i8* %313, i8** %316, align 8
  %317 = load i32, i32* %25, align 4
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sdiv i32 %317, %322
  %324 = sext i32 %323 to i64
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  store i64 %324, i64* %327, align 8
  %328 = load i8*, i8** %21, align 8
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 3
  store i8* %328, i8** %331, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 8
  %334 = call i32 @menu_animation_ticker(%struct.TYPE_14__* %333)
  br label %335

335:                                              ; preds = %312, %293
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 6
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = getelementptr inbounds [255 x i8], [255 x i8]* %30, i64 0, i64 0
  %342 = load i32, i32* %20, align 4
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 7
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = add nsw i32 %342, %346
  %348 = load i32, i32* %24, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %26, align 4
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %335
  %356 = load i32, i32* %16, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %355, %335
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  br label %368

363:                                              ; preds = %355
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  br label %368

368:                                              ; preds = %363, %358
  %369 = phi i32 [ %362, %358 ], [ %367, %363 ]
  %370 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %371 = load i32, i32* %27, align 4
  %372 = call i32 @menu_display_draw_text(i32 %340, i8* %341, i32 %349, i32 %350, i32 %351, i32 %352, i32 %369, i32 %370, float 1.000000e+00, i32 0, i32 0, i32 %371)
  br label %373

373:                                              ; preds = %368, %284
  br label %374

374:                                              ; preds = %373, %280
  %375 = load i8*, i8** %22, align 8
  %376 = call i32 @string_is_empty(i8* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %440, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %26, align 4
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = trunc i64 %384 to i32
  %386 = add nsw i32 %379, %385
  store i32 %386, i32* %31, align 4
  %387 = load i32, i32* @MENU_SUBLABEL_MAX_LENGTH, align 4
  %388 = zext i32 %387 to i64
  %389 = call i8* @llvm.stacksave()
  store i8* %389, i8** %32, align 8
  %390 = alloca i8, i64 %388, align 16
  store i64 %388, i64* %33, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 0
  store i8 0, i8* %391, align 16
  %392 = load i8*, i8** %22, align 8
  %393 = load i32, i32* %25, align 4
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 6
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = sdiv i32 %393, %398
  %400 = call i32 @word_wrap(i8* %390, i8* %392, i32 %399, i32 1, i32 0)
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %20, align 4
  %407 = load i32, i32* %24, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* %31, align 4
  %410 = load i32, i32* %18, align 4
  %411 = load i32, i32* %19, align 4
  %412 = load i32, i32* %15, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %378
  %415 = load i32, i32* %16, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %414, %378
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 4
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  br label %427

422:                                              ; preds = %414
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  br label %427

427:                                              ; preds = %422, %417
  %428 = phi i32 [ %421, %417 ], [ %426, %422 ]
  %429 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %430 = load i32, i32* %27, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %427
  %433 = load i32, i32* %31, align 4
  %434 = icmp slt i32 %433, 0
  br label %435

435:                                              ; preds = %432, %427
  %436 = phi i1 [ true, %427 ], [ %434, %432 ]
  %437 = zext i1 %436 to i32
  %438 = call i32 @menu_display_draw_text(i32 %405, i8* %390, i32 %408, i32 %409, i32 %410, i32 %411, i32 %428, i32 %429, float 1.000000e+00, i32 0, i32 0, i32 %437)
  %439 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %439)
  br label %440

440:                                              ; preds = %435, %374
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %452, label %446

446:                                              ; preds = %440
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %481

452:                                              ; preds = %446, %440
  %453 = load i32, i32* %25, align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %480

455:                                              ; preds = %452
  %456 = load i32*, i32** %12, align 8
  %457 = load i32, i32* %20, align 4
  %458 = load i32, i32* %24, align 4
  %459 = add nsw i32 %457, %458
  %460 = sitofp i32 %459 to float
  %461 = load i32, i32* %23, align 4
  %462 = sitofp i32 %461 to float
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = sitofp i64 %465 to float
  %467 = fadd float %462, %466
  %468 = fptosi float %467 to i32
  %469 = load i32, i32* %25, align 4
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* %18, align 4
  %474 = load i32, i32* %19, align 4
  %475 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %475, i32 0, i32 4
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @menu_display_draw_quad(i32* %456, float %460, i32 %468, i32 %469, i32 %472, i32 %473, i32 %474, i32 %478)
  br label %480

480:                                              ; preds = %455, %452
  br label %481

481:                                              ; preds = %480, %446
  ret void
}

declare dso_local i32 @menu_entry_get_rich_label(i32*, i8**) #1

declare dso_local i32 @menu_entry_get_sublabel(i32*, i8**) #1

declare dso_local i32 @materialui_draw_thumbnail(%struct.TYPE_22__*, i32*, i32*, float, float, i32, i32, float) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @menu_animation_ticker_smooth(%struct.TYPE_23__*) #1

declare dso_local i32 @menu_animation_ticker(%struct.TYPE_14__*) #1

declare dso_local i32 @menu_display_draw_text(i32, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @menu_display_draw_quad(i32*, float, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
