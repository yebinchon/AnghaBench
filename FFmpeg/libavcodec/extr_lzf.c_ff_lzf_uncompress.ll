; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzf.c_ff_lzf_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzf.c_ff_lzf_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZF_LITERAL_MAX = common dso_local global i32 0, align 4
@LZF_LONG_BACKREF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_lzf_uncompress(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %134, %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bytestream2_get_bytes_left(i32* %17)
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %135

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @bytestream2_get_byte(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @LZF_LITERAL_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32**, i32*** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @av_reallocp(i32** %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %138

50:                                               ; preds = %35
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %50, %26
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @bytestream2_get_buffer(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %134

68:                                               ; preds = %20
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 5
  %71 = add nsw i32 2, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 31
  %74 = shl i32 %73, 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @LZF_LONG_BACKREF, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @bytestream2_get_byte(i32* %80)
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %79, %68
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @bytestream2_get_byte(i32* %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %4, align 4
  br label %138

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp sgt i32 %95, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 2
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = load i32**, i32*** %6, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @av_reallocp(i32** %108, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %138

116:                                              ; preds = %101
  %117 = load i32**, i32*** %6, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %9, align 8
  br label %122

122:                                              ; preds = %116, %94
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @av_memcpy_backptr(i32* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %9, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %122, %56
  br label %16

135:                                              ; preds = %16
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %135, %114, %92, %48
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_reallocp(i32**, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
