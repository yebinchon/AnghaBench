; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @tgq_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgq_decode_block(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @get_sbits(i32* %15, i32 8)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %16, %21
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %171, %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %172

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @show_bits(i32* %29, i32 3)
  switch i32 %30, label %171 [
    i32 4, label %31
    i32 0, label %40
    i32 5, label %51
    i32 1, label %51
    i32 6, label %73
    i32 2, label %96
    i32 7, label %118
    i32 3, label %118
  ]

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %28, %31
  %41 = load i32*, i32** %5, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @skip_bits(i32* %49, i32 3)
  br label %171

51:                                               ; preds = %28, %28
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @skip_bits(i32* %52, i32 2)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @get_bits(i32* %54, i32 6)
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %69, %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %56

72:                                               ; preds = %56
  br label %171

73:                                               ; preds = %28
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @skip_bits(i32* %74, i32 3)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %171

96:                                               ; preds = %28
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @skip_bits(i32* %97, i32 3)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  store i32 %108, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %171

118:                                              ; preds = %28, %28
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @skip_bits(i32* %119, i32 2)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @show_bits(i32* %121, i32 6)
  %123 = icmp eq i32 %122, 63
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @skip_bits(i32* %125, i32 6)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @get_sbits(i32* %127, i32 8)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %128, %138
  %140 = load i32*, i32** %5, align 8
  %141 = load i64*, i64** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  store i32 %139, i32* %146, align 4
  br label %168

147:                                              ; preds = %118
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @get_sbits(i32* %148, i32 6)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %149, %159
  %161 = load i32*, i32** %5, align 8
  %162 = load i64*, i64** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %147, %124
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %28, %168, %96, %73, %72, %40
  br label %25

172:                                              ; preds = %25
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 2048
  store i32 %176, i32* %174, align 4
  ret void
}

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
