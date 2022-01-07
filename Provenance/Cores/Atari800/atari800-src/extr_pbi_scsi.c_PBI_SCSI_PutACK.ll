; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_PBI_SCSI_PutACK.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_PBI_SCSI_PutACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBI_SCSI_ACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PBI_SCSI_REQ = common dso_local global i32 0, align 4
@scsi_phase = common dso_local global i64 0, align 8
@SCSI_PHASE_SELECTION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_SCSI_PutACK(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PBI_SCSI_ACK, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @PBI_SCSI_ACK, align 4
  %8 = load i32, i32* @PBI_SCSI_ACK, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* @PBI_SCSI_REQ, align 4
  br label %20

12:                                               ; preds = %6
  %13 = load i64, i64* @scsi_phase, align 8
  %14 = load i64, i64* @SCSI_PHASE_SELECTION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* @PBI_SCSI_REQ, align 4
  %18 = call i32 (...) @scsi_nextbyte()
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @scsi_nextbyte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
