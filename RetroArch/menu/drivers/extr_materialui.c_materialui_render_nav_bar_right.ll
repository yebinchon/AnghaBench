; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_nav_bar_right.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_nav_bar_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { float*, float*, float*, float*, float* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@MUI_NAV_BAR_NUM_ACTION_TABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32, i32)* @materialui_render_nav_bar_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_nav_bar_right(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca float*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %27, %31
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MUI_NAV_BAR_NUM_ACTION_TABS, align 4
  %38 = add i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = uitofp i32 %39 to float
  %41 = load i32, i32* %13, align 4
  %42 = uitofp i32 %41 to float
  %43 = fdiv float %40, %42
  store float %43, float* %14, align 4
  %44 = load float, float* %14, align 4
  %45 = fadd float %44, 5.000000e-01
  %46 = fptoui float %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %18, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load float*, float** %67, align 8
  %69 = call i32 @menu_display_draw_quad(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, float* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load float*, float** %82, align 8
  %84 = call i32 @menu_display_draw_quad(i32* %70, i32 %71, i32 %72, i32 %76, i32 %77, i32 %78, i32 %79, float* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = uitofp i32 %101 to float
  %103 = fsub float %102, 5.000000e-01
  %104 = load float, float* %14, align 4
  %105 = fmul float %103, %104
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sitofp i64 %108 to float
  %110 = fdiv float %109, 2.000000e+00
  %111 = fsub float %105, %110
  %112 = fptosi float %111 to i32
  %113 = sitofp i32 %112 to float
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load float*, float** %125, align 8
  br label %132

127:                                              ; preds = %4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load float*, float** %130, align 8
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi float* [ %126, %122 ], [ %131, %127 ]
  %134 = call i32 @materialui_draw_icon(i32* %85, i64 %88, i32 %99, i32 %100, float %113, i32 %114, i32 %115, i32 0, i32 1, float* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load float, float* %14, align 4
  %152 = fmul float 5.000000e-01, %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sitofp i64 %155 to float
  %157 = fdiv float %156, 2.000000e+00
  %158 = fsub float %152, %157
  %159 = fptosi float %158 to i32
  %160 = sitofp i32 %159 to float
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %132
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load float*, float** %172, align 8
  br label %179

174:                                              ; preds = %132
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load float*, float** %177, align 8
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi float* [ %173, %169 ], [ %178, %174 ]
  %181 = call i32 @materialui_draw_icon(i32* %135, i64 %138, i32 %149, i32 %150, float %160, i32 %161, i32 %162, i32 0, i32 1, float* %180)
  store i32 0, i32* %19, align 4
  br label %182

182:                                              ; preds = %254, %179
  %183 = load i32, i32* %19, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ult i32 %183, %187
  br i1 %188, label %189, label %257

189:                                              ; preds = %182
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load i32, i32* %19, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i64 %195
  store %struct.TYPE_14__* %196, %struct.TYPE_14__** %20, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  %205 = load float*, float** %204, align 8
  br label %211

206:                                              ; preds = %189
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = load float*, float** %209, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = phi float* [ %205, %201 ], [ %210, %206 ]
  store float* %212, float** %21, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %19, align 4
  %228 = uitofp i32 %227 to float
  %229 = fadd float %228, 1.500000e+00
  %230 = load float, float* %14, align 4
  %231 = fmul float %229, %230
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = sitofp i64 %234 to float
  %236 = fdiv float %235, 2.000000e+00
  %237 = fsub float %231, %236
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load float*, float** %21, align 8
  %241 = call i32 @materialui_draw_icon(i32* %213, i64 %216, i32 %225, i32 %226, float %237, i32 %238, i32 %239, i32 0, i32 1, float* %240)
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %19, align 4
  %245 = add i32 %244, 1
  %246 = load i32, i32* %15, align 4
  %247 = mul i32 %245, %246
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load float*, float** %21, align 8
  %253 = call i32 @menu_display_draw_quad(i32* %242, i32 %243, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, float* %252)
  br label %254

254:                                              ; preds = %211
  %255 = load i32, i32* %19, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %19, align 4
  br label %182

257:                                              ; preds = %182
  ret void
}

declare dso_local i32 @menu_display_draw_quad(i32*, i32, i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @materialui_draw_icon(i32*, i64, i32, i32, float, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
