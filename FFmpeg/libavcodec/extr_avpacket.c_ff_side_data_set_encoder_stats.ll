; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_ff_side_data_set_encoder_stats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_ff_side_data_set_encoder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PKT_DATA_QUALITY_STATS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_side_data_set_encoder_stats(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @AV_PKT_DATA_QUALITY_STATS, align 4
  %17 = call i32* @av_packet_get_side_data(i32* %15, i32 %16, i32* %13)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 8, %21
  %23 = add nsw i32 8, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @AV_PKT_DATA_QUALITY_STATS, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32* @av_packet_new_side_data(i32* %24, i32 %25, i32 %26)
  store i32* %27, i32** %12, align 8
  br label %28

28:                                               ; preds = %20, %5
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 8, %33
  %35 = add nsw i32 8, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %31
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @AV_WL32(i32* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %67, %40
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 8, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AV_WL64(i32* %60, i32 %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %50

70:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32* @av_packet_get_side_data(i32*, i32, i32*) #1

declare dso_local i32* @av_packet_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @AV_WL64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
