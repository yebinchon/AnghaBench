; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"TransferStatus:%d\0A\00", align 1
@TransferStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CommandIndex:%d ExpectedBytes:%d\0A\00", align 1
@CommandIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@CommandFrame = common dso_local global i32* null, align 8
@PIO_StatusRead = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"TransferStatus = PIO_StatusRead\0A\00", align 1
@PIO_NoFrame = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"TransferStatus = PIO_NoFrame\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid command frame!\00", align 1
@DataIndex = common dso_local global i32 0, align 4
@DataBuffer = common dso_local global i8* null, align 8
@PIO_FinalStatus = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Invalid data frame!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @PIO_PutByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PIO_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TransferStatus, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @D(i32 %6)
  %8 = load i32, i32* @TransferStatus, align 4
  switch i32 %8, label %105 [
    i32 129, label %9
    i32 128, label %51
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @CommandIndex, align 4
  %11 = load i32, i32* @ExpectedBytes, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call i32 @D(i32 %12)
  %14 = load i32, i32* @CommandIndex, align 4
  %15 = load i32, i32* @ExpectedBytes, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32*, i32** @CommandFrame, align 8
  %20 = load i32, i32* @CommandIndex, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @CommandIndex, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @CommandIndex, align 4
  %25 = load i32, i32* @ExpectedBytes, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load i32*, i32** @CommandFrame, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 49
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32*, i32** @CommandFrame, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 56
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @PIO_StatusRead, align 4
  store i32 %38, i32* @TransferStatus, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @D(i32 %39)
  br label %45

41:                                               ; preds = %32, %27
  %42 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %42, i32* @TransferStatus, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @D(i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %17
  br label %50

47:                                               ; preds = %9
  %48 = call i32 @Log_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %49, i32* @TransferStatus, align 4
  br label %50

50:                                               ; preds = %47, %46
  br label %105

51:                                               ; preds = %1
  %52 = load i32, i32* @DataIndex, align 4
  %53 = load i32, i32* @ExpectedBytes, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** @DataBuffer, align 8
  %59 = load i32, i32* @DataIndex, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @DataIndex, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = load i32, i32* @DataIndex, align 4
  %64 = load i32, i32* @ExpectedBytes, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %55
  %67 = load i8*, i8** @DataBuffer, align 8
  %68 = load i32, i32* @ExpectedBytes, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call signext i8 @SIO_ChkSum(i8* %67, i32 %69)
  store i8 %70, i8* %3, align 1
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** @DataBuffer, align 8
  %74 = load i32, i32* @ExpectedBytes, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %72, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %66
  %82 = call signext i8 (...) @WriteSectorBack()
  store i8 %82, i8* %4, align 1
  %83 = load i8, i8* %4, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i8*, i8** @DataBuffer, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 65, i8* %88, align 1
  %89 = load i8, i8* %4, align 1
  %90 = load i8*, i8** @DataBuffer, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %89, i8* %91, align 1
  store i32 0, i32* @DataIndex, align 4
  store i32 2, i32* @ExpectedBytes, align 4
  %92 = load i32, i32* @PIO_FinalStatus, align 4
  store i32 %92, i32* @TransferStatus, align 4
  br label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %94, i32* @TransferStatus, align 4
  br label %95

95:                                               ; preds = %93, %86
  br label %100

96:                                               ; preds = %66
  %97 = load i8*, i8** @DataBuffer, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 69, i8* %98, align 1
  store i32 0, i32* @DataIndex, align 4
  store i32 1, i32* @ExpectedBytes, align 4
  %99 = load i32, i32* @PIO_FinalStatus, align 4
  store i32 %99, i32* @TransferStatus, align 4
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %55
  br label %104

102:                                              ; preds = %51
  %103 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %101
  br label %105

105:                                              ; preds = %1, %104, %50
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local signext i8 @SIO_ChkSum(i8*, i32) #1

declare dso_local signext i8 @WriteSectorBack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
