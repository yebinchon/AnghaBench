; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snappy.c_ff_snappy_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snappy.c_ff_snappy_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_snappy_uncompress(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @decode_len(i32* %13)
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @AVERROR_BUFFER_TOO_SMALL, align 4
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %74, %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @bytestream2_get_bytes_left(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bytestream2_get_byte(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 2
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 3
  switch i32 %41, label %69 [
    i32 128, label %42
    i32 131, label %48
    i32 130, label %55
    i32 129, label %62
  ]

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @snappy_literal(i32* %43, i32* %44, i64 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %69

48:                                               ; preds = %35
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @snappy_copy1(i32* %49, i32* %50, i32* %51, i64 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %69

55:                                               ; preds = %35
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @snappy_copy2(i32* %56, i32* %57, i32* %58, i64 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %69

62:                                               ; preds = %35
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @snappy_copy4(i32* %63, i32* %64, i32* %65, i64 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %35, %62, %55, %48, %42
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %8, align 8
  br label %31

83:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %72, %25, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @decode_len(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @snappy_literal(i32*, i32*, i64, i32) #1

declare dso_local i32 @snappy_copy1(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @snappy_copy2(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @snappy_copy4(i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
