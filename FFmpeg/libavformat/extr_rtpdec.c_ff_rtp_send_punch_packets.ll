; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_rtp_send_punch_packets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_rtp_send_punch_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTP_VERSION = common dso_local global i32 0, align 4
@RTCP_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_punch_packets(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i64 @avio_open_dyn_buf(i32** %3)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @RTP_VERSION, align 4
  %12 = shl i32 %11, 6
  %13 = call i32 @avio_w8(i32* %10, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @avio_w8(i32* %14, i32 0)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @avio_wb16(i32* %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @avio_wb32(i32* %18, i32 0)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @avio_wb32(i32* %20, i32 0)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @avio_flush(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @avio_close_dyn_buf(i32* %24, i32** %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %9
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ffurl_write(i32* %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28, %9
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @av_free(i32* %37)
  %39 = call i64 @avio_open_dyn_buf(i32** %3)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %71

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @RTP_VERSION, align 4
  %45 = shl i32 %44, 6
  %46 = call i32 @avio_w8(i32* %43, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @RTCP_RR, align 4
  %49 = call i32 @avio_w8(i32* %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @avio_wb16(i32* %50, i32 1)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @avio_wb32(i32* %52, i32 0)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @avio_flush(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @avio_close_dyn_buf(i32* %56, i32** %4)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %42
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ffurl_write(i32* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60, %42
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @av_free(i32* %69)
  br label %71

71:                                               ; preds = %68, %41, %8
  ret void
}

declare dso_local i64 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @ffurl_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
