; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_tskLcd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_tskLcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMALEN = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Rxbuf err! pos %d val %x xor %x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tskLcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tskLcd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @DMALEN, align 4
  %8 = mul nsw i32 %7, 2
  %9 = call i32* @malloc(i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @DMALEN, align 4
  %11 = mul nsw i32 %10, 2
  %12 = call i32* @malloc(i32 %11)
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = call i32 (...) @lcdIfaceInit()
  br label %14

14:                                               ; preds = %1, %79
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DMALEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %20, %21
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %15

30:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DMALEN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @DMALEN, align 4
  %47 = call i32 @sendRecvBufDma(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %49 = sdiv i32 20, %48
  %50 = call i32 @vTaskDelay(i32 %49)
  %51 = call i32 (...) @finishDma()
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %76, %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @DMALEN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %52

79:                                               ; preds = %52
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fflush(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %14
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @lcdIfaceInit(...) #1

declare dso_local i32 @sendRecvBufDma(i32*, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @finishDma(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
