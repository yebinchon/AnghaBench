; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle_bpp4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle_bpp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32**, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*)* @decode_rle_bpp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle_bpp4(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
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
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %145, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %148

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @bytestream2_get_be16(i32* %34)
  store i32 %35, i32* %13, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @bytestream2_get_bytes_left(i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %4, align 4
  br label %149

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %135, %42
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %136

46:                                               ; preds = %43
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @bytestream2_get_byte(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @bytestream2_get_byte(i32* %53)
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %86, %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 257, %57
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, 240
  %67 = ashr i32 %66, 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %60
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = and i32 %78, 15
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %77, %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %55

89:                                               ; preds = %55
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 2
  store i32 %91, i32* %13, align 4
  br label %135

92:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %126, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @bytestream2_get_byte(i32* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %105, 240
  %107 = ashr i32 %106, 4
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %98
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* %15, align 4
  %119 = and i32 %118, 15
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %93

129:                                              ; preds = %93
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  %132 = add nsw i32 1, %131
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %129, %89
  br label %43

136:                                              ; preds = %43
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %9, align 8
  br label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %26

148:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %40
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
