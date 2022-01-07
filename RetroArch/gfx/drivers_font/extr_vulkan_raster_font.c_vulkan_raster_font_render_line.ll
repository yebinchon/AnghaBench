; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_9__ = type { float, float }
%struct.vk_color = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32, float, float*, float, float, i32)* @vulkan_raster_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_raster_font_render_line(%struct.TYPE_12__* %0, i8* %1, i32 %2, float %3, float* %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vk_color, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.font_glyph*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float* %4, float** %13, align 8
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %18, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %19, align 8
  %43 = load float, float* %14, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = fmul float %43, %47
  %49 = call i32 @roundf(float %48)
  store i32 %49, i32* %20, align 4
  %50 = load float, float* %15, align 4
  %51 = fsub float 1.000000e+00, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fmul float %51, %55
  %57 = call i32 @roundf(float %56)
  store i32 %57, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 8
  %62 = fdiv float 1.000000e+00, %61
  store float %62, float* %24, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fdiv float 1.000000e+00, %66
  store float %67, float* %25, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 4
  %74 = fdiv float 1.000000e+00, %73
  store float %74, float* %26, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fdiv float 1.000000e+00, %80
  store float %81, float* %27, align 4
  %82 = load float*, float** %13, align 8
  %83 = getelementptr inbounds float, float* %82, i64 0
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds %struct.vk_color, %struct.vk_color* %17, i32 0, i32 0
  store float %84, float* %85, align 4
  %86 = load float*, float** %13, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  %88 = load float, float* %87, align 4
  %89 = getelementptr inbounds %struct.vk_color, %struct.vk_color* %17, i32 0, i32 1
  store float %88, float* %89, align 4
  %90 = load float*, float** %13, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  %92 = load float, float* %91, align 4
  %93 = getelementptr inbounds %struct.vk_color, %struct.vk_color* %17, i32 0, i32 2
  store float %92, float* %93, align 4
  %94 = load float*, float** %13, align 8
  %95 = getelementptr inbounds float, float* %94, i64 3
  %96 = load float, float* %95, align 4
  %97 = getelementptr inbounds %struct.vk_color, %struct.vk_color* %17, i32 0, i32 3
  store float %96, float* %97, align 4
  %98 = load i32, i32* %16, align 4
  switch i32 %98, label %116 [
    i32 128, label %99
    i32 129, label %107
  ]

99:                                               ; preds = %8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load float, float* %12, align 4
  %104 = call i32 @vulkan_get_message_width(%struct.TYPE_12__* %100, i8* %101, i32 %102, float %103)
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %20, align 4
  br label %116

107:                                              ; preds = %8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load float, float* %12, align 4
  %112 = call i32 @vulkan_get_message_width(%struct.TYPE_12__* %108, i8* %109, i32 %110, float %111)
  %113 = sdiv i32 %112, 2
  %114 = load i32, i32* %20, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %8, %107, %99
  br label %117

117:                                              ; preds = %150, %149, %116
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %19, align 8
  %120 = icmp ult i8* %118, %119
  br i1 %120, label %121, label %256

121:                                              ; preds = %117
  %122 = call i32 @utf8_walk(i8** %10)
  store i32 %122, i32* %34, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %34, align 4
  %132 = trunc i32 %131 to i8
  %133 = call %struct.font_glyph* %127(i32 %130, i8 signext %132)
  store %struct.font_glyph* %133, %struct.font_glyph** %35, align 8
  %134 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %135 = icmp ne %struct.font_glyph* %134, null
  br i1 %135, label %146, label %136

136:                                              ; preds = %121
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.font_glyph* %141(i32 %144, i8 signext 63)
  store %struct.font_glyph* %145, %struct.font_glyph** %35, align 8
  br label %146

146:                                              ; preds = %136, %121
  %147 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %148 = icmp ne %struct.font_glyph* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %117

150:                                              ; preds = %146
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %153 = call i32 @vulkan_raster_font_update_glyph(%struct.TYPE_12__* %151, %struct.font_glyph* %152)
  %154 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %155 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %28, align 4
  %157 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %158 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %29, align 4
  %160 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %161 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %30, align 4
  %163 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %164 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %31, align 4
  %166 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %167 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %32, align 4
  %169 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %170 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %33, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = load i32, i32* %20, align 4
  %180 = sitofp i32 %179 to float
  %181 = load i32, i32* %28, align 4
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %181, %182
  %184 = sitofp i32 %183 to float
  %185 = load float, float* %12, align 4
  %186 = fmul float %184, %185
  %187 = fadd float %180, %186
  %188 = load float, float* %26, align 4
  %189 = fmul float %187, %188
  %190 = fptosi float %189 to i32
  %191 = load i32, i32* %21, align 4
  %192 = sitofp i32 %191 to float
  %193 = load i32, i32* %29, align 4
  %194 = load i32, i32* %23, align 4
  %195 = add nsw i32 %193, %194
  %196 = sitofp i32 %195 to float
  %197 = load float, float* %12, align 4
  %198 = fmul float %196, %197
  %199 = fadd float %192, %198
  %200 = load float, float* %27, align 4
  %201 = fmul float %199, %200
  %202 = fptosi float %201 to i32
  %203 = load i32, i32* %32, align 4
  %204 = sitofp i32 %203 to float
  %205 = load float, float* %12, align 4
  %206 = fmul float %204, %205
  %207 = load float, float* %26, align 4
  %208 = fmul float %206, %207
  %209 = fptosi float %208 to i32
  %210 = load i32, i32* %33, align 4
  %211 = sitofp i32 %210 to float
  %212 = load float, float* %12, align 4
  %213 = fmul float %211, %212
  %214 = load float, float* %27, align 4
  %215 = fmul float %213, %214
  %216 = fptosi float %215 to i32
  %217 = load i32, i32* %30, align 4
  %218 = sitofp i32 %217 to float
  %219 = load float, float* %24, align 4
  %220 = fmul float %218, %219
  %221 = fptosi float %220 to i32
  %222 = load i32, i32* %31, align 4
  %223 = sitofp i32 %222 to float
  %224 = load float, float* %25, align 4
  %225 = fmul float %223, %224
  %226 = fptosi float %225 to i32
  %227 = load i32, i32* %32, align 4
  %228 = sitofp i32 %227 to float
  %229 = load float, float* %24, align 4
  %230 = fmul float %228, %229
  %231 = fptosi float %230 to i32
  %232 = load i32, i32* %33, align 4
  %233 = sitofp i32 %232 to float
  %234 = load float, float* %25, align 4
  %235 = fmul float %233, %234
  %236 = fptosi float %235 to i32
  %237 = call i32 @vulkan_write_quad_vbo(i64 %178, i32 %190, i32 %202, i32 %209, i32 %216, i32 %221, i32 %226, i32 %231, i32 %236, %struct.vk_color* %17)
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, 6
  store i64 %241, i64* %239, align 8
  %242 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %243 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %22, align 4
  %249 = load %struct.font_glyph*, %struct.font_glyph** %35, align 8
  %250 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %23, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %23, align 4
  br label %117

256:                                              ; preds = %117
  ret void
}

declare dso_local i32 @roundf(float) #1

declare dso_local i32 @vulkan_get_message_width(%struct.TYPE_12__*, i8*, i32, float) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @vulkan_raster_font_update_glyph(%struct.TYPE_12__*, %struct.font_glyph*) #1

declare dso_local i32 @vulkan_write_quad_vbo(i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vk_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
