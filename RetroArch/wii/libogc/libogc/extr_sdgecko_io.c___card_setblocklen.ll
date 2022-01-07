; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_setblocklen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_setblocklen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@PAGE_SIZE512 = common dso_local global i32 0, align 4
@_ioResponse = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @__card_setblocklen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_setblocklen(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MAX_DRIVE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %15, i64* %3, align 8
  br label %65

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAGE_SIZE512, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @PAGE_SIZE512, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 16, i32* %23, align 16
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %41 = call i64 @__card_writecmd(i64 %39, i32* %40, i32 5)
  store i64 %41, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %65

45:                                               ; preds = %22
  %46 = load i64, i64* %4, align 8
  %47 = load i32**, i32*** @_ioResponse, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @__card_readresponse(i64 %46, i32* %50, i32 1)
  store i64 %51, i64* %7, align 8
  %52 = icmp ult i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %3, align 8
  br label %65

55:                                               ; preds = %45
  %56 = load i64, i64* %4, align 8
  %57 = load i32**, i32*** @_ioResponse, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @__check_response(i64 %56, i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %55, %53, %43, %14
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @__card_writecmd(i64, i32*, i32) #1

declare dso_local i64 @__card_readresponse(i64, i32*, i32) #1

declare dso_local i64 @__check_response(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
