; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_PBI_SCSI_PutSEL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_PBI_SCSI_PutSEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBI_SCSI_SEL = common dso_local global i32 0, align 4
@scsi_phase = common dso_local global i64 0, align 8
@SCSI_PHASE_SELECTION = common dso_local global i64 0, align 8
@scsi_byte = common dso_local global i32 0, align 4
@SCSI_PHASE_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"changed SEL:%d  scsi_byte:%2x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_SCSI_PutSEL(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PBI_SCSI_SEL, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @PBI_SCSI_SEL, align 4
  %8 = load i32, i32* @PBI_SCSI_SEL, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* @scsi_phase, align 8
  %12 = load i64, i64* @SCSI_PHASE_SELECTION, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @scsi_byte, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @SCSI_PHASE_COMMAND, align 4
  %19 = call i32 @scsi_changephase(i32 %18)
  br label %20

20:                                               ; preds = %17, %14, %10, %6
  %21 = load i32, i32* @PBI_SCSI_SEL, align 4
  %22 = load i32, i32* @scsi_byte, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @D(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @scsi_changephase(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
