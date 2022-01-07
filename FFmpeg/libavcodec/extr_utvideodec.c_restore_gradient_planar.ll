; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_gradient_planar.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_gradient_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32)* @restore_gradient_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_gradient_planar(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = xor i32 %26, -1
  store i32 %27, i32* %24, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @FFMIN(i32 %28, i32 32)
  store i32 %29, i32* %25, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %168, %7
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %171

34:                                               ; preds = %30
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %13, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* %24, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* %24, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %22, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %23, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  br label %168

55:                                               ; preds = %34
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %21, align 8
  %62 = load i32*, i32** %21, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 128
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %68, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 %69(i32* %70, i32* %71, i32 %72, i32 0)
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %21, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %21, align 8
  %78 = load i32, i32* %23, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %55
  br label %168

81:                                               ; preds = %55
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %164, %81
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %167

86:                                               ; preds = %82
  %87 = load i32*, i32** %21, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 0, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %89, %95
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %21, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  store i32 1, i32* %15, align 4
  br label %100

100:                                              ; preds = %142, %86
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %25, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %100
  %105 = load i32*, i32** %21, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %18, align 4
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  %116 = sub nsw i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %19, align 4
  %120 = load i32*, i32** %21, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %130, %135
  %137 = and i32 %136, 255
  %138 = load i32*, i32** %21, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %104
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %100

145:                                              ; preds = %100
  %146 = load i32, i32* %11, align 4
  %147 = icmp sgt i32 %146, 32
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %151, align 8
  %153 = load i32*, i32** %21, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 32
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 32
  %158 = call i32 %152(i32* %154, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %148, %145
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %21, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %21, align 8
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %82

167:                                              ; preds = %82
  br label %168

168:                                              ; preds = %167, %80, %54
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  br label %30

171:                                              ; preds = %30
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
