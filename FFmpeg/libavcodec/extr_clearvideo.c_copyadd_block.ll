; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_copyadd_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_copyadd_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32)* @copyadd_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyadd_block(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %19, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %24, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %25, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* %25, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* %27, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %28, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %26, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %29, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %30, align 8
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %134, label %85

85:                                               ; preds = %10
  %86 = load i32, i32* %23, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %134, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %134, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %24, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %134, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %22, align 4
  %102 = ashr i32 %100, %101
  %103 = icmp sgt i32 %97, %102
  br i1 %103, label %134, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %22, align 4
  %112 = ashr i32 %110, %111
  %113 = icmp sgt i32 %107, %112
  br i1 %113, label %134, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %22, align 4
  %122 = ashr i32 %120, %121
  %123 = icmp sgt i32 %117, %122
  br i1 %123, label %134, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %22, align 4
  %132 = ashr i32 %130, %131
  %133 = icmp sgt i32 %127, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %124, %114, %104, %94, %91, %88, %85, %10
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %11, align 4
  br label %182

136:                                              ; preds = %124
  store i32 0, i32* %32, align 4
  br label %137

137:                                              ; preds = %178, %136
  %138 = load i32, i32* %32, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %181

141:                                              ; preds = %137
  %142 = load i32*, i32** %30, align 8
  %143 = load i32, i32* %29, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32* %145, i32** %33, align 8
  %146 = load i32*, i32** %28, align 8
  %147 = load i32, i32* %27, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32* %149, i32** %34, align 8
  store i32 0, i32* %31, align 4
  br label %150

150:                                              ; preds = %168, %141
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %20, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %150
  %155 = load i32*, i32** %34, align 8
  %156 = load i32, i32* %31, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %35, align 4
  %162 = load i32, i32* %35, align 4
  %163 = call i32 @av_clip_uint8(i32 %162)
  %164 = load i32*, i32** %33, align 8
  %165 = load i32, i32* %31, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %31, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %31, align 4
  br label %150

171:                                              ; preds = %150
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %29, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %29, align 4
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* %27, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %27, align 4
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %32, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %32, align 4
  br label %137

181:                                              ; preds = %137
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %181, %134
  %183 = load i32, i32* %11, align 4
  ret i32 %183
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
