; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_read_local_z80.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_read_local_z80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EL_YMTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timer z80 read %i, sched %i, %i @ %i|%i\00", align 1
@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@timer_a_next_oflow = common dso_local global i32 0, align 4
@timer_b_next_oflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ym2612_read_local_z80 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ym2612_read_local_z80() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @z80_cyclesDone()
  %3 = shl i32 %2, 8
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @ym2612_read_local()
  %5 = load i32, i32* @EL_YMTIMER, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* @timer_a_next_oflow, align 4
  %8 = ashr i32 %7, 8
  %9 = load i32, i32* @timer_b_next_oflow, align 4
  %10 = ashr i32 %9, 8
  %11 = load i32, i32* %1, align 4
  %12 = ashr i32 %11, 8
  %13 = load i32, i32* %1, align 4
  %14 = ashr i32 %13, 8
  %15 = sdiv i32 %14, 228
  %16 = call i32 @elprintf(i32 %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i32 %10, i32 %12, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  ret i32 %17
}

declare dso_local i32 @z80_cyclesDone(...) #1

declare dso_local i32 @ym2612_read_local(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
