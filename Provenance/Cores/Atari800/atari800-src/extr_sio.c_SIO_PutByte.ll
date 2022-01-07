; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TransferStatus = common dso_local global i32 0, align 4
@CommandIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@CommandFrame = common dso_local global i32* null, align 8
@SIO_drive_status = common dso_local global i32* null, align 8
@SIO_OFF = common dso_local global i32 0, align 4
@BINLOAD_start_binloading = common dso_local global i32 0, align 4
@SIO_StatusRead = common dso_local global i32 0, align 4
@SIO_SERIN_INTERVAL = common dso_local global i64 0, align 8
@SIO_ACK_INTERVAL = common dso_local global i64 0, align 8
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i64 0, align 8
@SIO_NoFrame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid command frame!\00", align 1
@DataIndex = common dso_local global i32 0, align 4
@DataBuffer = common dso_local global i8* null, align 8
@SIO_FinalStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid data frame!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TransferStatus, align 4
  switch i32 %5, label %120 [
    i32 129, label %6
    i32 128, label %57
    i32 130, label %117
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @CommandIndex, align 4
  %8 = load i32, i32* @ExpectedBytes, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32*, i32** @CommandFrame, align 8
  %13 = load i32, i32* @CommandIndex, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @CommandIndex, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %11, i32* %16, align 4
  %17 = load i32, i32* @CommandIndex, align 4
  %18 = load i32, i32* @ExpectedBytes, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %10
  %21 = load i32*, i32** @CommandFrame, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 49
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load i32*, i32** @CommandFrame, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 56
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32*, i32** @SIO_drive_status, align 8
  %32 = load i32*, i32** @CommandFrame, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 49
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SIO_OFF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @BINLOAD_start_binloading, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %30
  %45 = load i32, i32* @SIO_StatusRead, align 4
  store i32 %45, i32* @TransferStatus, align 4
  %46 = load i64, i64* @SIO_SERIN_INTERVAL, align 8
  %47 = load i64, i64* @SIO_ACK_INTERVAL, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* @POKEY_DELAYED_SERIN_IRQ, align 8
  br label %51

49:                                               ; preds = %41, %25, %20
  %50 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %50, i32* @TransferStatus, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %10
  br label %56

53:                                               ; preds = %6
  %54 = call i32 @Log_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %55, i32* @TransferStatus, align 4
  br label %56

56:                                               ; preds = %53, %52
  br label %120

57:                                               ; preds = %1
  %58 = load i32, i32* @DataIndex, align 4
  %59 = load i32, i32* @ExpectedBytes, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** @DataBuffer, align 8
  %65 = load i32, i32* @DataIndex, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @DataIndex, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  %69 = load i32, i32* @DataIndex, align 4
  %70 = load i32, i32* @ExpectedBytes, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %61
  %73 = load i8*, i8** @DataBuffer, align 8
  %74 = load i32, i32* @ExpectedBytes, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call signext i8 @SIO_ChkSum(i8* %73, i32 %75)
  store i8 %76, i8* %3, align 1
  %77 = load i8, i8* %3, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8*, i8** @DataBuffer, align 8
  %80 = load i32, i32* @ExpectedBytes, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %78, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %72
  %88 = call signext i8 (...) @WriteSectorBack()
  store i8 %88, i8* %4, align 1
  %89 = load i8, i8* %4, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i8*, i8** @DataBuffer, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 65, i8* %94, align 1
  %95 = load i8, i8* %4, align 1
  %96 = load i8*, i8** @DataBuffer, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %97, align 1
  store i32 0, i32* @DataIndex, align 4
  store i32 2, i32* @ExpectedBytes, align 4
  %98 = load i64, i64* @SIO_SERIN_INTERVAL, align 8
  %99 = load i64, i64* @SIO_ACK_INTERVAL, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* @POKEY_DELAYED_SERIN_IRQ, align 8
  %101 = load i32, i32* @SIO_FinalStatus, align 4
  store i32 %101, i32* @TransferStatus, align 4
  br label %104

102:                                              ; preds = %87
  %103 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %103, i32* @TransferStatus, align 4
  br label %104

104:                                              ; preds = %102, %92
  br label %112

105:                                              ; preds = %72
  %106 = load i8*, i8** @DataBuffer, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 69, i8* %107, align 1
  store i32 0, i32* @DataIndex, align 4
  store i32 1, i32* @ExpectedBytes, align 4
  %108 = load i64, i64* @SIO_SERIN_INTERVAL, align 8
  %109 = load i64, i64* @SIO_ACK_INTERVAL, align 8
  %110 = add nsw i64 %108, %109
  store i64 %110, i64* @POKEY_DELAYED_SERIN_IRQ, align 8
  %111 = load i32, i32* @SIO_FinalStatus, align 4
  store i32 %111, i32* @TransferStatus, align 4
  br label %112

112:                                              ; preds = %105, %104
  br label %113

113:                                              ; preds = %112, %61
  br label %116

114:                                              ; preds = %57
  %115 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %113
  br label %120

117:                                              ; preds = %1
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @CASSETTE_PutByte(i32 %118)
  br label %120

120:                                              ; preds = %1, %117, %116, %56
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local signext i8 @SIO_ChkSum(i8*, i32) #1

declare dso_local signext i8 @WriteSectorBack(...) #1

declare dso_local i32 @CASSETTE_PutByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
