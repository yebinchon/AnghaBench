; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateLoad_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateLoad_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JOB940_PICOSTATELOAD = common dso_local global i32 0, align 4
@writebuff_ptr = common dso_local global i64 0, align 8
@addr_A1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612PicoStateLoad_940() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @YM2612GetRegs()
  store i32* %2, i32** %1, align 8
  %3 = load i32, i32* @JOB940_PICOSTATELOAD, align 4
  %4 = call i32 @add_job_940(i32 %3)
  %5 = load i32, i32* @JOB940_PICOSTATELOAD, align 4
  %6 = call i64 @CHECK_BUSY(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @JOB940_PICOSTATELOAD, align 4
  %10 = call i32 @wait_busy_940(i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  store i64 0, i64* @writebuff_ptr, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 512
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @addr_A1, align 4
  ret void
}

declare dso_local i32* @YM2612GetRegs(...) #1

declare dso_local i32 @add_job_940(i32) #1

declare dso_local i64 @CHECK_BUSY(i32) #1

declare dso_local i32 @wait_busy_940(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
