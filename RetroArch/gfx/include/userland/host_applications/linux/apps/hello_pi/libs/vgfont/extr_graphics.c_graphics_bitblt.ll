; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_bitblt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_bitblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, double, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VG_INVALID_HANDLE = common dso_local global i64 0, align 8
@GX_PBUFFER = common dso_local global i64 0, align 8
@GRAPHICS_RESOURCE_WIDTH = common dso_local global i64 0, align 8
@GRAPHICS_RESOURCE_HEIGHT = common dso_local global i64 0, align 8
@VG_MATRIX_MODE = common dso_local global i32 0, align 4
@VG_MATRIX_IMAGE_USER_TO_SURFACE = common dso_local global i32 0, align 4
@VG_PAINT_COLOR = common dso_local global i32 0, align 4
@VG_IMAGE_MODE = common dso_local global i32 0, align 4
@VG_DRAW_IMAGE_MULTIPLY = common dso_local global i32 0, align 4
@VG_STROKE_PATH = common dso_local global i32 0, align 4
@VG_FILL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vg error %x blitting area\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @graphics_bitblt(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.TYPE_7__* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [9 x double], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca [4 x double], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i32 -1, i32* %17, align 4
  %27 = load i64, i64* @VG_INVALID_HANDLE, align 8
  store i64 %27, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %28 = load i64, i64* @VG_INVALID_HANDLE, align 8
  store i64 %28, i64* %24, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %30 = call i32 @gx_priv_save(i32* %22, %struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GX_PBUFFER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = call i32 @vcos_assert(i32 0)
  br label %167

38:                                               ; preds = %8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @GRAPHICS_RESOURCE_WIDTH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load i64, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  store i64 %49, i64* %19, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @GRAPHICS_RESOURCE_HEIGHT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  br label %59

57:                                               ; preds = %48
  %58 = load i64, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %56, %53 ], [ %58, %57 ]
  store i64 %60, i64* %20, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i64, i64* %19, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i64, i64* %20, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %24, align 8
  br label %99

83:                                               ; preds = %72, %66, %63, %59
  store i32 1, i32* %23, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %20, align 8
  %92 = call i64 @vgChildImage(i64 %87, i64 %88, i64 %89, i64 %90, i64 %91)
  store i64 %92, i64* %24, align 8
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* @VG_INVALID_HANDLE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = call i32 @vcos_assert(i32 0)
  br label %167

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %78
  %100 = call i32 (...) @vgGetError()
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @vcos_assert(i32 %102)
  %104 = load i32, i32* @VG_MATRIX_MODE, align 4
  %105 = load i32, i32* @VG_MATRIX_IMAGE_USER_TO_SURFACE, align 4
  %106 = call i32 @vgSeti(i32 %104, i32 %105)
  %107 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  %108 = call i32 @vgGetMatrix(double* %107)
  %109 = call i32 (...) @vgLoadIdentity()
  %110 = load i64, i64* %15, align 8
  %111 = sitofp i64 %110 to double
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = sub nsw i64 %114, %115
  %117 = sitofp i64 %116 to double
  %118 = call i32 @vgTranslate(double %111, double %117)
  %119 = call i32 @vgScale(double 1.000000e+00, double -1.000000e+00)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load double, double* %121, align 8
  %123 = fcmp une double %122, 1.000000e+00
  br i1 %123, label %124, label %145

124:                                              ; preds = %99
  %125 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 0
  store double 1.000000e+00, double* %125, align 8
  %126 = getelementptr inbounds double, double* %125, i64 1
  store double 1.000000e+00, double* %126, align 8
  %127 = getelementptr inbounds double, double* %126, i64 1
  store double 1.000000e+00, double* %127, align 8
  %128 = getelementptr inbounds double, double* %127, i64 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load double, double* %130, align 8
  store double %131, double* %128, align 8
  %132 = call i64 (...) @vgCreatePaint()
  store i64 %132, i64* %21, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i32, i32* @VG_PAINT_COLOR, align 4
  %135 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 0
  %136 = call i32 @vgSetParameterfv(i64 %133, i32 %134, i32 4, double* %135)
  %137 = load i32, i32* @VG_IMAGE_MODE, align 4
  %138 = load i32, i32* @VG_DRAW_IMAGE_MULTIPLY, align 4
  %139 = call i32 @vgSeti(i32 %137, i32 %138)
  %140 = load i64, i64* %21, align 8
  %141 = load i32, i32* @VG_STROKE_PATH, align 4
  %142 = load i32, i32* @VG_FILL_PATH, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @vgSetPaint(i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %124, %99
  %146 = call i32 (...) @vgGetError()
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @vcos_assert(i32 %148)
  %150 = load i64, i64* %24, align 8
  %151 = call i32 @vgDrawImage(i64 %150)
  %152 = call i32 (...) @vgGetError()
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @vcos_assert(i32 %154)
  %156 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  %157 = call i32 @vgLoadMatrix(double* %156)
  %158 = call i32 (...) @vgGetError()
  store i32 %158, i32* %26, align 4
  %159 = load i32, i32* %26, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %145
  %162 = load i32, i32* %26, align 4
  %163 = call i32 @GX_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = call i32 @vcos_assert(i32 0)
  store i32 -1, i32* %17, align 4
  br label %166

165:                                              ; preds = %145
  store i32 0, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %161
  br label %167

167:                                              ; preds = %166, %96, %36
  %168 = load i64, i64* %21, align 8
  %169 = load i64, i64* @VG_INVALID_HANDLE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i64, i64* %21, align 8
  %173 = call i32 @vgDestroyPaint(i64 %172)
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i32, i32* %23, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, i64* %24, align 8
  %179 = call i32 @vgDestroyImage(i64 %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = call i32 @gx_priv_restore(i32* %22)
  %182 = load i32, i32* %17, align 4
  ret i32 %182
}

declare dso_local i32 @gx_priv_save(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vgChildImage(i64, i64, i64, i64, i64) #1

declare dso_local i32 @vgGetError(...) #1

declare dso_local i32 @vgSeti(i32, i32) #1

declare dso_local i32 @vgGetMatrix(double*) #1

declare dso_local i32 @vgLoadIdentity(...) #1

declare dso_local i32 @vgTranslate(double, double) #1

declare dso_local i32 @vgScale(double, double) #1

declare dso_local i64 @vgCreatePaint(...) #1

declare dso_local i32 @vgSetParameterfv(i64, i32, i32, double*) #1

declare dso_local i32 @vgSetPaint(i64, i32) #1

declare dso_local i32 @vgDrawImage(i64) #1

declare dso_local i32 @vgLoadMatrix(double*) #1

declare dso_local i32 @GX_LOG(i8*, i32) #1

declare dso_local i32 @vgDestroyPaint(i64) #1

declare dso_local i32 @vgDestroyImage(i64) #1

declare dso_local i32 @gx_priv_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
