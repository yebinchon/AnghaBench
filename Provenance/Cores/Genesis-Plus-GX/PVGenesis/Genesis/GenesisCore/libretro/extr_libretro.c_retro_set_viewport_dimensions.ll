; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_retro_set_viewport_dimensions.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_retro_set_viewport_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.retro_system_timing, %struct.retro_game_geometry }
%struct.retro_system_timing = type { i32, i32 }
%struct.retro_game_geometry = type { double, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@vwidth = common dso_local global i64 0, align 8
@vheight = common dso_local global i64 0, align 8
@vdp_pal = common dso_local global i64 0, align 8
@pal_fps = common dso_local global i32 0, align 4
@ntsc_fps = common dso_local global i32 0, align 4
@g_av_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retro_set_viewport_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retro_set_viewport_dimensions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.retro_game_geometry, align 8
  %3 = alloca %struct.retro_system_timing, align 4
  %4 = load i32, i32* @system_hw, align 4
  %5 = load i32, i32* @SYSTEM_PBC, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @SYSTEM_MD, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @system_hw, align 4
  %11 = load i32, i32* @SYSTEM_PBC, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @SYSTEM_MCD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i32, i32* %1, align 4
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 @system_frame_gen(i32 0)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %1, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %16

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp ult i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @system_frame_sms(i32 0)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %1, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %26

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 3), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* @vwidth, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 2), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 1), align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* @vheight, align 8
  %46 = call i32 (...) @retro_reset()
  %47 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %2, i32 0, i32 0
  store double 0x3FF5555555555555, double* %47, align 8
  %48 = load i64, i64* @vwidth, align 8
  %49 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %2, i32 0, i32 4
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @vheight, align 8
  %51 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %2, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %2, i32 0, i32 1
  store i32 720, i32* %52, align 8
  %53 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %2, i32 0, i32 2
  store i32 576, i32* %53, align 4
  %54 = getelementptr inbounds %struct.retro_system_timing, %struct.retro_system_timing* %3, i32 0, i32 0
  store i32 48000, i32* %54, align 4
  %55 = load i64, i64* @vdp_pal, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @pal_fps, align 4
  %59 = getelementptr inbounds %struct.retro_system_timing, %struct.retro_system_timing* %3, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %35
  %61 = load i32, i32* @ntsc_fps, align 4
  %62 = getelementptr inbounds %struct.retro_system_timing, %struct.retro_system_timing* %3, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = bitcast %struct.retro_game_geometry* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.retro_game_geometry* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_av_info, i32 0, i32 1) to i8*), i8* align 8 %64, i64 32, i1 false)
  %65 = bitcast %struct.retro_system_timing* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @g_av_info to i8*), i8* align 4 %65, i64 8, i1 false)
  ret void
}

declare dso_local i32 @system_frame_gen(i32) #1

declare dso_local i32 @system_frame_sms(i32) #1

declare dso_local i32 @retro_reset(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
