; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_add_param_change.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_add_param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = common dso_local global i32 0, align 4
@AV_PKT_DATA_PARAM_CHANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_add_param_change(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 4, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %7, align 4
  br label %103

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT, align 4
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 8
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @AV_PKT_DATA_PARAM_CHANGE, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32* @av_packet_new_side_data(i32* %62, i32 %63, i32 %64)
  store i32* %65, i32** %16, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %7, align 4
  br label %103

71:                                               ; preds = %61
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @bytestream_put_le32(i32** %16, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @bytestream_put_le32(i32** %16, i32 %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @bytestream_put_le64(i32** %16, i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @bytestream_put_le32(i32** %16, i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @bytestream_put_le32(i32** %16, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @bytestream_put_le32(i32** %16, i32 %100)
  br label %102

102:                                              ; preds = %97, %94
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %68, %19
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_packet_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @bytestream_put_le64(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
