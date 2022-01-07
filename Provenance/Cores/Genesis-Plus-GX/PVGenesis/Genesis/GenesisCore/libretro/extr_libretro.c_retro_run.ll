; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_retro_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_retro_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@soundbuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_run() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @system_hw, align 4
  %3 = load i32, i32* @SYSTEM_MCD, align 4
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @system_frame_scd(i32 0)
  br label %18

7:                                                ; preds = %0
  %8 = load i32, i32* @system_hw, align 4
  %9 = load i32, i32* @SYSTEM_PBC, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SYSTEM_MD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @system_frame_gen(i32 0)
  br label %17

15:                                               ; preds = %7
  %16 = call i32 @system_frame_sms(i32 0)
  br label %17

17:                                               ; preds = %15, %13
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 2), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 1, i32 3), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 1, i32 0), align 8
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 1, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 1, i32 1), align 4
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0), align 8
  %31 = call i32 @video_cb(i32 %19, i64 %24, i64 %29, i32 %30)
  %32 = load i32, i32* @soundbuffer, align 4
  %33 = call i32 @audio_update(i32 %32)
  %34 = shl i32 %33, 1
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @soundbuffer, align 4
  %36 = load i32, i32* %1, align 4
  %37 = ashr i32 %36, 1
  %38 = call i32 @audio_batch_cb(i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @system_frame_scd(i32) #1

declare dso_local i32 @system_frame_gen(i32) #1

declare dso_local i32 @system_frame_sms(i32) #1

declare dso_local i32 @video_cb(i32, i64, i64, i32) #1

declare dso_local i32 @audio_update(i32) #1

declare dso_local i32 @audio_batch_cb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
