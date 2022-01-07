; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_rnd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@AV_ROUND_NEAR_INF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_rescale_rnd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert2(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert2(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ule i32 %31, 5
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 4
  br label %39

39:                                               ; preds = %33, %4
  %40 = phi i1 [ false, %4 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @av_assert2(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ule i32 %52, 5
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %62, label %60

60:                                               ; preds = %54, %48, %45, %39
  %61 = load i32, i32* @INT64_MIN, align 4
  store i32 %61, i32* %5, align 4
  br label %246

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @INT64_MIN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @INT64_MAX, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %5, align 4
  br label %246

77:                                               ; preds = %71
  %78 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %62
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @INT64_MAX, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @FFMAX(i32 %85, i32 %87)
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = lshr i32 %93, 1
  %95 = and i32 %94, 1
  %96 = xor i32 %92, %95
  %97 = call i32 @av_rescale_rnd(i32 %89, i32 %90, i32 %91, i32 %96)
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %246

99:                                               ; preds = %81
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = sdiv i32 %104, 2
  store i32 %105, i32* %10, align 4
  br label %114

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %103
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @INT_MAX, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %169

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @INT_MAX, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %169

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @INT_MAX, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %8, align 4
  %133 = sdiv i32 %131, %132
  store i32 %133, i32* %5, align 4
  br label %246

134:                                              ; preds = %122
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %8, align 4
  %140 = srem i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @INT32_MAX, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %134
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @INT64_MAX, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* %7, align 4
  %159 = sdiv i32 %157, %158
  %160 = icmp sgt i32 %154, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @INT64_MIN, align 4
  store i32 %162, i32* %5, align 4
  br label %246

163:                                              ; preds = %153, %150, %134
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %5, align 4
  br label %246

169:                                              ; preds = %118, %114
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %6, align 4
  %172 = ashr i32 %171, 32
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %7, align 4
  %175 = ashr i32 %174, 32
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %16, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %178, %181
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = shl i32 %183, 32
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %15, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %16, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %17, align 4
  %194 = ashr i32 %193, 32
  %195 = add nsw i32 %192, %194
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %18, align 4
  %198 = icmp slt i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = add nsw i32 %195, %199
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %14, align 4
  store i32 63, i32* %19, align 4
  br label %210

210:                                              ; preds = %235, %169
  %211 = load i32, i32* %19, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %238

213:                                              ; preds = %210
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %19, align 4
  %217 = ashr i32 %215, %216
  %218 = and i32 %217, 1
  %219 = add nsw i32 %214, %218
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %17, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %213
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %14, align 4
  %231 = sub nsw i32 %230, %229
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %234

234:                                              ; preds = %228, %213
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %19, align 4
  br label %210

238:                                              ; preds = %210
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* @INT64_MAX, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* @INT64_MIN, align 4
  store i32 %243, i32* %5, align 4
  br label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %17, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %244, %242, %163, %161, %126, %84, %75, %60
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
