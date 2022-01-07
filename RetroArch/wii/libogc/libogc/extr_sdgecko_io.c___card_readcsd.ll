; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_readcsd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_readcsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioResponse = common dso_local global i32** null, align 8
@g_CSD = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_readcsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_readcsd(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 20, i1 false)
  %7 = load i64, i64* %3, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAX_DRIVE, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %14, i64* %2, align 8
  br label %57

15:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 9, i32* %16, align 16
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %19 = call i64 @__card_writecmd(i64 %17, i32* %18, i32 5)
  store i64 %19, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %57

23:                                               ; preds = %15
  %24 = load i64, i64* %3, align 8
  %25 = load i32**, i32*** @_ioResponse, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @__card_readresponse(i64 %24, i32* %28, i32 1)
  store i64 %29, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %2, align 8
  br label %57

33:                                               ; preds = %23
  %34 = load i64, i64* %3, align 8
  %35 = load i32**, i32*** @_ioResponse, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @__check_response(i64 %34, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load i64, i64* %3, align 8
  %46 = load i32*, i32** @g_CSD, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @__card_dataread(i64 %45, i32 %49, i32 16)
  store i64 %50, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %2, align 8
  br label %57

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %52, %31, %21, %13
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__card_writecmd(i64, i32*, i32) #2

declare dso_local i64 @__card_readresponse(i64, i32*, i32) #2

declare dso_local i64 @__check_response(i64, i32) #2

declare dso_local i64 @__card_dataread(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
