; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_xcorr_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_xcorr_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32)* @xcorr_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcorr_coeff(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
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
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %36 = load i32, i32* @INT16_MAX, align 4
  store i32 %36, i32* %24, align 4
  store i32 -500, i32* %30, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %6
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @max_abs_value_w16(i32* %40, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %27, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %28, align 8
  br label %69

51:                                               ; preds = %6
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 0, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @max_abs_value_w16(i32* %56, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  store i32* %63, i32** %27, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32* %68, i32** %28, align 8
  br label %69

69:                                               ; preds = %51, %39
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %70, 5000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 2, i32* %34, align 4
  br label %74

73:                                               ; preds = %69
  store i32 0, i32* %34, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %34, align 4
  %79 = call i64 @scale_dot_product(i32* %75, i32* %76, i32 %77, i32 %78)
  store i64 %79, i64* %21, align 8
  store i32 0, i32* %35, align 4
  br label %80

80:                                               ; preds = %201, %74
  %81 = load i32, i32* %35, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %204

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %25, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %26, align 8
  %90 = load i32*, i32** %25, align 8
  %91 = load i32*, i32** %26, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %34, align 4
  %94 = call i64 @scale_dot_product(i32* %90, i32* %91, i32 %92, i32 %93)
  store i64 %94, i64* %20, align 8
  %95 = load i64, i64* %21, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %171

97:                                               ; preds = %84
  %98 = load i64, i64* %20, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %171

100:                                              ; preds = %97
  %101 = load i64, i64* %20, align 8
  %102 = call i32 @norm_w32(i64 %101)
  %103 = sub nsw i32 %102, 16
  store i32 %103, i32* %16, align 4
  %104 = load i64, i64* %20, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i64 @SPL_SHIFT_W32(i64 %104, i32 %105)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %22, align 4
  %108 = load i64, i64* %21, align 8
  %109 = call i32 @norm_w32(i64 %108)
  %110 = sub nsw i32 %109, 16
  store i32 %110, i32* %17, align 4
  %111 = load i64, i64* %21, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i64 @SPL_SHIFT_W32(i64 %111, i32 %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = call i64 @SPL_MUL_16_16_RSFT(i32 %115, i32 %116, i32 16)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sub nsw i32 %119, %121
  store i32 %122, i32* %29, align 4
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* %30, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %31, align 4
  %126 = load i32, i32* %31, align 4
  %127 = call i32 @FFMIN(i32 %126, i32 31)
  store i32 %127, i32* %31, align 4
  %128 = load i32, i32* %31, align 4
  %129 = call i32 @FFMAX(i32 %128, i32 -31)
  store i32 %129, i32* %31, align 4
  %130 = load i32, i32* %31, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %100
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %24, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %134, %136
  %138 = load i32, i32* %31, align 4
  %139 = sub nsw i32 0, %138
  %140 = zext i32 %139 to i64
  %141 = ashr i64 %137, %140
  store i64 %141, i64* %32, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %143, %145
  store i64 %146, i64* %33, align 8
  br label %161

147:                                              ; preds = %100
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = load i32, i32* %24, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %149, %151
  store i64 %152, i64* %32, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %154, %156
  %158 = load i32, i32* %31, align 4
  %159 = zext i32 %158 to i64
  %160 = ashr i64 %157, %159
  store i64 %160, i64* %33, align 8
  br label %161

161:                                              ; preds = %147, %132
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* %33, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %18, align 4
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %23, align 4
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* %29, align 4
  store i32 %168, i32* %30, align 4
  %169 = load i32, i32* %35, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %165, %161
  br label %171

171:                                              ; preds = %170, %97, %84
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %28, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %28, align 8
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %177, %179
  %181 = load i32*, i32** %27, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %27, align 8
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %182, %184
  %186 = sub nsw i32 %180, %185
  %187 = load i32, i32* %34, align 4
  %188 = ashr i32 %186, %187
  %189 = mul i32 %175, %188
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* %21, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %21, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32*, i32** %27, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %27, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32*, i32** %28, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %28, align 8
  br label %201

201:                                              ; preds = %171
  %202 = load i32, i32* %35, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %35, align 4
  br label %80

204:                                              ; preds = %80
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %205, %206
  ret i32 %207
}

declare dso_local i32 @max_abs_value_w16(i32*, i32) #1

declare dso_local i64 @scale_dot_product(i32*, i32*, i32, i32) #1

declare dso_local i32 @norm_w32(i64) #1

declare dso_local i64 @SPL_SHIFT_W32(i64, i32) #1

declare dso_local i64 @SPL_MUL_16_16_RSFT(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
