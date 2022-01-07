; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @sdl_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca [128 x i8], align 16
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %18, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %133

25:                                               ; preds = %8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %28 = call i32 @video_driver_get_window_title(i8* %27, i32 128)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call i64 @SDL_MUSTLOCK(%struct.TYPE_14__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = call i32 @SDL_LockSurface(%struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @video_frame_scale(%struct.TYPE_13__* %41, i32 %46, i8* %47, i32 %51, i32 %56, i32 %61, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %39
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @SDL_BlitSurface(i32 %80, i32* null, %struct.TYPE_14__* %83, i32* null)
  br label %85

85:                                               ; preds = %76, %39
  %86 = load i8*, i8** %16, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %110

88:                                               ; preds = %85
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sdl_render_msg(%struct.TYPE_12__* %89, %struct.TYPE_14__* %92, i8* %93, i32 %98, i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %88, %85
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = call i64 @SDL_MUSTLOCK(%struct.TYPE_14__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = call i32 @SDL_UnlockSurface(%struct.TYPE_14__* %119)
  br label %121

121:                                              ; preds = %116, %110
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %123 = load i8, i8* %122, align 16
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %127 = call i32 @SDL_WM_SetCaption(i8* %126, i32* null)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = call i32 @SDL_Flip(%struct.TYPE_14__* %131)
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %128, %24
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @video_driver_get_window_title(i8*, i32) #1

declare dso_local i64 @SDL_MUSTLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @SDL_LockSurface(%struct.TYPE_14__*) #1

declare dso_local i32 @video_frame_scale(%struct.TYPE_13__*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_BlitSurface(i32, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @sdl_render_msg(%struct.TYPE_12__*, %struct.TYPE_14__*, i8*, i32, i32, i32) #1

declare dso_local i32 @SDL_UnlockSurface(%struct.TYPE_14__*) #1

declare dso_local i32 @SDL_WM_SetCaption(i8*, i32*) #1

declare dso_local i32 @SDL_Flip(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
