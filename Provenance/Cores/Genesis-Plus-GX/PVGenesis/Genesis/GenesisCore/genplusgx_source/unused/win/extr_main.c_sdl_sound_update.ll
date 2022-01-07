; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_sound_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_sound_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i16** }

@use_sound = common dso_local global i64 0, align 8
@sdl_sound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@snd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sdl_sound_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_sound_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @audio_update()
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @use_sound, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %0
  %8 = call i32 (...) @SDL_LockAudio()
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sdl_sound, i32 0, i32 0), align 8
  %10 = bitcast i8* %9 to i16*
  store i16* %10, i16** %2, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %36, %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i16**, i16*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i16*, i16** %16, i64 0
  %18 = load i16*, i16** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = load i16*, i16** %2, align 8
  store i16 %22, i16* %23, align 2
  %24 = load i16*, i16** %2, align 8
  %25 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %25, i16** %2, align 8
  %26 = load i16**, i16*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i16*, i16** %26, i64 1
  %28 = load i16*, i16** %27, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = load i16*, i16** %2, align 8
  store i16 %32, i16* %33, align 2
  %34 = load i16*, i16** %2, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %2, align 8
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i16*, i16** %2, align 8
  %41 = bitcast i16* %40 to i8*
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sdl_sound, i32 0, i32 0), align 8
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 2
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sdl_sound, i32 0, i32 1), align 8
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sdl_sound, i32 0, i32 1), align 8
  %50 = call i32 (...) @SDL_UnlockAudio()
  br label %51

51:                                               ; preds = %39, %0
  ret void
}

declare dso_local i32 @audio_update(...) #1

declare dso_local i32 @SDL_LockAudio(...) #1

declare dso_local i32 @SDL_UnlockAudio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
