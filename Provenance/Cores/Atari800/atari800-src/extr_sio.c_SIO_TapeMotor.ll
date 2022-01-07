; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_TapeMotor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_TapeMotor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TransferStatus = common dso_local global i64 0, align 8
@SIO_NoFrame = common dso_local global i64 0, align 8
@SIO_CasReadWrite = common dso_local global i64 0, align 8
@SIO_last_drive = common dso_local global i32 0, align 4
@SIO_last_op_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_TapeMotor(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @CASSETTE_TapeMotor(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i64, i64* @TransferStatus, align 8
  %9 = load i64, i64* @SIO_NoFrame, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @TransferStatus, align 8
  %13 = load i64, i64* @SIO_CasReadWrite, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %7
  %16 = load i64, i64* @SIO_CasReadWrite, align 8
  store i64 %16, i64* @TransferStatus, align 8
  br label %17

17:                                               ; preds = %15, %11
  store i32 96, i32* @SIO_last_drive, align 4
  store i32 16, i32* @SIO_last_op_time, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i64, i64* @TransferStatus, align 8
  %20 = load i64, i64* @SIO_CasReadWrite, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @SIO_NoFrame, align 8
  store i64 %23, i64* @TransferStatus, align 8
  br label %24

24:                                               ; preds = %22, %18
  store i32 0, i32* @SIO_last_op_time, align 4
  br label %25

25:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @CASSETTE_TapeMotor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
