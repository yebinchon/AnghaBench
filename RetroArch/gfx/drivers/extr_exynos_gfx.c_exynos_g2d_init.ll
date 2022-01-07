; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_g2d_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_g2d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.exynos_data = type { i32, i32, i32, i32, %struct.g2d_context*, %struct.g2d_image*, %struct.g2d_image**, %struct.TYPE_3__** }
%struct.g2d_context = type { i32 }
%struct.g2d_image = type { i32, i32, i32, i32, i32, i32, i32*, i8* }
%struct.TYPE_3__ = type { i32 }

@g_drm_fd = common dso_local global i32 0, align 4
@G2D_IMGBUF_GEM = common dso_local global i8* null, align 8
@G2D_COLOR_FMT_RGB565 = common dso_local global i32 0, align 4
@G2D_ORDER_AXRGB = common dso_local global i32 0, align 4
@G2D_COLOR_FMT_ARGB8888 = common dso_local global i32 0, align 4
@EXYNOS_IMAGE_COUNT = common dso_local global i32 0, align 4
@defaults = common dso_local global %struct.TYPE_4__* null, align 8
@G2D_REPEAT_MODE_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*)* @exynos_g2d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_g2d_init(%struct.exynos_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g2d_image*, align 8
  %6 = alloca %struct.g2d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.g2d_image*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %3, align 8
  store %struct.g2d_image* null, %struct.g2d_image** %5, align 8
  %10 = load i32, i32* @g_drm_fd, align 4
  %11 = call %struct.g2d_context* @g2d_init(i32 %10)
  store %struct.g2d_context* %11, %struct.g2d_context** %6, align 8
  %12 = load %struct.g2d_context*, %struct.g2d_context** %6, align 8
  %13 = icmp ne %struct.g2d_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %203

15:                                               ; preds = %1
  %16 = call %struct.g2d_image* @calloc(i32 1, i32 40)
  store %struct.g2d_image* %16, %struct.g2d_image** %5, align 8
  %17 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %18 = icmp ne %struct.g2d_image* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %200

20:                                               ; preds = %15
  %21 = load i8*, i8** @G2D_IMGBUF_GEM, align 8
  %22 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %23 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @G2D_COLOR_FMT_RGB565, align 4
  %30 = load i32, i32* @G2D_ORDER_AXRGB, align 4
  %31 = or i32 %29, %30
  br label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @G2D_COLOR_FMT_ARGB8888, align 4
  %34 = load i32, i32* @G2D_ORDER_AXRGB, align 4
  %35 = or i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  %38 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %39 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %41 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %44 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %46 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %49 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %51 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %54 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %56 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %55, i32 0, i32 4
  store i32 -16777216, i32* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %162, %36
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EXYNOS_IMAGE_COUNT, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %165

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = mul i32 %73, %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %80, %86
  store i32 %87, i32* %8, align 4
  %88 = call %struct.g2d_image* @calloc(i32 1, i32 40)
  store %struct.g2d_image* %88, %struct.g2d_image** %9, align 8
  %89 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %90 = icmp ne %struct.g2d_image* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %61
  br label %165

92:                                               ; preds = %61
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %100 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %108 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %114, %120
  %122 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %123 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %125 = load i32, i32* %4, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %131 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @G2D_IMGBUF_GEM, align 8
  %133 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %134 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %133, i32 0, i32 7
  store i8* %132, i8** %134, align 8
  %135 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %136 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %135, i32 0, i32 7
  %137 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %137, i64 %139
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %145 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* @G2D_REPEAT_MODE_PAD, align 4
  %149 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %150 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @exynos_realloc_buffer(%struct.exynos_data* %151, i32 %152, i32 %153)
  %155 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  %156 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %157 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %156, i32 0, i32 6
  %158 = load %struct.g2d_image**, %struct.g2d_image*** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %158, i64 %160
  store %struct.g2d_image* %155, %struct.g2d_image** %161, align 8
  br label %162

162:                                              ; preds = %92
  %163 = load i32, i32* %4, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %57

165:                                              ; preds = %91, %57
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @EXYNOS_IMAGE_COUNT, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %174, %169
  %171 = load i32, i32* %4, align 4
  %172 = add i32 %171, -1
  store i32 %172, i32* %4, align 4
  %173 = icmp ugt i32 %171, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %176 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %175, i32 0, i32 6
  %177 = load %struct.g2d_image**, %struct.g2d_image*** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %177, i64 %179
  %181 = load %struct.g2d_image*, %struct.g2d_image** %180, align 8
  %182 = call i32 @free(%struct.g2d_image* %181)
  %183 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %184 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %183, i32 0, i32 6
  %185 = load %struct.g2d_image**, %struct.g2d_image*** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %185, i64 %187
  store %struct.g2d_image* null, %struct.g2d_image** %188, align 8
  br label %170

189:                                              ; preds = %170
  br label %197

190:                                              ; preds = %165
  %191 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %192 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %193 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %192, i32 0, i32 5
  store %struct.g2d_image* %191, %struct.g2d_image** %193, align 8
  %194 = load %struct.g2d_context*, %struct.g2d_context** %6, align 8
  %195 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %196 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %195, i32 0, i32 4
  store %struct.g2d_context* %194, %struct.g2d_context** %196, align 8
  store i32 0, i32* %2, align 4
  br label %203

197:                                              ; preds = %189
  %198 = load %struct.g2d_image*, %struct.g2d_image** %5, align 8
  %199 = call i32 @free(%struct.g2d_image* %198)
  br label %200

200:                                              ; preds = %197, %19
  %201 = load %struct.g2d_context*, %struct.g2d_context** %6, align 8
  %202 = call i32 @g2d_fini(%struct.g2d_context* %201)
  store i32 -1, i32* %2, align 4
  br label %203

203:                                              ; preds = %200, %190, %14
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.g2d_context* @g2d_init(i32) #1

declare dso_local %struct.g2d_image* @calloc(i32, i32) #1

declare dso_local i32 @exynos_realloc_buffer(%struct.exynos_data*, i32, i32) #1

declare dso_local i32 @free(%struct.g2d_image*) #1

declare dso_local i32 @g2d_fini(%struct.g2d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
