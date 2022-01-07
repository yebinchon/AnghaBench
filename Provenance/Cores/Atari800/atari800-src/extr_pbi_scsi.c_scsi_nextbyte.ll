; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_scsi_nextbyte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_scsi.c_scsi_nextbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scsi_phase = common dso_local global i64 0, align 8
@SCSI_PHASE_DATAIN = common dso_local global i64 0, align 8
@scsi_bufpos = common dso_local global i32 0, align 4
@scsi_count = common dso_local global i32 0, align 4
@SCSI_PHASE_STATUS = common dso_local global i64 0, align 8
@scsi_buffer = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"SCSI status\0A\00", align 1
@SCSI_PHASE_MSGIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"SCSI msg\0A\00", align 1
@SCSI_PHASE_SELECTION = common dso_local global i64 0, align 8
@SCSI_PHASE_COMMAND = common dso_local global i64 0, align 8
@scsi_byte = common dso_local global i32 0, align 4
@SCSI_PHASE_DATAOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"SCSI data out:%2x\0A\00", align 1
@PBI_SCSI_disk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scsi_nextbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_nextbyte() #0 {
  %1 = load i64, i64* @scsi_phase, align 8
  %2 = load i64, i64* @SCSI_PHASE_DATAIN, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i32, i32* @scsi_bufpos, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @scsi_bufpos, align 4
  %7 = load i32, i32* @scsi_bufpos, align 4
  %8 = load i32, i32* @scsi_count, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load i64, i64* @SCSI_PHASE_STATUS, align 8
  %12 = call i32 @scsi_changephase(i64 %11)
  %13 = load i32*, i32** @scsi_buffer, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %4
  br label %82

16:                                               ; preds = %0
  %17 = load i64, i64* @scsi_phase, align 8
  %18 = load i64, i64* @SCSI_PHASE_STATUS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @D(i32 %21)
  %23 = load i64, i64* @SCSI_PHASE_MSGIN, align 8
  %24 = call i32 @scsi_changephase(i64 %23)
  %25 = load i32*, i32** @scsi_buffer, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 0, i32* %26, align 4
  br label %81

27:                                               ; preds = %16
  %28 = load i64, i64* @scsi_phase, align 8
  %29 = load i64, i64* @SCSI_PHASE_MSGIN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @D(i32 %32)
  %34 = load i64, i64* @SCSI_PHASE_SELECTION, align 8
  %35 = call i32 @scsi_changephase(i64 %34)
  br label %80

36:                                               ; preds = %27
  %37 = load i64, i64* @scsi_phase, align 8
  %38 = load i64, i64* @SCSI_PHASE_COMMAND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* @scsi_byte, align 4
  %42 = load i32*, i32** @scsi_buffer, align 8
  %43 = load i32, i32* @scsi_bufpos, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @scsi_bufpos, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @scsi_bufpos, align 4
  %48 = icmp sge i32 %47, 6
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (...) @scsi_process_command()
  store i32 0, i32* @scsi_bufpos, align 4
  br label %51

51:                                               ; preds = %49, %40
  br label %79

52:                                               ; preds = %36
  %53 = load i64, i64* @scsi_phase, align 8
  %54 = load i64, i64* @SCSI_PHASE_DATAOUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load i32, i32* @scsi_byte, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = call i32 @D(i32 %58)
  %60 = load i32, i32* @scsi_byte, align 4
  %61 = load i32*, i32** @scsi_buffer, align 8
  %62 = load i32, i32* @scsi_bufpos, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @scsi_bufpos, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* @scsi_bufpos, align 4
  %67 = load i32, i32* @scsi_count, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load i32*, i32** @scsi_buffer, align 8
  %71 = load i32, i32* @PBI_SCSI_disk, align 4
  %72 = call i32 @fwrite(i32* %70, i32 1, i32 256, i32 %71)
  %73 = load i64, i64* @SCSI_PHASE_STATUS, align 8
  %74 = call i32 @scsi_changephase(i64 %73)
  %75 = load i32*, i32** @scsi_buffer, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %56
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %31
  br label %81

81:                                               ; preds = %80, %20
  br label %82

82:                                               ; preds = %81, %15
  ret void
}

declare dso_local i32 @scsi_changephase(i64) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @scsi_process_command(...) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
