; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_422.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@hqx_quants = common dso_local global i32** null, align 8
@hqx_quant_luma = common dso_local global i32 0, align 4
@hqx_quant_chroma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @hqx_decode_422 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hqx_decode_422(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @get_bits1(i32* %31)
  store i32 %32, i32* %13, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32**, i32*** @hqx_quants, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @get_bits(i32* %36, i32 4)
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %82, %34
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 9
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %43
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @decode_block(i32* %58, i32* %64, i32* %65, i32 %68, i32 %75, i32* %14)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %5, align 4
  br label %153

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %40

85:                                               ; preds = %40
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @hqx_quant_luma, align 4
  %101 = call i32 @put_blocks(%struct.TYPE_6__* %86, i32 0, i32 %87, i32 %88, i32 %89, i32 %94, i32 %99, i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @hqx_quant_luma, align 4
  %118 = call i32 @put_blocks(%struct.TYPE_6__* %102, i32 0, i32 %104, i32 %105, i32 %106, i32 %111, i32 %116, i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = ashr i32 %120, 1
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @hqx_quant_chroma, align 4
  %135 = call i32 @put_blocks(%struct.TYPE_6__* %119, i32 2, i32 %121, i32 %122, i32 %123, i32 %128, i32 %133, i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = ashr i32 %137, 1
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 7
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @hqx_quant_chroma, align 4
  %152 = call i32 @put_blocks(%struct.TYPE_6__* %136, i32 1, i32 %138, i32 %139, i32 %140, i32 %145, i32 %150, i32 %151)
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %85, %79
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_block(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @put_blocks(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
