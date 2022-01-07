; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sendCMD8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sendCMD8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioResponse = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_sendCMD8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_sendCMD8(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [5 x i32], align 16
  store i64 %0, i64* %3, align 8
  %6 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 20, i1 false)
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAX_DRIVE, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %14, i64* %2, align 8
  br label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 8, i32* %16, align 16
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 170, i32* %18, align 16
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %21 = call i64 @__card_writecmd(i64 %19, i32* %20, i32 5)
  store i64 %21, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %2, align 8
  br label %45

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = load i32**, i32*** @_ioResponse, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @__card_readresponse(i64 %26, i32* %30, i32 5)
  store i64 %31, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %45

35:                                               ; preds = %25
  %36 = load i64, i64* %3, align 8
  %37 = load i32**, i32*** @_ioResponse, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @__check_response(i64 %36, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %35, %33, %23, %13
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__card_writecmd(i64, i32*, i32) #2

declare dso_local i64 @__card_readresponse(i64, i32*, i32) #2

declare dso_local i64 @__check_response(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
