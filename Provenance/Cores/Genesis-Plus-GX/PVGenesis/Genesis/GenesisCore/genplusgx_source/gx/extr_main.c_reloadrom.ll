; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_main.c_reloadrom.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_main.c_reloadrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@cdd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CD_OPEN = common dso_local global i64 0, align 8
@interlaced = common dso_local global i64 0, align 8
@SAMPLERATE_48KHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reloadrom() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = load i32, i32* @system_hw, align 4
  %5 = load i32, i32* @SYSTEM_MCD, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scd, i32 0, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7, %3
  %11 = load i32, i32* @system_hw, align 4
  %12 = load i32, i32* @SYSTEM_PBC, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @SYSTEM_MD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call i32 (...) @md_cart_init()
  %18 = call i32 @md_cart_reset(i32 1)
  br label %22

19:                                               ; preds = %10
  %20 = call i32 (...) @sms_cart_init()
  %21 = call i32 (...) @sms_cart_reset()
  br label %22

22:                                               ; preds = %19, %16
  br label %40

23:                                               ; preds = %7, %0
  %24 = load i32, i32* @system_hw, align 4
  %25 = load i32, i32* @SYSTEM_MCD, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdd, i32 0, i32 0), align 8
  %29 = load i64, i64* @CD_OPEN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %23
  store i64 0, i64* @interlaced, align 8
  %32 = load i32, i32* @SAMPLERATE_48KHZ, align 4
  %33 = call i32 (...) @get_framerate()
  %34 = call i32 @audio_init(i32 %32, i32 %33)
  %35 = call i32 (...) @system_init()
  %36 = call i32 (...) @system_reset()
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %31, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 4
  %42 = call i32 @slot_autoload(i32 0, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 2), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 4
  %45 = call i32 @slot_autoload(i32 %43, i32 %44)
  %46 = call i32 (...) @CheatLoad()
  ret void
}

declare dso_local i32 @md_cart_init(...) #1

declare dso_local i32 @md_cart_reset(i32) #1

declare dso_local i32 @sms_cart_init(...) #1

declare dso_local i32 @sms_cart_reset(...) #1

declare dso_local i32 @audio_init(i32, i32) #1

declare dso_local i32 @get_framerate(...) #1

declare dso_local i32 @system_init(...) #1

declare dso_local i32 @system_reset(...) #1

declare dso_local i32 @slot_autoload(i32, i32) #1

declare dso_local i32 @CheatLoad(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
