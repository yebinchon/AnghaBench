; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_get_attrib.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_get_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@formats = common dso_local global %struct.TYPE_2__* null, align 8
@EGL_RGB_BUFFER = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_CONFIG_MAX_WIDTH = common dso_local global i32 0, align 4
@EGL_CONFIG_MAX_HEIGHT = common dso_local global i32 0, align 4
@EGL_CONFIG_MAX_SWAP_INTERVAL = common dso_local global i32 0, align 4
@EGL_CONFIG_MIN_SWAP_INTERVAL = common dso_local global i32 0, align 4
@EGL_TRUE = common dso_local global i32 0, align 4
@EGL_PBUFFER_BIT = common dso_local global i32 0, align 4
@EGL_PIXMAP_BIT = common dso_local global i32 0, align 4
@EGL_WINDOW_BIT = common dso_local global i32 0, align 4
@EGL_VG_COLORSPACE_LINEAR_BIT = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_PRE_BIT = common dso_local global i32 0, align 4
@EGL_MULTISAMPLE_RESOLVE_BOX_BIT = common dso_local global i32 0, align 4
@EGL_SWAP_BEHAVIOR_PRESERVED_BIT = common dso_local global i32 0, align 4
@EGL_FORMAT_RGBA_8888_EXACT_KHR = common dso_local global i32 0, align 4
@EGL_FORMAT_RGB_565_EXACT_KHR = common dso_local global i32 0, align 4
@EGL_LOCK_SURFACE_BIT_KHR = common dso_local global i32 0, align 4
@EGL_OPTIMAL_FORMAT_BIT_KHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_config_get_attrib(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %139 [
    i32 158, label %16
    i32 138, label %20
    i32 152, label %24
    i32 159, label %28
    i32 150, label %32
    i32 162, label %34
    i32 163, label %38
    i32 161, label %42
    i32 160, label %46
    i32 157, label %50
    i32 156, label %53
    i32 155, label %56
    i32 154, label %62
    i32 153, label %66
    i32 151, label %70
    i32 148, label %72
    i32 145, label %74
    i32 147, label %77
    i32 146, label %80
    i32 144, label %85
    i32 143, label %88
    i32 142, label %91
    i32 141, label %94
    i32 140, label %99
    i32 137, label %102
    i32 135, label %106
    i32 136, label %110
    i32 134, label %115
    i32 133, label %119
    i32 129, label %134
    i32 130, label %137
    i32 131, label %137
    i32 132, label %137
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @FEATURES_UNPACK_COLOR(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  store i32 1, i32* %4, align 4
  br label %140

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @FEATURES_UNPACK_RED(i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %140

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @FEATURES_UNPACK_GREEN(i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %140

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @FEATURES_UNPACK_BLUE(i32 %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %140

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  store i32 0, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %140

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @FEATURES_UNPACK_ALPHA(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %140

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FEATURES_UNPACK_MASK(i32 %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %140

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @bindable_rgb(i32 %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 1, i32* %4, align 4
  br label %140

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bindable_rgba(i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32 1, i32* %4, align 4
  br label %140

50:                                               ; preds = %3
  %51 = load i32, i32* @EGL_RGB_BUFFER, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 1, i32* %4, align 4
  br label %140

53:                                               ; preds = %3
  %54 = load i32, i32* @EGL_NONE, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %4, align 4
  br label %140

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @egl_config_from_id(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %4, align 4
  br label %140

62:                                               ; preds = %3
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @egl_config_get_api_conformance(i32 %63)
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  store i32 1, i32* %4, align 4
  br label %140

66:                                               ; preds = %3
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @FEATURES_UNPACK_DEPTH(i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %4, align 4
  br label %140

70:                                               ; preds = %3
  %71 = load i32*, i32** %7, align 8
  store i32 0, i32* %71, align 4
  store i32 1, i32* %4, align 4
  br label %140

72:                                               ; preds = %3
  %73 = load i32*, i32** %7, align 8
  store i32 0, i32* %73, align 4
  store i32 1, i32* %4, align 4
  br label %140

74:                                               ; preds = %3
  %75 = load i32, i32* @EGL_CONFIG_MAX_WIDTH, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %140

77:                                               ; preds = %3
  %78 = load i32, i32* @EGL_CONFIG_MAX_HEIGHT, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %4, align 4
  br label %140

80:                                               ; preds = %3
  %81 = load i32, i32* @EGL_CONFIG_MAX_WIDTH, align 4
  %82 = load i32, i32* @EGL_CONFIG_MAX_HEIGHT, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 1, i32* %4, align 4
  br label %140

85:                                               ; preds = %3
  %86 = load i32, i32* @EGL_CONFIG_MAX_SWAP_INTERVAL, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  store i32 1, i32* %4, align 4
  br label %140

88:                                               ; preds = %3
  %89 = load i32, i32* @EGL_CONFIG_MIN_SWAP_INTERVAL, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  store i32 1, i32* %4, align 4
  br label %140

91:                                               ; preds = %3
  %92 = load i32, i32* @EGL_TRUE, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  store i32 1, i32* %4, align 4
  br label %140

94:                                               ; preds = %3
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @egl_config_get_color_format(i32 %95)
  %97 = call i32 @platform_get_color_format(i32 %96)
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  store i32 1, i32* %4, align 4
  br label %140

99:                                               ; preds = %3
  %100 = load i32, i32* @EGL_NONE, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  store i32 1, i32* %4, align 4
  br label %140

102:                                              ; preds = %3
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @egl_config_get_api_support(i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  store i32 1, i32* %4, align 4
  br label %140

106:                                              ; preds = %3
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @FEATURES_UNPACK_MULTI(i32 %107)
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %4, align 4
  br label %140

110:                                              ; preds = %3
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @FEATURES_UNPACK_MULTI(i32 %111)
  %113 = mul nsw i32 %112, 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  store i32 1, i32* %4, align 4
  br label %140

115:                                              ; preds = %3
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @FEATURES_UNPACK_STENCIL(i32 %116)
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  store i32 1, i32* %4, align 4
  br label %140

119:                                              ; preds = %3
  %120 = load i32, i32* @EGL_PBUFFER_BIT, align 4
  %121 = load i32, i32* @EGL_PIXMAP_BIT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @EGL_WINDOW_BIT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @EGL_VG_COLORSPACE_LINEAR_BIT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @EGL_VG_ALPHA_FORMAT_PRE_BIT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @EGL_MULTISAMPLE_RESOLVE_BOX_BIT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @EGL_SWAP_BEHAVIOR_PRESERVED_BIT, align 4
  %132 = or i32 %130, %131
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  store i32 1, i32* %4, align 4
  br label %140

134:                                              ; preds = %3
  %135 = load i32, i32* @EGL_NONE, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  store i32 1, i32* %4, align 4
  br label %140

137:                                              ; preds = %3, %3, %3
  %138 = load i32*, i32** %7, align 8
  store i32 0, i32* %138, align 4
  store i32 1, i32* %4, align 4
  br label %140

139:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %137, %134, %119, %115, %110, %106, %102, %99, %94, %91, %88, %85, %80, %77, %74, %72, %70, %66, %62, %56, %53, %50, %46, %42, %38, %34, %32, %28, %24, %20, %16
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @FEATURES_UNPACK_COLOR(i32) #1

declare dso_local i32 @FEATURES_UNPACK_RED(i32) #1

declare dso_local i32 @FEATURES_UNPACK_GREEN(i32) #1

declare dso_local i32 @FEATURES_UNPACK_BLUE(i32) #1

declare dso_local i32 @FEATURES_UNPACK_ALPHA(i32) #1

declare dso_local i32 @FEATURES_UNPACK_MASK(i32) #1

declare dso_local i32 @bindable_rgb(i32) #1

declare dso_local i32 @bindable_rgba(i32) #1

declare dso_local i32 @egl_config_from_id(i32) #1

declare dso_local i32 @egl_config_get_api_conformance(i32) #1

declare dso_local i32 @FEATURES_UNPACK_DEPTH(i32) #1

declare dso_local i32 @platform_get_color_format(i32) #1

declare dso_local i32 @egl_config_get_color_format(i32) #1

declare dso_local i32 @egl_config_get_api_support(i32) #1

declare dso_local i32 @FEATURES_UNPACK_MULTI(i32) #1

declare dso_local i32 @FEATURES_UNPACK_STENCIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
