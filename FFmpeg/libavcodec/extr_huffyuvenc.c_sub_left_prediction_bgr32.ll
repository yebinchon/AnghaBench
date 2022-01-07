; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvenc.c_sub_left_prediction_bgr32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvenc.c_sub_left_prediction_bgr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32*, i32)* }

@R = common dso_local global i32 0, align 4
@G = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32, i32*, i32*, i32*, i32*)* @sub_left_prediction_bgr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub_left_prediction_bgr32(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @FFMIN(i32 %27, i32 8)
  store i32 %28, i32* %22, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %118, %8
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %22, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %37
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %17, align 4
  %44 = mul nsw i32 %43, 4
  %45 = load i32, i32* @R, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %23, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %17, align 4
  %52 = mul nsw i32 %51, 4
  %53 = load i32, i32* @G, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %24, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %59, 4
  %61 = load i32, i32* @B, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %25, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %67, 4
  %69 = load i32, i32* @A, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %26, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %18, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 %78, 4
  %80 = load i32, i32* @R, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = mul nsw i32 %88, 4
  %90 = load i32, i32* @G, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %20, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %17, align 4
  %99 = mul nsw i32 %98, 4
  %100 = load i32, i32* @B, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  store i32 %96, i32* %103, align 4
  %104 = load i32, i32* %26, align 4
  %105 = load i32, i32* %21, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %17, align 4
  %109 = mul nsw i32 %108, 4
  %110 = load i32, i32* @A, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* %23, align 4
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %24, align 4
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %25, align 4
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %26, align 4
  store i32 %117, i32* %21, align 4
  br label %118

118:                                              ; preds = %41
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %37

121:                                              ; preds = %37
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %124, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 32
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 32
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 32
  %132 = getelementptr inbounds i32, i32* %131, i64 -4
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %133, 4
  %135 = sub nsw i32 %134, 32
  %136 = call i32 %125(i32* %127, i32* %129, i32* %132, i32 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %138, 1
  %140 = mul nsw i32 %139, 4
  %141 = load i32, i32* @R, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %149, 4
  %151 = load i32, i32* @G, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %14, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sub nsw i32 %158, 1
  %160 = mul nsw i32 %159, 4
  %161 = load i32, i32* @B, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %15, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %168, 1
  %170 = mul nsw i32 %169, 4
  %171 = load i32, i32* @A, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %167, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %16, align 8
  store i32 %175, i32* %176, align 4
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
