; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Menu_HandleMouseMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Menu_HandleMouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@qfalse = common dso_local global i64 0, align 8
@WINDOW_VISIBLE = common dso_local global i32 0, align 4
@WINDOW_FORCED = common dso_local global i32 0, align 4
@itemCapture = common dso_local global i64 0, align 8
@g_waitingForKey = common dso_local global i64 0, align 8
@g_editingField = common dso_local global i64 0, align 8
@CVAR_ENABLE = common dso_local global i32 0, align 4
@CVAR_DISABLE = common dso_local global i32 0, align 4
@CVAR_SHOW = common dso_local global i32 0, align 4
@CVAR_HIDE = common dso_local global i32 0, align 4
@ITEM_TYPE_TEXT = common dso_local global i64 0, align 8
@WINDOW_MOUSEOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_HandleMouseMove(%struct.TYPE_14__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %11 = load i64, i64* @qfalse, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %226

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WINDOW_VISIBLE, align 4
  %21 = load i32, i32* @WINDOW_FORCED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %226

26:                                               ; preds = %15
  %27 = load i64, i64* @itemCapture, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %226

30:                                               ; preds = %26
  %31 = load i64, i64* @g_waitingForKey, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @g_editingField, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30
  br label %226

37:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %223, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %226

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %219, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %222

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %51, i64 %53
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WINDOW_VISIBLE, align 4
  %60 = load i32, i32* @WINDOW_FORCED, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  br label %219

65:                                               ; preds = %48
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %68, i64 %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CVAR_ENABLE, align 4
  %76 = load i32, i32* @CVAR_DISABLE, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %65
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %83, i64 %85
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load i32, i32* @CVAR_ENABLE, align 4
  %89 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_15__* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %219

92:                                               ; preds = %80, %65
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %95, i64 %97
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CVAR_SHOW, align 4
  %103 = load i32, i32* @CVAR_HIDE, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %92
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %110, i64 %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load i32, i32* @CVAR_SHOW, align 4
  %116 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_15__* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  br label %219

119:                                              ; preds = %107, %92
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %122, i64 %124
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load float, float* %5, align 4
  %130 = load float, float* %6, align 4
  %131 = call i64 @Rect_ContainsPoint(i32* %128, float %129, float %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %185

133:                                              ; preds = %119
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %184

136:                                              ; preds = %133
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %139, i64 %141
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %10, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ITEM_TYPE_TEXT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %136
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %156 = call i32* @Item_CorrectedTextRect(%struct.TYPE_15__* %155)
  %157 = load float, float* %5, align 4
  %158 = load float, float* %6, align 4
  %159 = call i64 @Rect_ContainsPoint(i32* %156, float %157, float %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  br label %219

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %149, %136
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @IsVisible(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %172 = load float, float* %5, align 4
  %173 = load float, float* %6, align 4
  %174 = call i32 @Item_MouseEnter(%struct.TYPE_15__* %171, float %172, float %173)
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %170
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %179 = load float, float* %5, align 4
  %180 = load float, float* %6, align 4
  %181 = call i64 @Item_SetFocus(%struct.TYPE_15__* %178, float %179, float %180)
  store i64 %181, i64* %9, align 8
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %183, %133
  br label %218

185:                                              ; preds = %119
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %188, i64 %190
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @WINDOW_MOUSEOVER, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %185
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %202, i64 %204
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = call i32 @Item_MouseLeave(%struct.TYPE_15__* %206)
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %210, i64 %212
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = load i64, i64* @qfalse, align 8
  %216 = call i32 @Item_SetMouseOver(%struct.TYPE_15__* %214, i64 %215)
  br label %217

217:                                              ; preds = %199, %185
  br label %218

218:                                              ; preds = %217, %184
  br label %219

219:                                              ; preds = %218, %161, %118, %91, %64
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %42

222:                                              ; preds = %42
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  br label %38

226:                                              ; preds = %14, %25, %29, %36, %38
  ret void
}

declare dso_local i32 @Item_EnableShowViaCvar(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @Rect_ContainsPoint(i32*, float, float) #1

declare dso_local i32* @Item_CorrectedTextRect(%struct.TYPE_15__*) #1

declare dso_local i64 @IsVisible(i32) #1

declare dso_local i32 @Item_MouseEnter(%struct.TYPE_15__*, float, float) #1

declare dso_local i64 @Item_SetFocus(%struct.TYPE_15__*, float, float) #1

declare dso_local i32 @Item_MouseLeave(%struct.TYPE_15__*) #1

declare dso_local i32 @Item_SetMouseOver(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
