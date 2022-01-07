; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_24bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_24bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @qtrle_decode_24bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtrle_decode_24bpp(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %35, %40
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %169, %3
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %173

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @bytestream2_get_byte(i32* %49)
  %51 = sub nsw i32 %50, 1
  %52 = mul nsw i32 %51, 3
  %53 = add nsw i32 %47, %52
  store i32 %53, i32* %9, align 4
  %54 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %55

55:                                               ; preds = %168, %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @bytestream2_get_byte(i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %169

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @bytestream2_get_bytes_left(i32* %62)
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %173

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @bytestream2_get_byte(i32* %71)
  %73 = sub nsw i32 %72, 1
  %74 = mul nsw i32 %73, 3
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %168

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = call i32 @bytestream2_get_ne16(i32* %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @bytestream2_get_byte(i32* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, 3
  %92 = call i32 @CHECK_PIXEL_PTR(i32 %91)
  br label %93

93:                                               ; preds = %97, %81
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %7, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @AV_WN16(i32* %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 3
  store i32 %111, i32* %9, align 4
  br label %93

112:                                              ; preds = %93
  br label %167

113:                                              ; preds = %78
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %114, 3
  %116 = call i32 @CHECK_PIXEL_PTR(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %123, %113
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = call i32 @bytestream2_get_ne32(i32* %129)
  %131 = call i32 @AV_WN32(i32* %127, i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = call i32 @bytestream2_get_ne16(i32* %138)
  %140 = call i32 @AV_WN16(i32* %136, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 6
  store i32 %142, i32* %9, align 4
  br label %119

143:                                              ; preds = %119
  %144 = load i32, i32* %7, align 4
  %145 = srem i32 %144, 2
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %143
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = call i32 @bytestream2_get_ne16(i32* %153)
  %155 = call i32 @AV_WN16(i32* %151, i32 %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = call i32 @bytestream2_get_byte(i32* %157)
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 3
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %147, %143
  br label %167

167:                                              ; preds = %166, %112
  br label %168

168:                                              ; preds = %167, %69
  br label %55

169:                                              ; preds = %55
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %5, align 4
  br label %42

173:                                              ; preds = %65, %42
  ret void
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @CHECK_PIXEL_PTR(i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_ne16(i32*) #1

declare dso_local i32 @AV_WN16(i32*, i32) #1

declare dso_local i32 @AV_WN32(i32*, i32) #1

declare dso_local i32 @bytestream2_get_ne32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
