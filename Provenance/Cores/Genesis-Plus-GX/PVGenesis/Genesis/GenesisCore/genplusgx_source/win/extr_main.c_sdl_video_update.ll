; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_video_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_video_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sdl_video = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@VIDEO_WIDTH = common dso_local global i64 0, align 8
@VIDEO_HEIGHT = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@interlaced = common dso_local global i64 0, align 8
@md_ntsc = common dso_local global i32* null, align 8
@md_ntsc_composite = common dso_local global i32 0, align 4
@md_ntsc_rgb = common dso_local global i32 0, align 4
@md_ntsc_svideo = common dso_local global i32 0, align 4
@rect = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@sms_ntsc = common dso_local global i32* null, align 8
@sms_ntsc_composite = common dso_local global i32 0, align 4
@sms_ntsc_rgb = common dso_local global i32 0, align 4
@sms_ntsc_svideo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sdl_video_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_video_update() #0 {
  %1 = load i32, i32* @system_hw, align 4
  %2 = load i32, i32* @SYSTEM_MCD, align 4
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @system_frame_scd(i32 0)
  br label %17

6:                                                ; preds = %0
  %7 = load i32, i32* @system_hw, align 4
  %8 = load i32, i32* @SYSTEM_PBC, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @SYSTEM_MD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @system_frame_gen(i32 0)
  br label %16

14:                                               ; preds = %6
  %15 = call i32 @system_frame_sms(i32 0)
  br label %16

16:                                               ; preds = %14, %12
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 8
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 8
  %23 = and i32 %22, -2
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 1), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 2), align 8
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 3), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 4), align 8
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 2), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %35 = load i64, i64* @VIDEO_WIDTH, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %39 = load i64, i64* @VIDEO_WIDTH, align 8
  %40 = sub nsw i64 %38, %39
  %41 = sdiv i64 %40, 2
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 3), align 8
  %42 = load i64, i64* @VIDEO_WIDTH, align 8
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 0), align 8
  br label %43

43:                                               ; preds = %37, %21
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 1), align 8
  %45 = load i64, i64* @VIDEO_HEIGHT, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 1), align 8
  %49 = load i64, i64* @VIDEO_HEIGHT, align 8
  %50 = sub nsw i64 %48, %49
  %51 = sdiv i64 %50, 2
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 2), align 8
  %52 = load i64, i64* @VIDEO_HEIGHT, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 1), align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 0), align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 0), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3, i32 1), align 8
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 1), align 8
  %56 = load i64, i64* @VIDEO_WIDTH, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 0), align 8
  %58 = sub nsw i64 %56, %57
  %59 = sdiv i64 %58, 2
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 3), align 8
  %60 = load i64, i64* @VIDEO_HEIGHT, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 1), align 8
  %62 = sub nsw i64 %60, %61
  %63 = sdiv i64 %62, 2
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2, i32 2), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 1), align 4
  %65 = call i32 @SDL_FillRect(i32 %64, i32 0, i32 0)
  br label %66

66:                                               ; preds = %53, %17
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 4), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 1), align 4
  %69 = call i32 @SDL_BlitSurface(i32 %67, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 3), i32 %68, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 2))
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 1), align 4
  %71 = call i32 @SDL_UpdateRect(i32 %70, i32 0, i32 0, i32 0, i32 0)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 0), align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdl_video, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @system_frame_scd(i32) #1

declare dso_local i32 @system_frame_gen(i32) #1

declare dso_local i32 @system_frame_sms(i32) #1

declare dso_local i32 @SDL_FillRect(i32, i32, i32) #1

declare dso_local i32 @SDL_BlitSurface(i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SDL_UpdateRect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
