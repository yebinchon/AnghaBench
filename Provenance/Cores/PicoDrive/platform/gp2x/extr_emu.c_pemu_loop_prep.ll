; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_loop_prep.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_loop_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gp2x_dev_id = common dso_local global i64 0, align 8
@GP2X_DEV_CAANOO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"evdev:pollux-analog\00", align 1
@IN_CFG_ABS_DEAD_ZONE = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_loop_prep() #0 {
  %1 = load i64, i64* @gp2x_dev_id, align 8
  %2 = load i64, i64* @GP2X_DEV_CAANOO, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @in_name_to_id(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @IN_CFG_ABS_DEAD_ZONE, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %8 = call i32 @in_set_config_int(i32 %5, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %4, %0
  %10 = call i32 (...) @sync()
  %11 = call i32 @sleep(i32 0)
  ret void
}

declare dso_local i32 @in_set_config_int(i32, i32, i32) #1

declare dso_local i32 @in_name_to_id(i8*) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
