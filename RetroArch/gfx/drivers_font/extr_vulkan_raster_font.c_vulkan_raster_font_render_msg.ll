; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, float, float, float, float, float }
%struct.font_params = type { float, float, float, i32, i32, i32, i32, float, float, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.vk_vertex*, i64, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.vk_vertex = type { i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*, i8*, %struct.font_params*)* @vulkan_raster_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_raster_font_render_msg(%struct.TYPE_14__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %22, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %24, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %35, %4
  br label %239

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %21, align 8
  %47 = load %struct.font_params*, %struct.font_params** %8, align 8
  %48 = icmp ne %struct.font_params* %47, null
  br i1 %48, label %49, label %107

49:                                               ; preds = %43
  %50 = load %struct.font_params*, %struct.font_params** %8, align 8
  %51 = getelementptr inbounds %struct.font_params, %struct.font_params* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  store float %52, float* %16, align 4
  %53 = load %struct.font_params*, %struct.font_params** %8, align 8
  %54 = getelementptr inbounds %struct.font_params, %struct.font_params* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  store float %55, float* %17, align 4
  %56 = load %struct.font_params*, %struct.font_params** %8, align 8
  %57 = getelementptr inbounds %struct.font_params, %struct.font_params* %56, i32 0, i32 2
  %58 = load float, float* %57, align 4
  store float %58, float* %18, align 4
  %59 = load %struct.font_params*, %struct.font_params** %8, align 8
  %60 = getelementptr inbounds %struct.font_params, %struct.font_params* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.font_params*, %struct.font_params** %8, align 8
  %63 = getelementptr inbounds %struct.font_params, %struct.font_params* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load %struct.font_params*, %struct.font_params** %8, align 8
  %66 = getelementptr inbounds %struct.font_params, %struct.font_params* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.font_params*, %struct.font_params** %8, align 8
  %69 = getelementptr inbounds %struct.font_params, %struct.font_params* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.font_params*, %struct.font_params** %8, align 8
  %72 = getelementptr inbounds %struct.font_params, %struct.font_params* %71, i32 0, i32 7
  %73 = load float, float* %72, align 4
  store float %73, float* %19, align 4
  %74 = load %struct.font_params*, %struct.font_params** %8, align 8
  %75 = getelementptr inbounds %struct.font_params, %struct.font_params* %74, i32 0, i32 8
  %76 = load float, float* %75, align 4
  store float %76, float* %20, align 4
  %77 = load %struct.font_params*, %struct.font_params** %8, align 8
  %78 = getelementptr inbounds %struct.font_params, %struct.font_params* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call float @FONT_COLOR_GET_RED(i32 %79)
  %81 = fdiv float %80, 2.550000e+02
  %82 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float %81, float* %82, align 16
  %83 = load %struct.font_params*, %struct.font_params** %8, align 8
  %84 = getelementptr inbounds %struct.font_params, %struct.font_params* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call float @FONT_COLOR_GET_GREEN(i32 %85)
  %87 = fdiv float %86, 2.550000e+02
  %88 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float %87, float* %88, align 4
  %89 = load %struct.font_params*, %struct.font_params** %8, align 8
  %90 = getelementptr inbounds %struct.font_params, %struct.font_params* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call float @FONT_COLOR_GET_BLUE(i32 %91)
  %93 = fdiv float %92, 2.550000e+02
  %94 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float %93, float* %94, align 8
  %95 = load %struct.font_params*, %struct.font_params** %8, align 8
  %96 = getelementptr inbounds %struct.font_params, %struct.font_params* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = call float @FONT_COLOR_GET_ALPHA(i32 %97)
  %99 = fdiv float %98, 2.550000e+02
  %100 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float %99, float* %100, align 4
  %101 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  %102 = load float, float* %101, align 4
  %103 = fcmp ole float %102, 0.000000e+00
  br i1 %103, label %104, label %106

104:                                              ; preds = %49
  %105 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float 1.000000e+00, float* %105, align 4
  br label %106

106:                                              ; preds = %104, %49
  br label %128

107:                                              ; preds = %43
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load float, float* %109, align 4
  store float %110, float* %16, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load float, float* %112, align 4
  store float %113, float* %17, align 4
  store float 1.000000e+00, float* %18, align 4
  store i32 1, i32* %13, align 4
  %114 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %114, i32* %15, align 4
  store i32 -2, i32* %11, align 4
  store i32 -2, i32* %12, align 4
  store float 0x3FD3333340000000, float* %19, align 4
  store float 1.000000e+00, float* %20, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float %117, float* %118, align 16
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load float, float* %120, align 4
  %122 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float %121, float* %122, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 6
  %125 = load float, float* %124, align 4
  %126 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float %125, float* %126, align 8
  %127 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float 1.000000e+00, float* %127, align 4
  br label %128

128:                                              ; preds = %107, %106
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @video_driver_set_viewport(i32 %129, i32 %130, i32 %131, i32 0)
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @strlen(i8* %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %128
  %141 = load i32, i32* %14, align 4
  %142 = mul i32 %141, 2
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = mul i64 24, %156
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = call i32 @vulkan_buffer_chain_alloc(i32 %148, i32* %154, i32 %158, %struct.TYPE_15__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %143
  br label %239

164:                                              ; preds = %143
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.vk_vertex*
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store %struct.vk_vertex* %171, %struct.vk_vertex** %173, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %164
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %228

179:                                              ; preds = %176, %164
  %180 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %181 = load float, float* %180, align 16
  %182 = load float, float* %19, align 4
  %183 = fmul float %181, %182
  %184 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  store float %183, float* %184, align 16
  %185 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %186 = load float, float* %185, align 4
  %187 = load float, float* %19, align 4
  %188 = fmul float %186, %187
  %189 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 1
  store float %188, float* %189, align 4
  %190 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  %191 = load float, float* %190, align 8
  %192 = load float, float* %19, align 4
  %193 = fmul float %191, %192
  %194 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 2
  store float %193, float* %194, align 8
  %195 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  %196 = load float, float* %195, align 4
  %197 = load float, float* %20, align 4
  %198 = fmul float %196, %197
  %199 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 3
  store float %198, float* %199, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load float, float* %18, align 4
  %203 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  %204 = load float, float* %16, align 4
  %205 = load float, float* %18, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sitofp i32 %206 to float
  %208 = fmul float %205, %207
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load float, float* %211, align 8
  %213 = fdiv float %208, %212
  %214 = fadd float %204, %213
  %215 = load float, float* %17, align 4
  %216 = load float, float* %18, align 4
  %217 = load i32, i32* %12, align 4
  %218 = sitofp i32 %217 to float
  %219 = fmul float %216, %218
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load float, float* %222, align 4
  %224 = fdiv float %219, %223
  %225 = fadd float %215, %224
  %226 = load i32, i32* %15, align 4
  %227 = call i32 @vulkan_raster_font_render_message(%struct.TYPE_12__* %200, i8* %201, float %202, float* %203, float %214, float %225, i32 %226)
  br label %228

228:                                              ; preds = %179, %176
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = load float, float* %18, align 4
  %232 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %233 = load float, float* %16, align 4
  %234 = load float, float* %17, align 4
  %235 = load i32, i32* %15, align 4
  %236 = call i32 @vulkan_raster_font_render_message(%struct.TYPE_12__* %229, i8* %230, float %231, float* %232, float %233, float %234, i32 %235)
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %238 = call i32 @vulkan_raster_font_flush(%struct.TYPE_12__* %237)
  br label %239

239:                                              ; preds = %228, %163, %42
  ret void
}

declare dso_local float @FONT_COLOR_GET_RED(i32) #1

declare dso_local float @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local float @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local float @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @video_driver_set_viewport(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vulkan_buffer_chain_alloc(i32, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @vulkan_raster_font_render_message(%struct.TYPE_12__*, i8*, float, float*, float, float, i32) #1

declare dso_local i32 @vulkan_raster_font_flush(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
