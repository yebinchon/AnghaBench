; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2nv12cX_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2nv12cX_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32**, i32**, i32*, i32)* @yuv2nv12cX_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2nv12cX_c(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32** %3, i32** %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %16, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @AV_PIX_FMT_NV24, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %122

37:                                               ; preds = %33, %7
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %118, %37
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %38
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = and i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 12
  store i32 %49, i32* %18, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 3
  %53 = and i32 %52, 7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 12
  store i32 %57, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %58

58:                                               ; preds = %97, %42
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i32**, i32*** %11, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %71, %76
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %18, align 4
  %80 = load i32**, i32*** %12, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %88, %93
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %19, align 4
  br label %97

97:                                               ; preds = %62
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  br label %58

100:                                              ; preds = %58
  %101 = load i32, i32* %18, align 4
  %102 = ashr i32 %101, 19
  %103 = call i32 @av_clip_uint8(i32 %102)
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %19, align 4
  %110 = ashr i32 %109, 19
  %111 = call i32 @av_clip_uint8(i32 %110)
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %17, align 4
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %38

121:                                              ; preds = %38
  br label %207

122:                                              ; preds = %33
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %203, %122
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %206

127:                                              ; preds = %123
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %17, align 4
  %130 = and i32 %129, 7
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 12
  store i32 %134, i32* %21, align 4
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 3
  %138 = and i32 %137, 7
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 12
  store i32 %142, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %143

143:                                              ; preds = %182, %127
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %185

147:                                              ; preds = %143
  %148 = load i32**, i32*** %11, align 8
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %156, %161
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %21, align 4
  %165 = load i32**, i32*** %12, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %173, %178
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %22, align 4
  br label %182

182:                                              ; preds = %147
  %183 = load i32, i32* %23, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %23, align 4
  br label %143

185:                                              ; preds = %143
  %186 = load i32, i32* %22, align 4
  %187 = ashr i32 %186, 19
  %188 = call i32 @av_clip_uint8(i32 %187)
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %17, align 4
  %191 = mul nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* %21, align 4
  %195 = ashr i32 %194, 19
  %196 = call i32 @av_clip_uint8(i32 %195)
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %17, align 4
  %199 = mul nsw i32 2, %198
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  store i32 %196, i32* %202, align 4
  br label %203

203:                                              ; preds = %185
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  br label %123

206:                                              ; preds = %123
  br label %207

207:                                              ; preds = %206, %121
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
