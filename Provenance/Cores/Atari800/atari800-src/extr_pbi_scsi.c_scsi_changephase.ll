; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_scsi_changephase.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_scsi_changephase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"scsi_changephase:%d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@PBI_SCSI_REQ = common dso_local global i8* null, align 8
@PBI_SCSI_BSY = common dso_local global i8* null, align 8
@PBI_SCSI_CD = common dso_local global i8* null, align 8
@PBI_SCSI_IO = common dso_local global i8* null, align 8
@PBI_SCSI_MSG = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@scsi_bufpos = common dso_local global i64 0, align 8
@scsi_phase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @scsi_changephase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_changephase(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 @D(i32 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %43 [
    i32 129, label %7
    i32 131, label %13
    i32 132, label %19
    i32 133, label %25
    i32 128, label %31
    i32 130, label %37
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** @PBI_SCSI_REQ, align 8
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** @PBI_SCSI_BSY, align 8
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** @PBI_SCSI_CD, align 8
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** @PBI_SCSI_IO, align 8
  %12 = load i8*, i8** @FALSE, align 8
  store i8* %12, i8** @PBI_SCSI_MSG, align 8
  br label %43

13:                                               ; preds = %1
  %14 = load i8*, i8** @TRUE, align 8
  store i8* %14, i8** @PBI_SCSI_REQ, align 8
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** @PBI_SCSI_BSY, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** @PBI_SCSI_CD, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** @PBI_SCSI_IO, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** @PBI_SCSI_MSG, align 8
  br label %43

19:                                               ; preds = %1
  %20 = load i8*, i8** @TRUE, align 8
  store i8* %20, i8** @PBI_SCSI_REQ, align 8
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** @PBI_SCSI_BSY, align 8
  %22 = load i8*, i8** @FALSE, align 8
  store i8* %22, i8** @PBI_SCSI_CD, align 8
  %23 = load i8*, i8** @TRUE, align 8
  store i8* %23, i8** @PBI_SCSI_IO, align 8
  %24 = load i8*, i8** @FALSE, align 8
  store i8* %24, i8** @PBI_SCSI_MSG, align 8
  br label %43

25:                                               ; preds = %1
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** @PBI_SCSI_REQ, align 8
  %27 = load i8*, i8** @TRUE, align 8
  store i8* %27, i8** @PBI_SCSI_BSY, align 8
  %28 = load i8*, i8** @TRUE, align 8
  store i8* %28, i8** @PBI_SCSI_CD, align 8
  %29 = load i8*, i8** @FALSE, align 8
  store i8* %29, i8** @PBI_SCSI_IO, align 8
  %30 = load i8*, i8** @FALSE, align 8
  store i8* %30, i8** @PBI_SCSI_MSG, align 8
  br label %43

31:                                               ; preds = %1
  %32 = load i8*, i8** @TRUE, align 8
  store i8* %32, i8** @PBI_SCSI_REQ, align 8
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @PBI_SCSI_BSY, align 8
  %34 = load i8*, i8** @TRUE, align 8
  store i8* %34, i8** @PBI_SCSI_CD, align 8
  %35 = load i8*, i8** @TRUE, align 8
  store i8* %35, i8** @PBI_SCSI_IO, align 8
  %36 = load i8*, i8** @FALSE, align 8
  store i8* %36, i8** @PBI_SCSI_MSG, align 8
  br label %43

37:                                               ; preds = %1
  %38 = load i8*, i8** @TRUE, align 8
  store i8* %38, i8** @PBI_SCSI_REQ, align 8
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** @PBI_SCSI_BSY, align 8
  %40 = load i8*, i8** @TRUE, align 8
  store i8* %40, i8** @PBI_SCSI_CD, align 8
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** @PBI_SCSI_IO, align 8
  %42 = load i8*, i8** @TRUE, align 8
  store i8* %42, i8** @PBI_SCSI_MSG, align 8
  br label %43

43:                                               ; preds = %1, %37, %31, %25, %19, %13, %7
  store i64 0, i64* @scsi_bufpos, align 8
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* @scsi_phase, align 4
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
