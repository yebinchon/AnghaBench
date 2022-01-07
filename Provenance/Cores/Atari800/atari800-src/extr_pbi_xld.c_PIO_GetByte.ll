; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_GetByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_GetByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"PIO_GetByte TransferStatus:%d\0A\00", align 1
@TransferStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ReadFrame: DataIndex:%d ExpectedBytes:%d\0A\00", align 1
@DataIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@DataBuffer = common dso_local global i32* null, align 8
@PIO_NoFrame = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid read frame!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @PIO_GetByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PIO_GetByte() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @TransferStatus, align 4
  %3 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = call i32 @D(i32 %3)
  %5 = load i32, i32* @TransferStatus, align 4
  switch i32 %5, label %55 [
    i32 128, label %6
    i32 130, label %8
    i32 129, label %9
    i32 131, label %34
  ]

6:                                                ; preds = %0
  %7 = call i32 (...) @PIO_Command_Frame()
  store i32 %7, i32* %1, align 4
  br label %56

8:                                                ; preds = %0
  store i32 129, i32* @TransferStatus, align 4
  br label %9

9:                                                ; preds = %0, %8
  %10 = load i32, i32* @DataIndex, align 4
  %11 = load i32, i32* @ExpectedBytes, align 4
  %12 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call i32 @D(i32 %12)
  %14 = load i32, i32* @DataIndex, align 4
  %15 = load i32, i32* @ExpectedBytes, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load i32*, i32** @DataBuffer, align 8
  %19 = load i32, i32* @DataIndex, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @DataIndex, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @DataIndex, align 4
  %25 = load i32, i32* @ExpectedBytes, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %28, i32* @TransferStatus, align 4
  br label %29

29:                                               ; preds = %27, %17
  br label %33

30:                                               ; preds = %9
  %31 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %32, i32* @TransferStatus, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %56

34:                                               ; preds = %0
  %35 = load i32, i32* @DataIndex, align 4
  %36 = load i32, i32* @ExpectedBytes, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32*, i32** @DataBuffer, align 8
  %40 = load i32, i32* @DataIndex, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @DataIndex, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @DataIndex, align 4
  %46 = load i32, i32* @ExpectedBytes, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %49, i32* @TransferStatus, align 4
  br label %50

50:                                               ; preds = %48, %38
  br label %54

51:                                               ; preds = %34
  %52 = call i32 @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %53, i32* @TransferStatus, align 4
  br label %54

54:                                               ; preds = %51, %50
  br label %56

55:                                               ; preds = %0
  br label %56

56:                                               ; preds = %55, %54, %33, %6
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @PIO_Command_Frame(...) #1

declare dso_local i32 @Log_print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
