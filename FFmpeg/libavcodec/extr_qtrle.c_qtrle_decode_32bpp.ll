; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_32bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_32bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @qtrle_decode_32bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtrle_decode_32bpp(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %34, %39
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %142, %3
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %146

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @bytestream2_get_byte(i32* %48)
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %46, %51
  store i32 %52, i32* %9, align 4
  %53 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %54

54:                                               ; preds = %141, %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @bytestream2_get_byte(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %142

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @bytestream2_get_bytes_left(i32* %61)
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %146

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @bytestream2_get_byte(i32* %70)
  %72 = sub nsw i32 %71, 1
  %73 = mul nsw i32 %72, 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %141

77:                                               ; preds = %65
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call i32 @bytestream2_get_ne32(i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 4
  %88 = call i32 @CHECK_PIXEL_PTR(i32 %87)
  br label %89

89:                                               ; preds = %93, %80
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %7, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @AV_WN32A(i32* %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %9, align 4
  br label %89

102:                                              ; preds = %89
  br label %140

103:                                              ; preds = %77
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 4
  %106 = call i32 @CHECK_PIXEL_PTR(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = sdiv i32 %107, 2
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %113, %103
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %8, align 4
  %112 = icmp ne i32 %110, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = call i32 @bytestream2_get_ne64(i32* %119)
  %121 = call i32 @AV_WN64(i32* %117, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 8
  store i32 %123, i32* %9, align 4
  br label %109

124:                                              ; preds = %109
  %125 = load i32, i32* %7, align 4
  %126 = srem i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = call i32 @bytestream2_get_ne32(i32* %134)
  %136 = call i32 @AV_WN32A(i32* %132, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %128, %124
  br label %140

140:                                              ; preds = %139, %102
  br label %141

141:                                              ; preds = %140, %68
  br label %54

142:                                              ; preds = %54
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %41

146:                                              ; preds = %64, %41
  ret void
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @CHECK_PIXEL_PTR(i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_ne32(i32*) #1

declare dso_local i32 @AV_WN32A(i32*, i32) #1

declare dso_local i32 @AV_WN64(i32*, i32) #1

declare dso_local i32 @bytestream2_get_ne64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
