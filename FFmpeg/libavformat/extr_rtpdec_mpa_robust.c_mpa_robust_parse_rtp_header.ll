; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpa_robust.c_mpa_robust_parse_rtp_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpa_robust.c_mpa_robust_parse_rtp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid %d bytes packet\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*)* @mpa_robust_parse_rtp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpa_robust_parse_rtp_header(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @AV_LOG_ERROR, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @av_log(i32* %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %6, align 4
  br label %49

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -193
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %47

42:                                               ; preds = %21
  store i32 2, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @AV_RB16(i32* %43)
  %45 = and i32 %44, -49153
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
