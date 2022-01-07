; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_SwitchCommandFrame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_SwitchCommandFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TransferStatus = common dso_local global i64 0, align 8
@SIO_NoFrame = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unexpected command frame at state %x.\00", align 1
@CommandIndex = common dso_local global i64 0, align 8
@DataIndex = common dso_local global i64 0, align 8
@ExpectedBytes = common dso_local global i32 0, align 4
@SIO_CommandFrame = common dso_local global i64 0, align 8
@SIO_StatusRead = common dso_local global i64 0, align 8
@SIO_ReadFrame = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Command frame %02x unfinished.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_SwitchCommandFrame(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i64, i64* @TransferStatus, align 8
  %7 = load i64, i64* @SIO_NoFrame, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i64, i64* @TransferStatus, align 8
  %11 = call i32 @Log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %9, %5
  store i64 0, i64* @CommandIndex, align 8
  store i64 0, i64* @DataIndex, align 8
  store i32 5, i32* @ExpectedBytes, align 4
  %13 = load i64, i64* @SIO_CommandFrame, align 8
  store i64 %13, i64* @TransferStatus, align 8
  br label %39

14:                                               ; preds = %1
  %15 = load i64, i64* @TransferStatus, align 8
  %16 = load i64, i64* @SIO_StatusRead, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i64, i64* @TransferStatus, align 8
  %20 = load i64, i64* @SIO_NoFrame, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i64, i64* @TransferStatus, align 8
  %24 = load i64, i64* @SIO_ReadFrame, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i64, i64* @TransferStatus, align 8
  %28 = load i64, i64* @SIO_CommandFrame, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* @CommandIndex, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* @TransferStatus, align 8
  %35 = call i32 @Log_print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @SIO_NoFrame, align 8
  store i64 %37, i64* @TransferStatus, align 8
  br label %38

38:                                               ; preds = %36, %22, %18, %14
  store i64 0, i64* @CommandIndex, align 8
  br label %39

39:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @Log_print(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
