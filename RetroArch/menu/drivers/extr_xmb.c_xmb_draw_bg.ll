; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_bg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, float, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, float*, i32, %struct.TYPE_17__, i32, i32*, i32*, i64, i64 }
%struct.TYPE_17__ = type { i64, i32 }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@XMB_THEME_WALLPAPER = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU_2 = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU_3 = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU_4 = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU_5 = common dso_local global i64 0, align 8
@VIDEO_SHADER_MENU_6 = common dso_local global i64 0, align 8
@XMB_SHADER_PIPELINE_WALLPAPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i32, i32, float, i64, float*, float*)* @xmb_draw_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_bg(i32* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, float %4, i64 %5, float* %6, float* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i64, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store i64 %5, i64* %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load float*, float** %15, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  store float* %34, float** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 8
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 4
  store i32 4, i32* %38, align 8
  %39 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 6
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = call i32 @xmb_shader_pipeline_active(%struct.TYPE_18__* %43)
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = call i32 @menu_display_blend_begin(%struct.TYPE_18__* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @menu_display_set_viewport(i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %19, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XMB_THEME_WALLPAPER, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = call i8* @xmb_gradient_ident(%struct.TYPE_18__* %64)
  %66 = bitcast i8* %65 to float*
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  store float* %66, float** %67, align 8
  br label %68

68:                                               ; preds = %63, %8
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %73 = load float*, float** %72, align 8
  %74 = load float*, float** %15, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  %76 = load float, float* %75, align 4
  %77 = call i32 @menu_display_set_alpha(float* %73, float %76)
  br label %85

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %80 = load float*, float** %79, align 8
  %81 = load float*, float** %16, align 8
  %82 = getelementptr inbounds float, float* %81, i64 3
  %83 = load float, float* %82, align 4
  %84 = call i32 @menu_display_set_alpha(float* %80, float %83)
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XMB_THEME_WALLPAPER, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = call i32 @menu_display_draw_gradient(%struct.TYPE_19__* %17, %struct.TYPE_18__* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load float, float* %96, align 8
  store float %97, float* %20, align 4
  store i32 0, i32* %21, align 4
  %98 = load i64, i64* %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %101 = load float*, float** %100, align 8
  %102 = load float*, float** %16, align 8
  %103 = getelementptr inbounds float, float* %102, i64 3
  %104 = load float, float* %103, align 4
  %105 = call i32 @menu_display_set_alpha(float* %101, float %104)
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = load float*, float** %16, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  store float* %111, float** %112, align 8
  br label %113

113:                                              ; preds = %109, %94
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XMB_THEME_WALLPAPER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %113
  store i32 1, i32* %21, align 4
  br label %123

123:                                              ; preds = %122, %116
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load float, float* %20, align 4
  %127 = call i32 @menu_display_draw_bg(%struct.TYPE_19__* %17, %struct.TYPE_18__* %124, i32 %125, float %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = call i32 @menu_display_draw(%struct.TYPE_19__* %17, %struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %131 = call i32 @menu_display_blend_end(%struct.TYPE_18__* %130)
  ret void
}

declare dso_local i32 @xmb_shader_pipeline_active(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_display_set_viewport(i32, i32) #1

declare dso_local i8* @xmb_gradient_ident(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_display_set_alpha(float*, float) #1

declare dso_local i32 @menu_display_draw_gradient(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @menu_display_draw_bg(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, float) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
