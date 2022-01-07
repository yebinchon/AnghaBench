; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_doUnmount.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_doUnmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@_ioFlag = common dso_local global i64* null, align 8
@NOT_INITIALIZED = common dso_local global i64 0, align 8
@_ioCardInserted = common dso_local global i64* null, align 8
@FALSE = common dso_local global i64 0, align 8
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdgecko_doUnmount(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MAX_DRIVE, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %12, i64* %2, align 8
  br label %63

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @__card_check(i64 %14)
  %16 = load i64, i64* @TRUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load i64*, i64** @_ioFlag, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NOT_INITIALIZED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @__card_sendappcmd(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %43

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @__card_sendcmd(i64 %31, i32 42, i32* null)
  store i64 %32, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %43

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @__card_response1(i64 %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %35, %18, %13
  %39 = load i64, i64* @NOT_INITIALIZED, align 8
  %40 = load i64*, i64** @_ioFlag, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %34, %29
  %44 = load i64*, i64** @_ioCardInserted, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i64, i64* @FALSE, align 8
  %52 = load i64*, i64** @_ioCardInserted, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @EXI_Detach(i64 %55)
  br label %57

57:                                               ; preds = %50, %43
  br i1 true, label %58, label %61

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @_ioRetryCB(i64 %59)
  store i64 %60, i64* %2, align 8
  br label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %58, %11
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i64 @__card_check(i64) #1

declare dso_local i64 @__card_sendappcmd(i64) #1

declare dso_local i64 @__card_sendcmd(i64, i32, i32*) #1

declare dso_local i64 @__card_response1(i64) #1

declare dso_local i32 @EXI_Detach(i64) #1

declare dso_local i64 @_ioRetryCB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
