; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32**, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %150, %4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %153

36:                                               ; preds = %30
  %37 = load i32*, i32** %13, align 8
  store i32* %37, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @bytestream2_get_be16(i32* %38)
  store i32 %39, i32* %15, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @bytestream2_get_bytes_left(i32* %40)
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %5, align 4
  br label %154

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %140, %46
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %141

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @bytestream2_get_byte(i32* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @bytestream2_get_byte(i32* %57)
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %91, %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 257, %61
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %19, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %84, %81, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %59

94:                                               ; preds = %59
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 2
  store i32 %96, i32* %15, align 4
  br label %140

97:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %132, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @bytestream2_get_byte(i32* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* %17, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %19, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %125, %122, %115
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %98

135:                                              ; preds = %98
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 2, %136
  %138 = load i32, i32* %15, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %135, %94
  br label %47

141:                                              ; preds = %47
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %13, align 8
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %30

153:                                              ; preds = %30
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %44
  %155 = load i32, i32* %5, align 4
  ret i32 %155
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
