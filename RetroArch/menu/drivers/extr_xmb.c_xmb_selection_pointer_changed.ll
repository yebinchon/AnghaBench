; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_selection_pointer_changed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_selection_pointer_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, float, float, float, float, float, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { float, float, float, float }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { float, float*, i64, i32, i32, i32* }

@MENU_ENTRIES_CTL_LIST_GET = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@FILE_TYPE_IMAGEVIEWER = common dso_local global i32 0, align 4
@FILE_TYPE_IMAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"imageviewer\00", align 1
@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@EASING_OUT_EXPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @xmb_selection_pointer_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_selection_pointer_changed(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %26 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %26, i32** %13, align 8
  %27 = call i64 (...) @menu_navigation_get_selection()
  store i64 %27, i64* %14, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %29 = icmp ne %struct.TYPE_23__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %274

31:                                               ; preds = %2
  %32 = load i32, i32* @MENU_ENTRIES_CTL_LIST_GET, align 4
  %33 = bitcast i32** %12 to i64*
  %34 = call i32 @menu_entries_ctl(i32 %32, i64* %33)
  %35 = call i32 @menu_entry_init(%struct.TYPE_25__* %9)
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 4
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @menu_entry_get(%struct.TYPE_25__* %9, i32 0, i64 %41, i32* null, i32 1)
  %43 = call i64 (...) @menu_entries_get_size()
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 10
  store i32 %48, i32* %11, align 4
  %49 = call i32 @video_driver_get_size(i32* null, i32* %7)
  %50 = load i32*, i32** %13, align 8
  %51 = ptrtoint i32* %50 to i64
  store i64 %51, i64* %8, align 8
  %52 = call i32 @menu_animation_kill_by_tag(i64* %8)
  %53 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %54 = call i32 @menu_entries_ctl(i32 %53, i64* %10)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %271, %31
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %274

59:                                               ; preds = %55
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load float, float* %61, align 4
  store float %62, float* %17, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = load float, float* %64, align 8
  store float %65, float* %18, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @file_list_get_userdata_at_offset(i32* %66, i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %19, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %271

73:                                               ; preds = %59
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* %14, align 8
  %77 = call float @xmb_item_y(%struct.TYPE_23__* %74, i32 %75, i64 %76)
  store float %77, float* %15, align 4
  %78 = load float, float* %15, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fadd float %78, %81
  store float %82, float* %16, align 4
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %14, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %199

87:                                               ; preds = %73
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %90 = call i64 @xmb_list_get_size(%struct.TYPE_23__* %88, i32 %89)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %20, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @xmb_get_system_tab(%struct.TYPE_23__* %92, i32 %96)
  store i32 %97, i32* %21, align 4
  %98 = call i32 @menu_entry_get_type_new(%struct.TYPE_25__* %9)
  store i32 %98, i32* %22, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 4
  %101 = load float, float* %100, align 8
  store float %101, float* %17, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 5
  %104 = load float, float* %103, align 4
  store float %104, float* %18, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %109 = call i64 @menu_thumbnail_is_enabled(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %87
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %116 = call i64 @menu_thumbnail_is_enabled(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %193

118:                                              ; preds = %111, %87
  store i32 0, i32* %23, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %20, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %132, label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load i32, i32* %20, align 4
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %132, label %140

132:                                              ; preds = %129, %122
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = call i32 @xmb_set_thumbnail_content(%struct.TYPE_23__* %138, i8* null)
  store i32 1, i32* %23, align 4
  br label %164

140:                                              ; preds = %132, %129, %125
  %141 = load i32, i32* %20, align 4
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %150 = call i32 @xmb_set_thumbnail_content(%struct.TYPE_23__* %149, i8* null)
  store i32 1, i32* %23, align 4
  br label %163

151:                                              ; preds = %143, %140
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* @FILE_TYPE_IMAGEVIEWER, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* @FILE_TYPE_IMAGE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %151
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = call i32 @xmb_set_thumbnail_content(%struct.TYPE_23__* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %162

162:                                              ; preds = %159, %155
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %137
  %165 = load i32, i32* %23, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %172 = call i64 @menu_thumbnail_is_enabled(i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_23__* %175, i32 %176, i8 signext 82)
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %183 = call i64 @menu_thumbnail_is_enabled(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_23__* %186, i32 %187, i8 signext 76)
  br label %189

189:                                              ; preds = %185, %178
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %191 = call i32 @xmb_update_thumbnail_image(%struct.TYPE_23__* %190)
  br label %192

192:                                              ; preds = %189, %164
  br label %193

193:                                              ; preds = %192, %111
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @xmb_update_savestate_thumbnail_path(%struct.TYPE_23__* %194, i32 %195)
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = call i32 @xmb_update_savestate_thumbnail_image(%struct.TYPE_23__* %197)
  br label %199

199:                                              ; preds = %193, %73
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load float, float* %16, align 4
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 0, %204
  %206 = sitofp i32 %205 to float
  %207 = fcmp olt float %203, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %202
  %209 = load float, float* %16, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %11, align 4
  %212 = add i32 %210, %211
  %213 = uitofp i32 %212 to float
  %214 = fcmp ogt float %209, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %208, %202, %199
  %216 = load float, float* %17, align 4
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  store float %216, float* %218, align 4
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  store float %216, float* %220, align 4
  %221 = load float, float* %15, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  store float %221, float* %223, align 4
  %224 = load float, float* %18, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 3
  store float %224, float* %226, align 4
  br label %270

227:                                              ; preds = %208
  %228 = call %struct.TYPE_24__* (...) @config_get_ptr()
  store %struct.TYPE_24__* %228, %struct.TYPE_24__** %24, align 8
  %229 = load float, float* %17, align 4
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store float %229, float* %230, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  store float* %232, float** %233, align 8
  %234 = load i64, i64* %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 2
  store i64 %234, i64* %235, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 5
  store i32* null, i32** %236, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  switch i32 %240, label %252 [
    i32 0, label %241
    i32 1, label %246
  ]

241:                                              ; preds = %227
  %242 = load i32, i32* @XMB_DELAY, align 4
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 3
  store i32 %242, i32* %243, align 8
  %244 = load i32, i32* @EASING_OUT_QUAD, align 4
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 4
  store i32 %244, i32* %245, align 4
  br label %252

246:                                              ; preds = %227
  %247 = load i32, i32* @XMB_DELAY, align 4
  %248 = mul nsw i32 %247, 4
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 3
  store i32 %248, i32* %249, align 8
  %250 = load i32, i32* @EASING_OUT_EXPO, align 4
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 4
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %227, %246, %241
  %253 = call i32 @menu_animation_push(%struct.TYPE_26__* %25)
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  store float* %255, float** %256, align 8
  %257 = call i32 @menu_animation_push(%struct.TYPE_26__* %25)
  %258 = load float, float* %18, align 4
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store float %258, float* %259, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  store float* %261, float** %262, align 8
  %263 = call i32 @menu_animation_push(%struct.TYPE_26__* %25)
  %264 = load float, float* %15, align 4
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store float %264, float* %265, align 8
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  store float* %267, float** %268, align 8
  %269 = call i32 @menu_animation_push(%struct.TYPE_26__* %25)
  br label %270

270:                                              ; preds = %252, %215
  br label %271

271:                                              ; preds = %270, %72
  %272 = load i32, i32* %5, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %5, align 4
  br label %55

274:                                              ; preds = %30, %55
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_25__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_25__*, i32, i64, i32*, i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local float @xmb_item_y(%struct.TYPE_23__*, i32, i64) #1

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @xmb_get_system_tab(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @menu_entry_get_type_new(%struct.TYPE_25__*) #1

declare dso_local i64 @menu_thumbnail_is_enabled(i32, i32) #1

declare dso_local i32 @xmb_set_thumbnail_content(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @xmb_update_thumbnail_path(%struct.TYPE_23__*, i32, i8 signext) #1

declare dso_local i32 @xmb_update_thumbnail_image(%struct.TYPE_23__*) #1

declare dso_local i32 @xmb_update_savestate_thumbnail_path(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @xmb_update_savestate_thumbnail_image(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @config_get_ptr(...) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
