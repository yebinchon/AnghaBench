; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_image_buffer_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_image_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i8**, i64*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_EGLIMAGE_TEXTURES = common dso_local global i32 0, align 4
@EGL_OPENVG_API = common dso_local global i32 0, align 4
@VG_sXRGB_8888 = common dso_local global i32 0, align 4
@VG_sRGB_565 = common dso_local global i32 0, align 4
@VG_IMAGE_QUALITY_NONANTIALIASED = common dso_local global i32 0, align 4
@EGL_VG_PARENT_IMAGE_KHR = common dso_local global i32 0, align 4
@vc_api = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32, i8**)* @gfx_ctx_vc_image_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_vc_image_buffer_write(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %19, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @MAX_EGLIMAGE_TEXTURES, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %8
  br label %158

29:                                               ; preds = %24
  %30 = load i32, i32* @EGL_OPENVG_API, align 4
  %31 = call i32 @eglBindAPI(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @eglMakeCurrent(i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %29
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %54, %29
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @VG_sXRGB_8888, align 4
  br label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @VG_sRGB_565, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VG_IMAGE_QUALITY_NONANTIALIASED, align 4
  %79 = call i64 @vgCreateImage(i32 %71, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EGL_VG_PARENT_IMAGE_KHR, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i8* @peglCreateImageKHR(i32 %89, i32 %92, i32 %93, i32 %101, i32* null)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  store i32 1, i32* %18, align 4
  br label %109

109:                                              ; preds = %70, %54
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* @VG_sXRGB_8888, align 4
  br label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @VG_sRGB_565, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @vgImageSubData(i64 %116, i8* %117, i32 %118, i32 %126, i32 0, i32 0, i32 %127, i32 %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %17, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @vc_api, align 4
  %139 = call i32 @gfx_ctx_vc_bind_api(i32* null, i32 %138, i32 0, i32 0)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @eglMakeCurrent(i32 %143, i32 %147, i32 %151, i32 %155)
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %9, align 4
  br label %160

158:                                              ; preds = %28
  %159 = load i8**, i8*** %17, align 8
  store i8* null, i8** %159, align 8
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %125
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i64 @vgCreateImage(i32, i32, i32, i32) #1

declare dso_local i8* @peglCreateImageKHR(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vgImageSubData(i64, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_ctx_vc_bind_api(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
