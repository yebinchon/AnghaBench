; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgienc.c_sgi_rle_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgienc.c_sgi_rle_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @sgi_rle_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_rle_encode(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (i32*, i32)*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @bytestream2_tell_p(i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store void (i32*, i32)* @bytestream2_put_byte, void (i32*, i32)** %14, align 8
  br label %22

21:                                               ; preds = %4
  store void (i32*, i32)* @bytestream2_put_be16, void (i32*, i32)** %14, align 8
  br label %22

22:                                               ; preds = %21, %20
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %119, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ff_rle_count_pixels(i32* %28, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @bytestream2_get_bytes_left_p(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 2
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %5, align 4
  br label %128

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @AV_RB16(i32* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %10, align 4
  %55 = load void (i32*, i32)*, void (i32*, i32)** %14, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %11, align 4
  call void %55(i32* %56, i32 %57)
  %58 = load void (i32*, i32)*, void (i32*, i32)** %14, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %10, align 4
  call void %58(i32* %59, i32 %60)
  br label %112

61:                                               ; preds = %27
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ff_rle_count_pixels(i32* %62, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @bytestream2_get_bytes_left_p(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %70, %72
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %5, align 4
  br label %128

77:                                               ; preds = %61
  %78 = load void (i32*, i32)*, void (i32*, i32)** %14, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 128
  call void %78(i32* %79, i32 %81)
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %108, %77
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  br label %103

95:                                               ; preds = %86
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = call i32 @AV_RB16(i32* %101)
  br label %103

103:                                              ; preds = %95, %89
  %104 = phi i32 [ %94, %89 ], [ %102, %95 ]
  store i32 %104, i32* %10, align 4
  %105 = load void (i32*, i32)*, void (i32*, i32)** %14, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %10, align 4
  call void %105(i32* %106, i32 %107)
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %82

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111, %53
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32*, i32** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %7, align 8
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %23

123:                                              ; preds = %23
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @bytestream2_tell_p(i32* %124)
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %75, %42
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local void @bytestream2_put_byte(i32*, i32) #1

declare dso_local void @bytestream2_put_be16(i32*, i32) #1

declare dso_local i32 @ff_rle_count_pixels(i32*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left_p(i32*) #1

declare dso_local i32 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
