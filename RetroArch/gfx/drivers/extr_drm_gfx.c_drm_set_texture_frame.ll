; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_video = type { i32, i32, i32 }

@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @drm_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_video*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.drm_video*
  store %struct.drm_video* %28, %struct.drm_video** %15, align 8
  %29 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %30 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  br label %137

34:                                               ; preds = %6
  %35 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %36 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul i32 %43, 4
  %45 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  %46 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %47 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %50 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %49, i32 0, i32 0
  %51 = call i32 @drm_surface_setup(%struct.drm_video* %40, i32 %41, i32 %42, i32 %44, i32 4, i32 %45, i32 210, i32 %48, i32 2, i32 0, i32* %50)
  %52 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %53 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @drm_plane_setup(i32 %54)
  br label %56

56:                                               ; preds = %39, %34
  %57 = load i32, i32* %10, align 4
  %58 = mul i32 %57, 2
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul i32 %59, 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %19, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %20, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul i32 %66, %67
  %69 = call i64 @malloc(i32 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %21, align 8
  %71 = load i8*, i8** %21, align 8
  store i8* %71, i8** %22, align 8
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %126, %56
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %113, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = udiv i32 %79, 2
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %16, align 4
  %86 = udiv i32 %85, 2
  %87 = load i32, i32* %13, align 4
  %88 = mul i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = shl i32 %95, 8
  %97 = and i32 %96, 16711680
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %23, align 4
  %99 = shl i32 %98, 4
  %100 = and i32 %99, 65280
  store i32 %100, i32* %25, align 4
  %101 = load i32, i32* %23, align 4
  %102 = shl i32 %101, 0
  %103 = and i32 %102, 255
  store i32 %103, i32* %26, align 4
  %104 = load i32, i32* %24, align 4
  %105 = or i32 0, %104
  %106 = load i32, i32* %25, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %26, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %65, i64 %111
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %82
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %77

116:                                              ; preds = %77
  %117 = load i8*, i8** %22, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %13, align 4
  %120 = mul i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = bitcast i32* %65 to i8*
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @memcpy(i8* %122, i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %72

129:                                              ; preds = %72
  %130 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %131 = load i8*, i8** %21, align 8
  %132 = load %struct.drm_video*, %struct.drm_video** %15, align 8
  %133 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @drm_surface_update(%struct.drm_video* %130, i8* %131, i32 %134)
  %136 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %136)
  br label %137

137:                                              ; preds = %129, %33
  ret void
}

declare dso_local i32 @drm_surface_setup(%struct.drm_video*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @drm_plane_setup(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @drm_surface_update(%struct.drm_video*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
