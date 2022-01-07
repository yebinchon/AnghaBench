; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.exynos_data = type { i64, i64, float, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@g_drm_connector = common dso_local global %struct.TYPE_9__* null, align 8
@g_drm_mode = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"[video_exynos]: requested resolution (%ux%u) not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"[video_exynos]: failed to select sane resolution\0A\00", align 1
@g_drm_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"[video_exynos]: selected %ux%u resolution with %u bpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*, i32)* @exynos_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_init(%struct.exynos_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %27
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** @g_drm_mode, align 8
  br label %66

62:                                               ; preds = %41, %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %21

66:                                               ; preds = %55, %21
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %77)
  br label %158

79:                                               ; preds = %66
  br label %85

80:                                               ; preds = %14, %2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 0
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** @g_drm_mode, align 8
  br label %85

85:                                               ; preds = %80, %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90, %85
  %96 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %158

97:                                               ; preds = %90
  %98 = load i32, i32* @g_drm_fd, align 4
  %99 = call i32 @drm_setup(i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %104 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %109 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sitofp i64 %112 to float
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_mode, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to float
  %118 = fdiv float %113, %117
  %119 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %120 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %119, i32 0, i32 2
  store float %118, float* %120, align 8
  %121 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %122 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %121, i32 0, i32 3
  store i32 3, i32* %122, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %125 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %129 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = mul nsw i64 %127, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %134 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %136 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  %139 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %140 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = mul nsw i64 %138, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %145 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  %146 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %147 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %151 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %155 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %153, i32 %156)
  store i32 0, i32* %3, align 4
  br label %160

158:                                              ; preds = %95, %69
  %159 = call i32 (...) @drm_restore_crtc()
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @g_drm_mode, align 8
  store i32 -1, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %97
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @drm_setup(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

declare dso_local i32 @drm_restore_crtc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
