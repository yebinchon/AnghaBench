; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_luma_dc_dequant_idct_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_luma_dc_dequant_idct_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svq3_dequant_coeff = common dso_local global i32* null, align 8
@svq3_luma_dc_dequant_idct_c.x_offset = internal constant [4 x i32] [i32 0, i32 16, i32 64, i32 80], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @svq3_luma_dc_dequant_idct_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svq3_luma_dc_dequant_idct_c(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32*, i32** @svq3_dequant_coeff, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %126, %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %129

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 4, %29
  %31 = add nsw i32 %30, 0
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 4, %36
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %34, %41
  %43 = mul nsw i32 13, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 4, %45
  %47 = add nsw i32 %46, 0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 4, %52
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %50, %57
  %59 = mul nsw i32 13, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 4, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 7, %66
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 4, %69
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 17, %74
  %76 = sub nsw i32 %67, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 4, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 17, %83
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 4, %86
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 7, %91
  %93 = add nsw i32 %84, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 4, %97
  %99 = add nsw i32 %98, 0
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 4, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 4, %113
  %115 = add nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 4, %121
  %123 = add nsw i32 %122, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %27
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %24

129:                                              ; preds = %24
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %236, %129
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %239

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* @svq3_luma_dc_dequant_idct_c.x_offset, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 0, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 8, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %142, %147
  %149 = mul nsw i32 13, %148
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 0, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 8, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %154, %159
  %161 = mul nsw i32 13, %160
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 4, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 7, %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 12, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 17, %172
  %174 = sub nsw i32 %167, %173
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 4, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 17, %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 12, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 7, %185
  %187 = add nsw i32 %180, %186
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %7, align 4
  %192 = mul i32 %190, %191
  %193 = add i32 %192, 524288
  %194 = ashr i32 %193, 20
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 0, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %7, align 4
  %204 = mul i32 %202, %203
  %205 = add i32 %204, 524288
  %206 = ashr i32 %205, 20
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 32, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load i32, i32* %7, align 4
  %216 = mul i32 %214, %215
  %217 = add i32 %216, 524288
  %218 = ashr i32 %217, 20
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 128, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %18, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load i32, i32* %7, align 4
  %228 = mul i32 %226, %227
  %229 = add i32 %228, 524288
  %230 = ashr i32 %229, 20
  %231 = load i32*, i32** %4, align 8
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 160, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %230, i32* %235, align 4
  br label %236

236:                                              ; preds = %133
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %130

239:                                              ; preds = %130
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
