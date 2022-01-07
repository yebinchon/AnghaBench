; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { float }
%struct.TYPE_15__ = type { float, float, float, float, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }

@MENU_POINTER_DISABLED = common dso_local global i64 0, align 8
@MENU_INPUT_PRESS_DIRECTION_NONE = common dso_local global i32 0, align 4
@MENU_ACTION_DOWN = common dso_local global i32 0, align 4
@MENU_ACTION_UP = common dso_local global i32 0, align 4
@MENU_ACTION_RIGHT = common dso_local global i32 0, align 4
@MENU_ACTION_LEFT = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_START_GET = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@MENU_ANIMATION_CTL_CLEAR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @xmb_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_render(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_18__, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %12, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %13, align 8
  %32 = call i32 (...) @menu_entries_get_size()
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %268

36:                                               ; preds = %4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = uitofp i32 %41 to float
  %43 = fmul float %40, %42
  %44 = fdiv float %43, 1.920000e+03
  store float %44, float* %10, align 4
  %45 = load float, float* %10, align 4
  %46 = fcmp oge float %45, 0x3FB99999A0000000
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load float, float* %10, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 8
  %52 = fcmp une float %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = call i32 (...) @video_driver_is_threaded()
  %56 = call i32 @xmb_context_reset_internal(%struct.TYPE_15__* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %47, %36
  %58 = load float, float* %10, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store float %58, float* %60, align 8
  %61 = call i32 @menu_input_get_pointer_state(%struct.TYPE_17__* %11)
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %255

66:                                               ; preds = %57
  %67 = call i64 (...) @menu_navigation_get_selection()
  store i64 %67, i64* %15, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = fptosi float %70 to i64
  store i64 %71, i64* %16, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %17, align 8
  %75 = load i32, i32* %6, align 4
  %76 = uitofp i32 %75 to float
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = sitofp i64 %79 to float
  %81 = fsub float %76, %80
  %82 = fptosi float %81 to i64
  store i64 %82, i64* %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %20, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @menu_display_set_width(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @menu_display_set_height(i32 %89)
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %17, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %173

94:                                               ; preds = %66
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %18, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %173

98:                                               ; preds = %94
  store i32 0, i32* %21, align 4
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i64, i64* %15, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @xmb_calculate_visible_range(%struct.TYPE_15__* %103, i32 %104, i32 %105, i32 %107, i32* %21, i32* %22)
  br label %109

109:                                              ; preds = %102, %98
  %110 = load i32, i32* %21, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %169, %109
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %22, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ule i64 %113, %115
  br i1 %116, label %117, label %172

117:                                              ; preds = %112
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load float, float* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  %127 = load float, float* %126, align 4
  %128 = fmul float %124, %127
  br label %133

129:                                              ; preds = %117
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load float, float* %131, align 8
  br label %133

133:                                              ; preds = %129, %121
  %134 = phi float [ %128, %121 ], [ %132, %129 ]
  store float %134, float* %23, align 4
  %135 = load float, float* %23, align 4
  %136 = fmul float %135, 5.000000e-01
  store float %136, float* %24, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i64, i64* %15, align 8
  %141 = call float @xmb_item_y(%struct.TYPE_15__* %137, i32 %139, i64 %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load float, float* %143, align 4
  %145 = fadd float %141, %144
  store float %145, float* %25, align 4
  %146 = load float, float* %25, align 4
  %147 = load float, float* %24, align 4
  %148 = fsub float %146, %147
  %149 = fadd float %148, 5.000000e-01
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %26, align 4
  %151 = load float, float* %25, align 4
  %152 = load float, float* %24, align 4
  %153 = fadd float %151, %152
  %154 = fadd float %153, 5.000000e-01
  %155 = fptosi float %154 to i32
  store i32 %155, i32* %27, align 4
  %156 = load i64, i64* %20, align 8
  %157 = load i32, i32* %26, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp sgt i64 %156, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %133
  %161 = load i64, i64* %20, align 8
  %162 = load i32, i32* %27, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @menu_input_set_pointer_selection(i64 %166)
  br label %172

168:                                              ; preds = %160, %133
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %9, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %9, align 8
  br label %112

172:                                              ; preds = %165, %112
  br label %173

173:                                              ; preds = %172, %94, %66
  %174 = load i64, i64* %20, align 8
  %175 = load i64, i64* %16, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %18, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %254

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MENU_INPUT_PRESS_DIRECTION_NONE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = call i32 @menu_entry_init(%struct.TYPE_18__* %28)
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i32 0, i32* %189, align 4
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  store i32 0, i32* %191, align 4
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  store i32 0, i32* %192, align 4
  %193 = load i64, i64* %15, align 8
  %194 = call i32 @menu_entry_get(%struct.TYPE_18__* %28, i32 0, i64 %193, i32* null, i32 1)
  br label %195

195:                                              ; preds = %186, %181
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %252 [
    i32 128, label %198
    i32 131, label %207
    i32 130, label %216
    i32 129, label %234
  ]

198:                                              ; preds = %195
  %199 = load i64, i64* %19, align 8
  %200 = load i64, i64* %18, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i64, i64* %15, align 8
  %204 = load i32, i32* @MENU_ACTION_DOWN, align 4
  %205 = call i32 @menu_entry_action(%struct.TYPE_18__* %28, i64 %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %198
  br label %253

207:                                              ; preds = %195
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* %18, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i64, i64* %15, align 8
  %213 = load i32, i32* @MENU_ACTION_UP, align 4
  %214 = call i32 @menu_entry_action(%struct.TYPE_18__* %28, i64 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %207
  br label %253

216:                                              ; preds = %195
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %16, align 8
  %219 = icmp slt i64 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = load i64, i64* %15, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  br label %230

228:                                              ; preds = %220
  %229 = load i32, i32* @MENU_ACTION_LEFT, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = call i32 @menu_entry_action(%struct.TYPE_18__* %28, i64 %221, i32 %231)
  br label %233

233:                                              ; preds = %230, %216
  br label %253

234:                                              ; preds = %195
  %235 = load i64, i64* %20, align 8
  %236 = load i64, i64* %16, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = load i64, i64* %15, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @MENU_ACTION_LEFT, align 4
  br label %248

246:                                              ; preds = %238
  %247 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %250 = call i32 @menu_entry_action(%struct.TYPE_18__* %28, i64 %239, i32 %249)
  br label %251

251:                                              ; preds = %248, %234
  br label %253

252:                                              ; preds = %195
  br label %253

253:                                              ; preds = %252, %251, %233, %215, %206
  br label %254

254:                                              ; preds = %253, %177
  br label %255

255:                                              ; preds = %254, %57
  %256 = load i32, i32* @MENU_ENTRIES_CTL_START_GET, align 4
  %257 = call i32 @menu_entries_ctl(i32 %256, i64* %9)
  %258 = load i64, i64* %9, align 8
  %259 = load i32, i32* %14, align 4
  %260 = zext i32 %259 to i64
  %261 = icmp uge i64 %258, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %255
  store i64 0, i64* %9, align 8
  %263 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %264 = call i32 @menu_entries_ctl(i32 %263, i64* %9)
  br label %265

265:                                              ; preds = %262, %255
  %266 = load i32, i32* @MENU_ANIMATION_CTL_CLEAR_ACTIVE, align 4
  %267 = call i32 @menu_animation_ctl(i32 %266, i32* null)
  br label %268

268:                                              ; preds = %265, %35
  ret void
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @menu_entries_get_size(...) #1

declare dso_local i32 @xmb_context_reset_internal(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @video_driver_is_threaded(...) #1

declare dso_local i32 @menu_input_get_pointer_state(%struct.TYPE_17__*) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @xmb_calculate_visible_range(%struct.TYPE_15__*, i32, i32, i32, i32*, i32*) #1

declare dso_local float @xmb_item_y(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @menu_input_set_pointer_selection(i64) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_18__*, i32, i64, i32*, i32) #1

declare dso_local i32 @menu_entry_action(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @menu_animation_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
