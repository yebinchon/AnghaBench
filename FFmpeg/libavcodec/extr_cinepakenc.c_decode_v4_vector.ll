; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_decode_v4_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_decode_v4_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32**, i32*, i32*, %struct.TYPE_5__*)* @decode_v4_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_v4_vector(%struct.TYPE_6__* %0, i32** %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 6, i32 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %206, %5
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %209

25:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %200, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %205

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %32, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** %7, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = add nsw i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %45, i64 %53
  store i32 %42, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %57, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32**, i32*** %7, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = add nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %71, i64 %80
  store i32 %68, i32* %81, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %84, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32**, i32*** %7, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %99, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %98, i64 %107
  store i32 %95, i32* %108, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %111, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32**, i32*** %7, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = add nsw i32 %127, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %125, i64 %135
  store i32 %122, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %199

142:                                              ; preds = %29
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %152, 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %145, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32**, i32*** %7, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = ashr i32 %160, 1
  %162 = load i32, i32* %13, align 4
  %163 = ashr i32 %162, 1
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = add nsw i32 %161, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %159, i64 %169
  store i32 %156, i32* %170, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %14, align 4
  %180 = mul nsw i32 %178, %179
  %181 = add nsw i32 %180, 5
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %173, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32**, i32*** %7, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = ashr i32 %188, 1
  %190 = load i32, i32* %13, align 4
  %191 = ashr i32 %190, 1
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = add nsw i32 %189, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %187, i64 %197
  store i32 %184, i32* %198, align 4
  br label %199

199:                                              ; preds = %142, %29
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 2
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %26

205:                                              ; preds = %26
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 2
  store i32 %208, i32* %13, align 4
  br label %22

209:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
