; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_recompose_haar.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_recompose_haar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i16* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ivi_recompose_haar(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca i16*, align 8
  %21 = alloca i16*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %22, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i16*, i16** %33, align 8
  store i16* %34, i16** %18, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i16*, i16** %39, align 8
  store i16* %40, i16** %19, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i16*, i16** %45, align 8
  store i16* %46, i16** %20, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i16*, i16** %51, align 8
  store i16* %52, i16** %21, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %188, %3
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %191

59:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %161, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %166

66:                                               ; preds = %60
  %67 = load i16*, i16** %18, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i16*, i16** %19, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i16*, i16** %20, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, i16* %79, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i16*, i16** %21, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 2
  %99 = ashr i32 %98, 2
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %104, %105
  %107 = add nsw i32 %106, 2
  %108 = ashr i32 %107, 2
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  %116 = add nsw i32 %115, 2
  %117 = ashr i32 %116, 2
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = add nsw i32 %124, 2
  %126 = ashr i32 %125, 2
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 128
  %129 = call i32 @av_clip_uint8(i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 128
  %136 = call i32 @av_clip_uint8(i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 128
  %144 = call i32 @av_clip_uint8(i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 128
  %153 = call i32 @av_clip_uint8(i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %155, %156
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %66
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %60

166:                                              ; preds = %60
  %167 = load i32, i32* %6, align 4
  %168 = shl i32 %167, 1
  %169 = load i32*, i32** %5, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %5, align 8
  %172 = load i32, i32* %22, align 4
  %173 = load i16*, i16** %18, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i16, i16* %173, i64 %174
  store i16* %175, i16** %18, align 8
  %176 = load i32, i32* %22, align 4
  %177 = load i16*, i16** %19, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i16, i16* %177, i64 %178
  store i16* %179, i16** %19, align 8
  %180 = load i32, i32* %22, align 4
  %181 = load i16*, i16** %20, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i16, i16* %181, i64 %182
  store i16* %183, i16** %20, align 8
  %184 = load i32, i32* %22, align 4
  %185 = load i16*, i16** %21, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i16, i16* %185, i64 %186
  store i16* %187, i16** %21, align 8
  br label %188

188:                                              ; preds = %166
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 2
  store i32 %190, i32* %8, align 4
  br label %53

191:                                              ; preds = %53
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
