; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@SDL_FLIP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* @sdl2_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl2_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca [128 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %16, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %17, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %27 = call i32 @sdl_refresh_viewport(%struct.TYPE_15__* %26)
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SDL_RenderClear(i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @sdl_refresh_input_size(%struct.TYPE_15__* %41, i32 0, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @SDL_UpdateTexture(i32 %53, i32* null, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %36, %31, %28
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SDL_FLIP_NONE, align 4
  %69 = call i32 @SDL_RenderCopyEx(i32 %60, i32 %64, i32* null, i32* null, i32 %67, i32* null, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %57
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @SDL_RenderCopy(i32 %78, i32 %82, i32* null, i32* null)
  br label %84

84:                                               ; preds = %75, %57
  %85 = load i8*, i8** %15, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @sdl2_render_msg(%struct.TYPE_15__* %88, i8* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @SDL_RenderPresent(i32 %94)
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %96, align 16
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %98 = call i32 @video_driver_get_window_title(i8* %97, i32 128)
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %100 = load i8, i8* %99, align 16
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = call i64 (...) @video_driver_display_userdata_get()
  %104 = inttoptr i64 %103 to i32*
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %106 = call i32 @SDL_SetWindowTitle(i32* %104, i8* %105)
  br label %107

107:                                              ; preds = %102, %91
  ret i32 1
}

declare dso_local i32 @sdl_refresh_viewport(%struct.TYPE_15__*) #1

declare dso_local i32 @SDL_RenderClear(i32) #1

declare dso_local i32 @sdl_refresh_input_size(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_UpdateTexture(i32, i32*, i8*, i32) #1

declare dso_local i32 @SDL_RenderCopyEx(i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @SDL_RenderCopy(i32, i32, i32*, i32*) #1

declare dso_local i32 @sdl2_render_msg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @SDL_RenderPresent(i32) #1

declare dso_local i32 @video_driver_get_window_title(i8*, i32) #1

declare dso_local i32 @SDL_SetWindowTitle(i32*, i8*) #1

declare dso_local i64 @video_driver_display_userdata_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
