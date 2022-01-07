; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_sdl_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_sdl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@next_time = common dso_local global i64 0, align 8
@mouse_moved = common dso_local global i32 0, align 4
@key_pressed = common dso_local global i64 0, align 8
@SDL_MOUSEBUTTONDOWN = common dso_local global i64 0, align 8
@SDL_QUIT = common dso_local global i64 0, align 8
@SDL_KEYDOWN = common dso_local global i64 0, align 8
@SDLK_ESCAPE = common dso_local global i64 0, align 8
@SDLK_q = common dso_local global i64 0, align 8
@SDL_MOUSEMOTION = common dso_local global i64 0, align 8
@mouse_x = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdl_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @SDL_GetTicks()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @next_time, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %0
  %11 = load i64, i64* @next_time, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = icmp ugt i64 %13, 10
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* @next_time, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %16, %17
  %19 = call i32 @SDL_Delay(i64 %18)
  br label %20

20:                                               ; preds = %15, %10, %0
  br label %21

21:                                               ; preds = %25, %20
  %22 = call i64 (...) @SDL_GetTicks()
  %23 = load i64, i64* @next_time, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 16
  store i64 %28, i64* @next_time, align 8
  store i32 0, i32* @mouse_moved, align 4
  store i64 0, i64* @key_pressed, align 8
  br label %29

29:                                               ; preds = %94, %26
  %30 = call i64 @SDL_PollEvent(%struct.TYPE_8__* %2)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SDL_MOUSEBUTTONDOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SDL_QUIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 0, i32* %1, align 4
  br label %96

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SDL_KEYDOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SDLK_ESCAPE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SDLK_q, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %48
  store i32 0, i32* %1, align 4
  br label %96

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* @key_pressed, align 8
  br label %68

68:                                               ; preds = %63, %43
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SDL_MOUSEMOTION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = call i32 @SDL_GetMouseState(i32* %4, i32* %5)
  store i32 1, i32* @mouse_moved, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sitofp i32 %75 to float
  %77 = call %struct.TYPE_9__* (...) @SDL_GetVideoSurface()
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %76, %81
  %83 = fptosi float %82 to i32
  store i32 %83, i32* @mouse_x, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sitofp i32 %84 to float
  %86 = call %struct.TYPE_9__* (...) @SDL_GetVideoSurface()
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sitofp i32 %89 to float
  %91 = fdiv float %85, %90
  %92 = fsub float 1.000000e+00, %91
  %93 = fptosi float %92 to i32
  store i32 %93, i32* @mouse_y, align 4
  br label %94

94:                                               ; preds = %73, %68
  br label %29

95:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %96

96:                                               ; preds = %95, %62, %42
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i64 @SDL_GetTicks(...) #1

declare dso_local i32 @SDL_Delay(i64) #1

declare dso_local i64 @SDL_PollEvent(%struct.TYPE_8__*) #1

declare dso_local i32 @SDL_GetMouseState(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @SDL_GetVideoSurface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
