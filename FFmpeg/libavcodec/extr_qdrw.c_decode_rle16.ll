; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i32** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*)* @decode_rle16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle16(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %123, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %126

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @bytestream2_get_be16(i32* %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %13, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @bytestream2_get_bytes_left(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %4, align 4
  br label %127

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %113, %43
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @bytestream2_get_byte(i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @bytestream2_get_be16(i32* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %74, %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 257, %59
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 3
  store i32 %79, i32* %13, align 4
  br label %113

80:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = call i8* @bytestream2_get_be16(i32* %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  br label %102

99:                                               ; preds = %86
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @bytestream2_skip(i32* %100, i32 2)
  br label %102

102:                                              ; preds = %99, %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 1, %109
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %106, %77
  br label %44

114:                                              ; preds = %44
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %9, align 8
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %26

126:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %41
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i8* @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
