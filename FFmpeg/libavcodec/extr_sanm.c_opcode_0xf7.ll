; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_opcode_0xf7.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_opcode_0xf7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i64)* @opcode_0xf7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcode_0xf7(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  store i32* %29, i32** %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %92

32:                                               ; preds = %5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @bytestream2_get_bytes_left(i32* %34)
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %6, align 4
  br label %129

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @bytestream2_get_le32u(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %65, 8
  store i32 %66, i32* %13, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  %79 = ashr i32 %78, 8
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %128

92:                                               ; preds = %5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = call i32 @bytestream2_get_bytes_left(i32* %94)
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %6, align 4
  br label %129

99:                                               ; preds = %92
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i64 @bytestream2_get_byteu(i32* %101)
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %16, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = call i64 @bytestream2_get_byteu(i32* %108)
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = call i64 @bytestream2_get_byteu(i32* %116)
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %14, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @draw_glyph(%struct.TYPE_4__* %120, i32* %121, i32 %122, i32 %123, i32 %124, i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %99, %39
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %97, %37
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le32u(i32*) #1

declare dso_local i64 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @draw_glyph(%struct.TYPE_4__*, i32*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
