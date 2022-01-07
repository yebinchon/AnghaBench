; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_get_attrib.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_get_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NONPRE = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_NONPRE = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_PRE = common dso_local global i32 0, align 4
@EGL_TRUE = common dso_local global i32 0, align 4
@SRGB = common dso_local global i32 0, align 4
@EGL_VG_COLORSPACE_sRGB = common dso_local global i32 0, align 4
@EGL_VG_COLORSPACE_LINEAR = common dso_local global i32 0, align 4
@EGL_UNKNOWN = common dso_local global i32 0, align 4
@PBUFFER = common dso_local global i32 0, align 4
@EGL_DISPLAY_SCALING = common dso_local global i32 0, align 4
@EGL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_surface_get_attrib(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %147 [
    i32 130, label %9
    i32 129, label %23
    i32 143, label %37
    i32 142, label %45
    i32 141, label %51
    i32 131, label %51
    i32 140, label %55
    i32 138, label %68
    i32 139, label %81
    i32 136, label %94
    i32 135, label %98
    i32 134, label %103
    i32 137, label %109
    i32 133, label %115
    i32 132, label %128
    i32 128, label %141
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NONPRE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EGL_VG_ALPHA_FORMAT_NONPRE, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @EGL_VG_ALPHA_FORMAT_PRE, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @EGL_TRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %149

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SRGB, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EGL_VG_COLORSPACE_sRGB, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EGL_VG_COLORSPACE_LINEAR, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EGL_TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %149

37:                                               ; preds = %3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @EGL_TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %149

45:                                               ; preds = %3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @EGL_TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %149

51:                                               ; preds = %3, %3
  %52 = load i32, i32* @EGL_UNKNOWN, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @EGL_TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %149

55:                                               ; preds = %3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PBUFFER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i32, i32* @EGL_TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %149

68:                                               ; preds = %3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PBUFFER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* @EGL_TRUE, align 4
  store i32 %80, i32* %4, align 4
  br label %149

81:                                               ; preds = %3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PBUFFER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %81
  %93 = load i32, i32* @EGL_TRUE, align 4
  store i32 %93, i32* %4, align 4
  br label %149

94:                                               ; preds = %3
  %95 = load i32, i32* @EGL_DISPLAY_SCALING, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @EGL_TRUE, align 4
  store i32 %97, i32* %4, align 4
  br label %149

98:                                               ; preds = %3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = call i32 @egl_surface_get_render_buffer(%struct.TYPE_4__* %99)
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @EGL_TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %149

103:                                              ; preds = %3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @EGL_TRUE, align 4
  store i32 %108, i32* %4, align 4
  br label %149

109:                                              ; preds = %3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @EGL_TRUE, align 4
  store i32 %114, i32* %4, align 4
  br label %149

115:                                              ; preds = %3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PBUFFER, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %7, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %115
  %127 = load i32, i32* @EGL_TRUE, align 4
  store i32 %127, i32* %4, align 4
  br label %149

128:                                              ; preds = %3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PBUFFER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %7, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* @EGL_TRUE, align 4
  store i32 %140, i32* %4, align 4
  br label %149

141:                                              ; preds = %3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @EGL_TRUE, align 4
  store i32 %146, i32* %4, align 4
  br label %149

147:                                              ; preds = %3
  %148 = load i32, i32* @EGL_FALSE, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %141, %139, %126, %109, %103, %98, %94, %92, %79, %66, %51, %45, %37, %35, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @egl_surface_get_render_buffer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
