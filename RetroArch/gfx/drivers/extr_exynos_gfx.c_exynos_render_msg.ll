; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_video = type { i32, i32, %struct.TYPE_6__*, %struct.exynos_data* }
%struct.TYPE_6__ = type { %struct.font_glyph* (i32, i32)*, %struct.font_atlas* (i32)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.font_atlas = type { i32, i32* }
%struct.exynos_data = type { i32, %struct.g2d_image** }
%struct.g2d_image = type { i32, float }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, float }

@EXYNOS_IMAGE_FONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_video*, i8*)* @exynos_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_render_msg(%struct.exynos_video* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_video*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.font_atlas*, align 8
  %7 = alloca %struct.exynos_data*, align 8
  %8 = alloca %struct.g2d_image*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.font_glyph*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.exynos_video* %0, %struct.exynos_video** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %20, i32 0, i32 3
  %22 = load %struct.exynos_data*, %struct.exynos_data** %21, align 8
  store %struct.exynos_data* %22, %struct.exynos_data** %7, align 8
  %23 = load %struct.exynos_data*, %struct.exynos_data** %7, align 8
  %24 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %23, i32 0, i32 1
  %25 = load %struct.g2d_image**, %struct.g2d_image*** %24, align 8
  %26 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %27 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %25, i64 %26
  %28 = load %struct.g2d_image*, %struct.g2d_image** %27, align 8
  store %struct.g2d_image* %28, %struct.g2d_image** %8, align 8
  %29 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.g2d_image*, %struct.g2d_image** %8, align 8
  %35 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fsub float 1.000000e+00, %41
  %43 = load %struct.g2d_image*, %struct.g2d_image** %8, align 8
  %44 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fmul float %42, %45
  %47 = fptosi float %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %2
  store i32 -1, i32* %3, align 4
  br label %222

58:                                               ; preds = %52
  %59 = load %struct.exynos_data*, %struct.exynos_data** %7, align 8
  %60 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.g2d_image*, %struct.g2d_image** %8, align 8
  %63 = call i64 @exynos_clear_buffer(i32 %61, %struct.g2d_image* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %222

66:                                               ; preds = %58
  %67 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %68 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.font_atlas* (i32)*, %struct.font_atlas* (i32)** %70, align 8
  %72 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %73 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.font_atlas* %71(i32 %74)
  store %struct.font_atlas* %75, %struct.font_atlas** %6, align 8
  br label %76

76:                                               ; preds = %216, %66
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %219

80:                                               ; preds = %76
  store i32* null, i32** %16, align 8
  %81 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %82 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.font_glyph* (i32, i32)*, %struct.font_glyph* (i32, i32)** %84, align 8
  %86 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %87 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = call %struct.font_glyph* %85(i32 %88, i32 %91)
  store %struct.font_glyph* %92, %struct.font_glyph** %17, align 8
  %93 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %94 = icmp ne %struct.font_glyph* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %80
  br label %216

96:                                               ; preds = %80
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %99 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %104 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %13, align 4
  %107 = load %struct.g2d_image*, %struct.g2d_image** %8, align 8
  %108 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %18, align 4
  %112 = load %struct.g2d_image*, %struct.g2d_image** %8, align 8
  %113 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %112, i32 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sitofp i32 %115 to float
  %117 = fsub float %114, %116
  %118 = fptosi float %117 to i32
  store i32 %118, i32* %19, align 4
  %119 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %120 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %14, align 4
  %122 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %123 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  %125 = load %struct.font_atlas*, %struct.font_atlas** %6, align 8
  %126 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %129 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %134 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.font_atlas*, %struct.font_atlas** %6, align 8
  %137 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  store i32* %141, i32** %16, align 8
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %96
  %145 = load i32, i32* %12, align 4
  %146 = load i32*, i32** %16, align 8
  %147 = sext i32 %145 to i64
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32* %149, i32** %16, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %144, %96
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.font_atlas*, %struct.font_atlas** %6, align 8
  %159 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = load i32*, i32** %16, align 8
  %163 = sext i32 %161 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32* %165, i32** %16, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %156, %153
  %170 = load i32, i32* %18, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %19, align 4
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172, %169
  br label %216

176:                                              ; preds = %172
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %18, align 4
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %19, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %19, align 4
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %186, %182
  %189 = load %struct.exynos_data*, %struct.exynos_data** %7, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = load %struct.exynos_video*, %struct.exynos_video** %4, align 8
  %192 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.font_atlas*, %struct.font_atlas** %6, align 8
  %197 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @exynos_put_glyph_rgba4444(%struct.exynos_data* %189, i32* %190, i32 %193, i32 %194, i32 %195, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %203 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %10, align 4
  %209 = load %struct.font_glyph*, %struct.font_glyph** %17, align 8
  %210 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %188, %175, %95
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %5, align 8
  br label %76

219:                                              ; preds = %76
  %220 = load %struct.exynos_data*, %struct.exynos_data** %7, align 8
  %221 = call i32 @exynos_blend_font(%struct.exynos_data* %220)
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %65, %57
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @exynos_clear_buffer(i32, %struct.g2d_image*) #1

declare dso_local i32 @exynos_put_glyph_rgba4444(%struct.exynos_data*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @exynos_blend_font(%struct.exynos_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
