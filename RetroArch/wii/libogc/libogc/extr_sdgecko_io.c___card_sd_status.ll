; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sd_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioPageSize = common dso_local global i32* null, align 8
@g_CardStatus = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_sd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_sd_status(i64 %0) #0 {
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
  br label %59

13:                                               ; preds = %7
  %14 = load i32*, i32** @_ioPageSize, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 64
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32*, i32** @_ioPageSize, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 64, i32* %22, align 4
  %23 = load i64, i64* %3, align 8
  %24 = load i32*, i32** @_ioPageSize, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @__card_setblocklen(i64 %23, i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %59

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @__card_sendappcmd(i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %59

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @__card_sendcmd(i64 %40, i32 13, i32* null)
  store i64 %41, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %59

45:                                               ; preds = %39
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @__card_response2(i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %59

51:                                               ; preds = %45
  %52 = load i64, i64* %3, align 8
  %53 = load i32*, i32** @g_CardStatus, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @__card_dataread(i64 %52, i32 %56, i32 64)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %51, %49, %43, %37, %30, %11
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i64 @__card_setblocklen(i64, i32) #1

declare dso_local i64 @__card_sendappcmd(i64) #1

declare dso_local i64 @__card_sendcmd(i64, i32, i32*) #1

declare dso_local i64 @__card_response2(i64) #1

declare dso_local i64 @__card_dataread(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
