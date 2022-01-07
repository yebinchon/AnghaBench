; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_init_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_init_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.exynos_video = type { i32, i32, %struct.TYPE_12__*, %struct.exynos_data* }
%struct.TYPE_12__ = type { i32 (i32)* }
%struct.exynos_data = type { float, %struct.g2d_image** }
%struct.g2d_image = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@EXYNOS_IMAGE_FONT = common dso_local global i64 0, align 8
@defaults = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"[video_exynos]: creating font renderer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_video*)* @exynos_init_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_init_font(%struct.exynos_video* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_video*, align 8
  %4 = alloca %struct.exynos_data*, align 8
  %5 = alloca %struct.g2d_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.exynos_video* %0, %struct.exynos_video** %3, align 8
  %13 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %14 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %13, i32 0, i32 3
  %15 = load %struct.exynos_data*, %struct.exynos_data** %14, align 8
  store %struct.exynos_data* %15, %struct.exynos_data** %4, align 8
  %16 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %17 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %16, i32 0, i32 1
  %18 = load %struct.g2d_image**, %struct.g2d_image*** %17, align 8
  %19 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %20 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %18, i64 %19
  %21 = load %struct.g2d_image*, %struct.g2d_image** %20, align 8
  store %struct.g2d_image* %21, %struct.g2d_image** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @defaults, align 8
  %23 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = uitofp i32 %30 to float
  %32 = fmul float %29, %31
  %33 = call i32 @align_common(float %32, i32 16)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @defaults, align 8
  %35 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %171

46:                                               ; preds = %1
  %47 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %48 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %47, i32 0, i32 2
  %49 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  br label %63

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i64* [ %61, %57 ], [ null, %62 ]
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @font_renderer_create_default(%struct.TYPE_12__** %48, i32* %50, i64* %64, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %133

71:                                               ; preds = %63
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 15
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 15
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 15
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  br label %98

90:                                               ; preds = %71
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 15
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 15, %93 ], [ %95, %94 ]
  br label %98

98:                                               ; preds = %96, %89
  %99 = phi i32 [ 0, %89 ], [ %97, %96 ]
  %100 = shl i32 %99, 0
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 15
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i32 [ 15, %107 ], [ %109, %108 ]
  br label %112

112:                                              ; preds = %110, %103
  %113 = phi i32 [ 0, %103 ], [ %111, %110 ]
  %114 = shl i32 %113, 4
  %115 = or i32 %100, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 15
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ 15, %122 ], [ %124, %123 ]
  br label %127

127:                                              ; preds = %125, %118
  %128 = phi i32 [ 0, %118 ], [ %126, %125 ]
  %129 = shl i32 %128, 8
  %130 = or i32 %115, %129
  %131 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %132 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %135

133:                                              ; preds = %63
  %134 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

135:                                              ; preds = %127
  %136 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @defaults, align 8
  %138 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = mul i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = mul i32 %144, %145
  %147 = call i64 @exynos_realloc_buffer(%struct.exynos_data* %136, i32 %141, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %135
  %150 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %151 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32 (i32)*, i32 (i32)** %153, align 8
  %155 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %156 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 %154(i32 %157)
  store i32 -1, i32* %2, align 4
  br label %171

159:                                              ; preds = %135
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %162 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %165 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = mul i32 %166, %167
  %169 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %170 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %159, %149, %133, %45
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @align_common(float, i32) #1

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i64 @font_renderer_create_default(%struct.TYPE_12__**, i32*, i64*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @exynos_realloc_buffer(%struct.exynos_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
