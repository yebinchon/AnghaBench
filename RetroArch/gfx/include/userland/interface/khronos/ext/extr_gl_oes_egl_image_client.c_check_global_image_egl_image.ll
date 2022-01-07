; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_gl_oes_egl_image_client.c_check_global_image_egl_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_gl_oes_egl_image_client.c_check_global_image_egl_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64 }

@OPENGL_ES_11 = common dso_local global i64 0, align 8
@EGL_PIXEL_FORMAT_RENDER_GLES_BRCM = common dso_local global i64 0, align 8
@EGL_PIXEL_FORMAT_GLES_TEXTURE_BRCM = common dso_local global i64 0, align 8
@EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM = common dso_local global i64 0, align 8
@EGL_PIXEL_FORMAT_GLES2_TEXTURE_BRCM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.TYPE_9__*, i32)* @check_global_image_egl_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_global_image_egl_image(i64* %0, i64 %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call %struct.TYPE_10__* (...) @CLIENT_GET_PROCESS_STATE()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = call i32 (...) @CLIENT_LOCK()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @khrn_global_image_map_lookup(i32* %23, i64 %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  store i32 %28, i32* %11, align 4
  %29 = call i32 (...) @CLIENT_UNLOCK()
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %89

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 32
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @platform_get_global_image_info(i64 %45, i64 %48, i64* %12, i64* %13, i64* %14)
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OPENGL_ES_11, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %33
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* @EGL_PIXEL_FORMAT_RENDER_GLES_BRCM, align 8
  br label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @EGL_PIXEL_FORMAT_GLES_TEXTURE_BRCM, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  br label %77

68:                                               ; preds = %33
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @EGL_PIXEL_FORMAT_GLES2_TEXTURE_BRCM, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi i64 [ %67, %66 ], [ %76, %75 ]
  %79 = and i64 %50, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %14, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81, %77
  store i32 0, i32* %5, align 4
  br label %89

88:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %32
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_10__* @CLIENT_GET_PROCESS_STATE(...) #1

declare dso_local i32 @CLIENT_LOCK(...) #1

declare dso_local i32 @khrn_global_image_map_lookup(i32*, i64) #1

declare dso_local i32 @CLIENT_UNLOCK(...) #1

declare dso_local i32 @platform_get_global_image_info(i64, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
