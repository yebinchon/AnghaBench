; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoSyncZ80.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoSyncZ80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_z80_sync = common dso_local global i32 0, align 4
@z80_cycle_aim = common dso_local global i32 0, align 4
@z80_cycle_cnt = common dso_local global i32 0, align 4
@z80 = common dso_local global i32 0, align 4
@EL_BUSREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"z80 sync %i (%u|%u -> %u|%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoSyncZ80(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @last_z80_sync, align 4
  %7 = sub i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @cycles_68k_to_z80(i32 %8)
  %10 = load i32, i32* @z80_cycle_aim, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @z80_cycle_aim, align 4
  %14 = load i32, i32* @z80_cycle_aim, align 4
  %15 = load i32, i32* @z80_cycle_cnt, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @last_z80_sync, align 4
  %18 = load i32, i32* @z80, align 4
  %19 = call i32 @pprof_start(i32 %18)
  %20 = load i32, i32* @EL_BUSREQ, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @z80_cycle_cnt, align 4
  %23 = load i32, i32* @z80_cycle_cnt, align 4
  %24 = sdiv i32 %23, 288
  %25 = load i32, i32* @z80_cycle_aim, align 4
  %26 = load i32, i32* @z80_cycle_aim, align 4
  %27 = sdiv i32 %26, 288
  %28 = call i32 @elprintf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @z80_run(i32 %32)
  %34 = load i32, i32* @z80_cycle_cnt, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @z80_cycle_cnt, align 4
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i32, i32* @z80, align 4
  %40 = call i32 @pprof_end(i32 %39)
  ret void
}

declare dso_local i64 @cycles_68k_to_z80(i32) #1

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @z80_run(i32) #1

declare dso_local i32 @pprof_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
