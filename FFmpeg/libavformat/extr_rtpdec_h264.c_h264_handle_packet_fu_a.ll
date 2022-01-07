; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_h264_handle_packet_fu_a.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_h264_handle_packet_fu_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Too short data for FU-A H.264 RTP packet\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32*, i32)* @h264_handle_packet_fu_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_handle_packet_fu_a(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 @av_log(i32* %24, i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %8, align 4
  br label %67

28:                                               ; preds = %7
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = ashr i32 %35, 7
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %17, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %16, align 4
  %40 = and i32 %39, 224
  %41 = load i32, i32* %19, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %20, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %28
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %49, %28
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @ff_h264_handle_frag_packet(i32* %62, i32* %63, i32 %64, i32 %65, i32* %20, i32 1)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %23
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @ff_h264_handle_frag_packet(i32*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
