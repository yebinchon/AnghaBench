; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_4x4_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_4x4_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @vc1_inv_trans_4x4_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_inv_trans_4x4_c(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %13, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %84, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %87

19:                                               ; preds = %16
  %20 = load i32*, i32** %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = mul nsw i32 17, %26
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = mul nsw i32 17, %35
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 22, %40
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 10, %44
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 22, %49
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 10, %53
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = ashr i32 %58, 3
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  %65 = ashr i32 %64, 3
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = ashr i32 %70, 3
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  %77 = ashr i32 %76, 3
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  store i32* %83, i32** %13, align 8
  br label %84

84:                                               ; preds = %19
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %16

87:                                               ; preds = %16
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %193, %87
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %196

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 16
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = mul nsw i32 17, %99
  %101 = add nsw i32 %100, 64
  store i32 %101, i32* %8, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = mul nsw i32 17, %108
  %110 = add nsw i32 %109, 64
  store i32 %110, i32* %9, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 22, %113
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 24
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 10, %117
  %119 = add nsw i32 %114, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 24
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 22, %122
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 10, %126
  %128 = sub nsw i32 %123, %127
  store i32 %128, i32* %11, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* %5, align 8
  %131 = mul i64 0, %130
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  %137 = ashr i32 %136, 7
  %138 = add nsw i32 %133, %137
  %139 = call i32 @av_clip_uint8(i32 %138)
  %140 = load i32*, i32** %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = mul i64 0, %141
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = load i64, i64* %5, align 8
  %146 = mul i64 1, %145
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %149, %150
  %152 = ashr i32 %151, 7
  %153 = add nsw i32 %148, %152
  %154 = call i32 @av_clip_uint8(i32 %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = mul i64 1, %156
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i64, i64* %5, align 8
  %161 = mul i64 2, %160
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %164, %165
  %167 = ashr i32 %166, 7
  %168 = add nsw i32 %163, %167
  %169 = call i32 @av_clip_uint8(i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i64, i64* %5, align 8
  %172 = mul i64 2, %171
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = load i64, i64* %5, align 8
  %176 = mul i64 3, %175
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %179, %180
  %182 = ashr i32 %181, 7
  %183 = add nsw i32 %178, %182
  %184 = call i32 @av_clip_uint8(i32 %183)
  %185 = load i32*, i32** %4, align 8
  %186 = load i64, i64* %5, align 8
  %187 = mul i64 3, %186
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %12, align 8
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %4, align 8
  br label %193

193:                                              ; preds = %92
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %89

196:                                              ; preds = %89
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
