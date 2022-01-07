; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_read_rle_sgi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_read_rle_sgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @read_rle_sgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rle_sgi(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %25, 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = call i32 @bytestream2_get_bytes_left(i32* %28)
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %108, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %111

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %104, %40
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %6, align 8
  %63 = call i32 @bytestream2_get_be32(i32* %8)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i32 @bytestream2_seek(i32* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %84

73:                                               ; preds = %48
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @expand_rle_row8(%struct.TYPE_5__* %74, i32* %78, i32 %79, i32 %82)
  store i32 %83, i32* %13, align 4
  br label %95

84:                                               ; preds = %48
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @expand_rle_row16(%struct.TYPE_5__* %85, i32* %89, i32 %90, i32 %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %84, %73
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %42

107:                                              ; preds = %42
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %34

111:                                              ; preds = %34
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %101, %31
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @expand_rle_row8(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @expand_rle_row16(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
