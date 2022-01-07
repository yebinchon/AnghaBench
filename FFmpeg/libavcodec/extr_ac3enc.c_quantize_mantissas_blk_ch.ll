; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_quantize_mantissas_blk_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_quantize_mantissas_blk_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32, i32)* @quantize_mantissas_blk_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quantize_mantissas_blk_ch(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %177, %7
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %180

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %171

42:                                               ; preds = %24
  %43 = load i32, i32* %18, align 4
  switch i32 %43, label %164 [
    i32 1, label %44
    i32 2, label %82
    i32 3, label %120
    i32 4, label %124
    i32 5, label %152
    i32 14, label %156
    i32 15, label %160
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @sym_quant(i32 %45, i32 %46, i32 3)
  store i32 %47, i32* %18, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %72 [
    i32 0, label %51
    i32 1, label %62
  ]

51:                                               ; preds = %44
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 9, %58
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %81

62:                                               ; preds = %44
  %63 = load i32, i32* %18, align 4
  %64 = mul nsw i32 3, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  store i32 128, i32* %18, align 4
  br label %81

72:                                               ; preds = %44
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  store i32 128, i32* %18, align 4
  br label %81

81:                                               ; preds = %72, %62, %51
  br label %170

82:                                               ; preds = %42
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @sym_quant(i32 %83, i32 %84, i32 5)
  store i32 %85, i32* %18, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %110 [
    i32 0, label %89
    i32 1, label %100
  ]

89:                                               ; preds = %82
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32* %93, i32** %95, align 8
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 25, %96
  store i32 %97, i32* %18, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %119

100:                                              ; preds = %82
  %101 = load i32, i32* %18, align 4
  %102 = mul nsw i32 5, %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 2, i32* %109, align 8
  store i32 128, i32* %18, align 4
  br label %119

110:                                              ; preds = %82
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  store i32 128, i32* %18, align 4
  br label %119

119:                                              ; preds = %110, %100, %89
  br label %170

120:                                              ; preds = %42
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @sym_quant(i32 %121, i32 %122, i32 7)
  store i32 %123, i32* %18, align 4
  br label %170

124:                                              ; preds = %42
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @sym_quant(i32 %125, i32 %126, i32 11)
  store i32 %127, i32* %18, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %142 [
    i32 0, label %131
  ]

131:                                              ; preds = %124
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  store i32* %135, i32** %137, align 8
  %138 = load i32, i32* %18, align 4
  %139 = mul nsw i32 11, %138
  store i32 %139, i32* %18, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store i32 1, i32* %141, align 8
  br label %151

142:                                              ; preds = %124
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %143
  store i32 %148, i32* %146, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  store i32 0, i32* %150, align 8
  store i32 128, i32* %18, align 4
  br label %151

151:                                              ; preds = %142, %131
  br label %170

152:                                              ; preds = %42
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @sym_quant(i32 %153, i32 %154, i32 15)
  store i32 %155, i32* %18, align 4
  br label %170

156:                                              ; preds = %42
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @asym_quant(i32 %157, i32 %158, i32 14)
  store i32 %159, i32* %18, align 4
  br label %170

160:                                              ; preds = %42
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @asym_quant(i32 %161, i32 %162, i32 16)
  store i32 %163, i32* %18, align 4
  br label %170

164:                                              ; preds = %42
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = sub nsw i32 %167, 1
  %169 = call i32 @asym_quant(i32 %165, i32 %166, i32 %168)
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %164, %160, %156, %152, %151, %120, %119, %81
  br label %171

171:                                              ; preds = %170, %24
  %172 = load i32, i32* %18, align 4
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %20

180:                                              ; preds = %20
  ret void
}

declare dso_local i32 @sym_quant(i32, i32, i32) #1

declare dso_local i32 @asym_quant(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
