; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_vc2hq.c_ff_rtp_send_vc2hq.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_vc2hq.c_ff_rtp_send_vc2hq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIRAC_DATA_UNIT_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"VC-2 parse code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_vc2hq(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %10, align 8
  br label %18

18:                                               ; preds = %55, %4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ult i32* %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = call i64 @AV_RB32(i32* %27)
  store i64 %28, i64* %12, align 8
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %51 [
    i32 128, label %30
    i32 131, label %30
    i32 129, label %40
    i32 132, label %50
    i32 130, label %50
  ]

30:                                               ; preds = %22, %22
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call i32 @send_packet(i32* %31, i32 %32, i32 0, i32* %35, i64 %38, i32 0, i32 0, i32 0)
  br label %55

40:                                               ; preds = %22
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @send_picture(i32* %41, i32* %44, i64 %47, i32 %48)
  br label %55

50:                                               ; preds = %22, %22
  br label %55

51:                                               ; preds = %22
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @avpriv_report_missing_feature(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %50, %40, %30
  %56 = load i64, i64* %12, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %10, align 8
  br label %18

59:                                               ; preds = %18
  ret void
}

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @send_packet(i32*, i32, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @send_picture(i32*, i32*, i64, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
