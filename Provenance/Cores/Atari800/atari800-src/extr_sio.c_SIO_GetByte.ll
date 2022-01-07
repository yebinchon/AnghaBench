; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_GetByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_GetByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TransferStatus = common dso_local global i32 0, align 4
@SIO_SERIN_INTERVAL = common dso_local global i32 0, align 4
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@DataIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@DataBuffer = common dso_local global i32* null, align 8
@SIO_NoFrame = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid read frame!\00", align 1
@SIO_ACK_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SIO_GetByte() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @TransferStatus, align 4
  switch i32 %2, label %79 [
    i32 128, label %3
    i32 130, label %5
    i32 129, label %8
    i32 131, label %46
    i32 132, label %77
  ]

3:                                                ; preds = %0
  %4 = call i32 (...) @Command_Frame()
  store i32 %4, i32* %1, align 4
  br label %80

5:                                                ; preds = %0
  store i32 129, i32* @TransferStatus, align 4
  %6 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  %7 = shl i32 %6, 3
  store i32 %7, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %8

8:                                                ; preds = %0, %5
  %9 = load i32, i32* @DataIndex, align 4
  %10 = load i32, i32* @ExpectedBytes, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i32*, i32** @DataBuffer, align 8
  %14 = load i32, i32* @DataIndex, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @DataIndex, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @DataIndex, align 4
  %20 = load i32, i32* @ExpectedBytes, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %23, i32* @TransferStatus, align 4
  br label %41

24:                                               ; preds = %12
  %25 = load i32, i32* @DataIndex, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  br label %39

29:                                               ; preds = %24
  %30 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  %31 = load i32*, i32** @POKEY_AUDF, align 8
  %32 = load i64, i64* @POKEY_CHAN3, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  %36 = sub nsw i32 %35, 1
  %37 = sdiv i32 %36, 40
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %29, %27
  %40 = phi i32 [ %28, %27 ], [ %38, %29 ]
  store i32 %40, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %41

41:                                               ; preds = %39, %22
  br label %45

42:                                               ; preds = %8
  %43 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %44, i32* @TransferStatus, align 4
  br label %45

45:                                               ; preds = %42, %41
  br label %80

46:                                               ; preds = %0
  %47 = load i32, i32* @DataIndex, align 4
  %48 = load i32, i32* @ExpectedBytes, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i32*, i32** @DataBuffer, align 8
  %52 = load i32, i32* @DataIndex, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @DataIndex, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* @DataIndex, align 4
  %58 = load i32, i32* @ExpectedBytes, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %61, i32* @TransferStatus, align 4
  br label %72

62:                                               ; preds = %50
  %63 = load i32, i32* @DataIndex, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  %67 = load i32, i32* @SIO_ACK_INTERVAL, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  store i32 %70, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %60
  br label %76

73:                                               ; preds = %46
  %74 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %75, i32* @TransferStatus, align 4
  br label %76

76:                                               ; preds = %73, %72
  br label %80

77:                                               ; preds = %0
  %78 = call i32 (...) @CASSETTE_GetByte()
  store i32 %78, i32* %1, align 4
  br label %80

79:                                               ; preds = %0
  br label %80

80:                                               ; preds = %79, %77, %76, %45, %3
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @Command_Frame(...) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @CASSETTE_GetByte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
