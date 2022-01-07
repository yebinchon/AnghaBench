; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_video_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_video_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sdl_video = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@VIDEO_WIDTH = common dso_local global i64 0, align 8
@VIDEO_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sdl_video_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_video_update() #0 {
  %1 = call i32 @system_frame(i32 0)
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %3 = and i32 %2, 1
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %7 = and i32 %6, -2
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 1), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 2), align 8
  %10 = mul nsw i32 2, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 3), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 4), align 8
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 2), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %19 = load i64, i64* @VIDEO_WIDTH, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 0), align 8
  %23 = load i64, i64* @VIDEO_WIDTH, align 8
  %24 = sub nsw i64 %22, %23
  %25 = sdiv i64 %24, 2
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 3), align 8
  %26 = load i64, i64* @VIDEO_WIDTH, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 0), align 8
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 1), align 8
  %29 = load i64, i64* @VIDEO_HEIGHT, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 1), align 8
  %33 = load i64, i64* @VIDEO_HEIGHT, align 8
  %34 = sub nsw i64 %32, %33
  %35 = sdiv i64 %34, 2
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 2), align 8
  %36 = load i64, i64* @VIDEO_HEIGHT, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 1), align 8
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 0), align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 0), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3, i32 1), align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 1), align 8
  %40 = load i64, i64* @VIDEO_WIDTH, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 0), align 8
  %42 = sub nsw i64 %40, %41
  %43 = sdiv i64 %42, 2
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 3), align 8
  %44 = load i64, i64* @VIDEO_HEIGHT, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 1), align 8
  %46 = sub nsw i64 %44, %45
  %47 = sdiv i64 %46, 2
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2, i32 2), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 1), align 4
  %49 = call i32 @SDL_FillRect(i32 %48, i32 0, i32 0)
  br label %50

50:                                               ; preds = %37, %0
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 4), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 1), align 4
  %53 = call i32 @SDL_BlitSurface(i32 %51, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 3), i32 %52, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 2))
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 1), align 4
  %55 = call i32 @SDL_UpdateRect(i32 %54, i32 0, i32 0, i32 0, i32 0)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 0), align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdl_video, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @system_frame(i32) #1

declare dso_local i32 @SDL_FillRect(i32, i32, i32) #1

declare dso_local i32 @SDL_BlitSurface(i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SDL_UpdateRect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
