; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_pointer_up.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_pointer_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, i32 }

@MENU_ACTION_CANCEL = common dso_local global i32 0, align 4
@MENU_ACTION_SELECT = common dso_local global i32 0, align 4
@MENU_ACTION_START = common dso_local global i32 0, align 4
@MENU_ACTION_RIGHT = common dso_local global i32 0, align 4
@MENU_ACTION_LEFT = common dso_local global i32 0, align 4
@MENU_ACTION_SCROLL_DOWN = common dso_local global i32 0, align 4
@MENU_NAVIGATION_CTL_SET_LAST = common dso_local global i32 0, align 4
@MENU_ACTION_SCROLL_UP = common dso_local global i32 0, align 4
@MENU_NAVIGATION_CTL_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32*, i32*, i32)* @xmb_pointer_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmb_pointer_up(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %18, align 8
  %35 = call i64 (...) @menu_navigation_get_selection()
  store i64 %35, i64* %19, align 8
  %36 = call i32 (...) @menu_entries_get_size()
  store i32 %36, i32* %20, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %277

40:                                               ; preds = %8
  %41 = call i32 @video_driver_get_size(i32* %21, i32* %22)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fptoui float %44 to i32
  store i32 %45, i32* %23, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fptoui float %48 to i32
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %21, align 4
  %51 = uitofp i32 %50 to float
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fsub float %51, %54
  %56 = fptoui float %55 to i32
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %275 [
    i32 128, label %58
    i32 133, label %58
    i32 134, label %108
    i32 131, label %124
    i32 130, label %143
    i32 129, label %162
    i32 132, label %201
  ]

58:                                               ; preds = %40, %40
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %16, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %70 = call i32 @menu_entry_action(i32* %67, i64 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %277

71:                                               ; preds = %62
  %72 = call i32 (...) @menu_input_dialog_start_search()
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 -1
  store i32 %75, i32* %9, align 4
  br label %277

76:                                               ; preds = %58
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %25, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %16, align 8
  %82 = load i64, i64* %19, align 8
  %83 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %84 = call i32 @menu_entry_action(i32* %81, i64 %82, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %277

85:                                               ; preds = %76
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %20, align 4
  %88 = sub i32 %87, 1
  %89 = icmp ule i32 %86, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %19, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*, i32** %16, align 8
  %97 = load i64, i64* %19, align 8
  %98 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %99 = call i32 @menu_entry_action(i32* %96, i64 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  br label %277

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = call i32 @menu_navigation_set_selection(i64 %102)
  %104 = call i32 @menu_driver_navigation_set(i32 0)
  br label %105

105:                                              ; preds = %100, %85
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %276

108:                                              ; preds = %40
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sub i32 %110, 1
  %112 = icmp ule i32 %109, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %19, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32*, i32** %16, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i32, i32* @MENU_ACTION_START, align 4
  %122 = call i32 @menu_entry_action(i32* %119, i64 %120, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %277

123:                                              ; preds = %113, %108
  br label %276

124:                                              ; preds = %40
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %23, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32*, i32** %16, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @MENU_ACTION_LEFT, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 @menu_entry_action(i32* %129, i64 %130, i32 %140)
  br label %142

142:                                              ; preds = %139, %124
  br label %276

143:                                              ; preds = %40
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %23, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load i32*, i32** %16, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* @MENU_ACTION_LEFT, align 4
  br label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = call i32 @menu_entry_action(i32* %148, i64 %149, i32 %159)
  br label %161

161:                                              ; preds = %158, %143
  br label %276

162:                                              ; preds = %40
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %24, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32*, i32** %16, align 8
  %168 = load i64, i64* %19, align 8
  %169 = load i32, i32* @MENU_ACTION_SCROLL_DOWN, align 4
  %170 = call i32 @menu_entry_action(i32* %167, i64 %168, i32 %169)
  br label %200

171:                                              ; preds = %162
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %25, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  store i32 0, i32* %26, align 4
  %176 = load i32, i32* %20, align 4
  store i32 %176, i32* %27, align 4
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i64, i64* %19, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @xmb_calculate_visible_range(%struct.TYPE_4__* %180, i32 %181, i32 %182, i32 %184, i32* %26, i32* %27)
  br label %186

186:                                              ; preds = %179, %175
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %27, align 4
  %192 = zext i32 %191 to i64
  %193 = call i32 @menu_navigation_set_selection(i64 %192)
  %194 = call i32 @menu_driver_navigation_set(i32 1)
  br label %198

195:                                              ; preds = %186
  %196 = load i32, i32* @MENU_NAVIGATION_CTL_SET_LAST, align 4
  %197 = call i32 @menu_driver_ctl(i32 %196, i32* null)
  br label %198

198:                                              ; preds = %195, %190
  br label %199

199:                                              ; preds = %198, %171
  br label %200

200:                                              ; preds = %199, %166
  br label %276

201:                                              ; preds = %40
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %24, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i32*, i32** %16, align 8
  %207 = load i64, i64* %19, align 8
  %208 = load i32, i32* @MENU_ACTION_SCROLL_UP, align 4
  %209 = call i32 @menu_entry_action(i32* %206, i64 %207, i32 %208)
  br label %274

210:                                              ; preds = %201
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %25, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %273

214:                                              ; preds = %210
  %215 = load i64, i64* %19, align 8
  %216 = trunc i64 %215 to i32
  %217 = add i32 %216, 1
  store i32 %217, i32* %28, align 4
  br label %218

218:                                              ; preds = %214, %234
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %220 = load i32, i32* %28, align 4
  %221 = load i64, i64* %19, align 8
  %222 = call float @xmb_item_y(%struct.TYPE_4__* %219, i32 %220, i64 %221)
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load float, float* %224, align 4
  %226 = fadd float %222, %225
  store float %226, float* %31, align 4
  %227 = load float, float* %31, align 4
  %228 = load i32, i32* %22, align 4
  %229 = uitofp i32 %228 to float
  %230 = fcmp ogt float %227, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %218
  %232 = load i32, i32* %28, align 4
  %233 = add i32 %232, -1
  store i32 %233, i32* %28, align 4
  br label %237

234:                                              ; preds = %218
  %235 = load i32, i32* %28, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %28, align 4
  br label %218

237:                                              ; preds = %231
  %238 = load i32, i32* %28, align 4
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %19, align 8
  %241 = icmp uge i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i32, i32* %28, align 4
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %19, align 8
  %246 = sub i64 %244, %245
  br label %248

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %242
  %249 = phi i64 [ %246, %242 ], [ 0, %247 ]
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %30, align 4
  %251 = load i64, i64* %19, align 8
  %252 = load i32, i32* %30, align 4
  %253 = zext i32 %252 to i64
  %254 = icmp ugt i64 %251, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load i64, i64* %19, align 8
  %257 = load i32, i32* %30, align 4
  %258 = zext i32 %257 to i64
  %259 = sub i64 %256, %258
  br label %261

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %260, %255
  %262 = phi i64 [ %259, %255 ], [ 0, %260 ]
  store i64 %262, i64* %29, align 8
  %263 = load i64, i64* %29, align 8
  %264 = icmp ugt i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i64, i64* %29, align 8
  %267 = call i32 @menu_navigation_set_selection(i64 %266)
  %268 = call i32 @menu_driver_navigation_set(i32 1)
  br label %272

269:                                              ; preds = %261
  store i32 0, i32* %32, align 4
  %270 = load i32, i32* @MENU_NAVIGATION_CTL_CLEAR, align 4
  %271 = call i32 @menu_driver_ctl(i32 %270, i32* %32)
  br label %272

272:                                              ; preds = %269, %265
  br label %273

273:                                              ; preds = %272, %210
  br label %274

274:                                              ; preds = %273, %205
  br label %276

275:                                              ; preds = %40
  br label %276

276:                                              ; preds = %275, %274, %200, %161, %142, %123, %107
  store i32 0, i32* %9, align 4
  br label %277

277:                                              ; preds = %276, %118, %95, %80, %71, %66, %39
  %278 = load i32, i32* %9, align 4
  ret i32 %278
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_entries_get_size(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_entry_action(i32*, i64, i32) #1

declare dso_local i32 @menu_input_dialog_start_search(...) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_driver_navigation_set(i32) #1

declare dso_local i32 @xmb_calculate_visible_range(%struct.TYPE_4__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local float @xmb_item_y(%struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
