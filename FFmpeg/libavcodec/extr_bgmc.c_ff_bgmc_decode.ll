; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bgmc.c_ff_bgmc_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bgmc.c_ff_bgmc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUT_SIZE = common dso_local global i32 0, align 4
@FREQ_BITS = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i32 0, align 4
@cf_table = common dso_local global i32** null, align 8
@HALF = common dso_local global i32 0, align 4
@FIRST_QTR = common dso_local global i32 0, align 4
@THIRD_QTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_bgmc_decode(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32* @bgmc_lut_getp(i32* %29, i32* %30, i32 %31)
  store i32* %32, i32** %22, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %23, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %24, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @LUT_SIZE, align 4
  %41 = mul i32 %39, %40
  %42 = load i32*, i32** %22, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %188, %10
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %191

49:                                               ; preds = %45
  %50 = load i32, i32* %23, align 4
  %51 = load i32, i32* %24, align 4
  %52 = sub i32 %50, %51
  %53 = add i32 %52, 1
  store i32 %53, i32* %26, align 4
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* %24, align 4
  %56 = sub i32 %54, %55
  %57 = add i32 %56, 1
  %58 = load i32, i32* @FREQ_BITS, align 4
  %59 = shl i32 %57, %58
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %26, align 4
  %62 = udiv i32 %60, %61
  store i32 %62, i32* %27, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* @FREQ_BITS, align 4
  %66 = load i32, i32* @LUT_BITS, align 4
  %67 = sub i32 %65, %66
  %68 = lshr i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = shl i32 %71, %72
  store i32 %73, i32* %28, align 4
  br label %74

74:                                               ; preds = %86, %49
  %75 = load i32**, i32*** @cf_table, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %28, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %27, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i32, i32* %14, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %28, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %28, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %14, align 4
  %94 = lshr i32 %92, %93
  %95 = sub i32 %94, 1
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32**, i32*** @cf_table, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %28, align 4
  %104 = load i32, i32* %14, align 4
  %105 = shl i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %97, %108
  %110 = load i32, i32* @FREQ_BITS, align 4
  %111 = shl i32 1, %110
  %112 = sub i32 %109, %111
  %113 = load i32, i32* @FREQ_BITS, align 4
  %114 = lshr i32 %112, %113
  %115 = add i32 %96, %114
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32**, i32*** @cf_table, align 8
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %28, align 4
  %124 = add i32 %123, 1
  %125 = load i32, i32* %14, align 4
  %126 = shl i32 %124, %125
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = mul i32 %117, %129
  %131 = load i32, i32* @FREQ_BITS, align 4
  %132 = lshr i32 %130, %131
  %133 = add i32 %116, %132
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %91, %173
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* @HALF, align 4
  %137 = icmp uge i32 %135, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %134
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* @HALF, align 4
  %141 = icmp uge i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32, i32* @HALF, align 4
  %144 = load i32, i32* %25, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* @HALF, align 4
  %147 = load i32, i32* %24, align 4
  %148 = sub i32 %147, %146
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* @HALF, align 4
  %150 = load i32, i32* %23, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %23, align 4
  br label %172

152:                                              ; preds = %138
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* @FIRST_QTR, align 4
  %155 = icmp uge i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* @THIRD_QTR, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32, i32* @FIRST_QTR, align 4
  %162 = load i32, i32* %25, align 4
  %163 = sub i32 %162, %161
  store i32 %163, i32* %25, align 4
  %164 = load i32, i32* @FIRST_QTR, align 4
  %165 = load i32, i32* %24, align 4
  %166 = sub i32 %165, %164
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* @FIRST_QTR, align 4
  %168 = load i32, i32* %23, align 4
  %169 = sub i32 %168, %167
  store i32 %169, i32* %23, align 4
  br label %171

170:                                              ; preds = %156, %152
  br label %184

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %142
  br label %173

173:                                              ; preds = %172, %134
  %174 = load i32, i32* %24, align 4
  %175 = mul i32 %174, 2
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %23, align 4
  %177 = mul i32 2, %176
  %178 = add i32 %177, 1
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %25, align 4
  %180 = mul i32 2, %179
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @get_bits1(i32* %181)
  %183 = add i32 %180, %182
  store i32 %183, i32* %25, align 4
  br label %134

184:                                              ; preds = %170
  %185 = load i32, i32* %28, align 4
  %186 = load i32*, i32** %13, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %13, align 8
  store i32 %185, i32* %186, align 4
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %21, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %21, align 4
  br label %45

191:                                              ; preds = %45
  %192 = load i32, i32* %23, align 4
  %193 = load i32*, i32** %16, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32*, i32** %17, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %25, align 4
  %197 = load i32*, i32** %18, align 8
  store i32 %196, i32* %197, align 4
  ret void
}

declare dso_local i32* @bgmc_lut_getp(i32*, i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
