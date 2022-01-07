; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_compute_entries_box.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_compute_entries_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, i64, i32, float, %struct.TYPE_18__, i64, %struct.TYPE_15__, i64, i64, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { float }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { float, float, float, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_DEFAULT = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_PLAYLIST = common dso_local global i64 0, align 8
@MENU_SUBLABEL_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, i32)* @materialui_compute_entries_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_compute_entries_box(%struct.TYPE_21__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 2
  %30 = sub nsw i32 %25, %29
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sub nsw i32 %30, %34
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %10, align 4
  %41 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %41, i32** %11, align 8
  store float 0.000000e+00, float* %12, align 4
  %42 = call i64 (...) @menu_entries_get_size()
  store i64 %42, i64* %13, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  store float %53, float* %14, align 4
  %54 = load float, float* %14, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  %59 = fadd float %54, %58
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %63, 5.000000e+00
  %65 = fadd float %59, %64
  store float %65, float* %15, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %88, %48
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %13, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @file_list_get_userdata_at_offset(i32* %72, i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %16, align 8
  %76 = load float, float* %14, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store float %76, float* %78, align 8
  %79 = load float, float* %15, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  store float %79, float* %81, align 4
  %82 = load float, float* %12, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  store float %82, float* %84, align 8
  %85 = load float, float* %15, align 4
  %86 = load float, float* %12, align 4
  %87 = fadd float %86, %85
  store float %87, float* %12, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load float, float* %12, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 5
  store float %92, float* %94, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @materialui_scrollbar_init(%struct.TYPE_21__* %95, i32 %96, i32 %97, i32 %98)
  br label %362

100:                                              ; preds = %4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MUI_LIST_VIEW_DEFAULT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %199

106:                                              ; preds = %100
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %199

112:                                              ; preds = %106
  store i32 0, i32* %17, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 12
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 10
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 11
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %122, %117
  br label %146

129:                                              ; preds = %112
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %137, %129
  br label %146

146:                                              ; preds = %145, %128
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %10, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 10
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %146
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %10, align 4
  br label %198

172:                                              ; preds = %146
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %172
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  br label %193

189:                                              ; preds = %177
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  br label %193

193:                                              ; preds = %189, %185
  %194 = phi i32 [ %188, %185 ], [ %192, %189 ]
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %193, %172
  br label %198

198:                                              ; preds = %197, %161
  br label %199

199:                                              ; preds = %198, %106, %100
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %350, %199
  %201 = load i32, i32* %9, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %13, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %353

205:                                              ; preds = %200
  %206 = load i32, i32* @MENU_SUBLABEL_MAX_LENGTH, align 4
  %207 = zext i32 %206 to i64
  %208 = call i8* @llvm.stacksave()
  store i8* %208, i8** %19, align 8
  %209 = alloca i8, i64 %207, align 16
  store i64 %207, i64* %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i64 @file_list_get_userdata_at_offset(i32* %210, i32 %211)
  %213 = inttoptr i64 %212 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %213, %struct.TYPE_20__** %23, align 8
  %214 = getelementptr inbounds i8, i8* %209, i64 0
  store i8 0, i8* %214, align 16
  %215 = call i32 @menu_entry_init(%struct.TYPE_19__* %18)
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i32 0, i32* %217, align 4
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  store i32 0, i32* %219, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @menu_entry_get(%struct.TYPE_19__* %18, i32 0, i32 %220, i32* null, i32 1)
  %222 = call i32 @menu_entry_get_sublabel(%struct.TYPE_19__* %18, i8** %21)
  %223 = load i8*, i8** %21, align 8
  %224 = call i32 @string_is_empty(i8* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %270, label %226

226:                                              ; preds = %205
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %24, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @MUI_LIST_VIEW_DEFAULT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %258

233:                                              ; preds = %226
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %233
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i64, i64* %242, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %238
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load i32, i32* %24, align 4
  %255 = sub nsw i32 %254, %253
  store i32 %255, i32* %24, align 4
  br label %256

256:                                              ; preds = %249, %238
  br label %257

257:                                              ; preds = %256, %233
  br label %258

258:                                              ; preds = %257, %226
  %259 = load i8*, i8** %21, align 8
  %260 = load i32, i32* %24, align 4
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = sdiv i32 %260, %266
  %268 = call i32 @word_wrap(i8* %209, i8* %259, i32 %267, i32 0, i32 0)
  %269 = call i32 @materialui_count_lines(i8* %209)
  store i32 %269, i32* %22, align 4
  br label %270

270:                                              ; preds = %258, %205
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load float, float* %274, align 8
  %276 = load i32, i32* %22, align 4
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = mul i32 %276, %281
  %283 = uitofp i32 %282 to float
  %284 = fadd float %275, %283
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  store float %284, float* %286, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load float, float* %288, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = sdiv i32 %292, 10
  %294 = sitofp i32 %293 to float
  %295 = fadd float %289, %294
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  store float %295, float* %297, align 4
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @MUI_LIST_VIEW_DEFAULT, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %331

303:                                              ; preds = %270
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %331

309:                                              ; preds = %303
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 1
  %312 = load float, float* %311, align 4
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = sitofp i64 %315 to float
  %317 = fcmp olt float %312, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %309
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = sitofp i64 %321 to float
  br label %327

323:                                              ; preds = %309
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 1
  %326 = load float, float* %325, align 4
  br label %327

327:                                              ; preds = %323, %318
  %328 = phi float [ %322, %318 ], [ %326, %323 ]
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 1
  store float %328, float* %330, align 4
  br label %331

331:                                              ; preds = %327, %303, %270
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = sdiv i32 %334, 10
  %336 = sitofp i32 %335 to float
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 1
  %339 = load float, float* %338, align 4
  %340 = fadd float %339, %336
  store float %340, float* %338, align 4
  %341 = load float, float* %12, align 4
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 2
  store float %341, float* %343, align 8
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 1
  %346 = load float, float* %345, align 4
  %347 = load float, float* %12, align 4
  %348 = fadd float %347, %346
  store float %348, float* %12, align 4
  %349 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %349)
  br label %350

350:                                              ; preds = %331
  %351 = load i32, i32* %9, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %9, align 4
  br label %200

353:                                              ; preds = %200
  %354 = load float, float* %12, align 4
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 5
  store float %354, float* %356, align 4
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %8, align 4
  %361 = call i32 @materialui_scrollbar_init(%struct.TYPE_21__* %357, i32 %358, i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %353, %91
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i32 @materialui_scrollbar_init(%struct.TYPE_21__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @menu_entry_init(%struct.TYPE_19__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_19__*, i32, i32, i32*, i32) #1

declare dso_local i32 @menu_entry_get_sublabel(%struct.TYPE_19__*, i8**) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @materialui_count_lines(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
