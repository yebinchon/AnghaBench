; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_mspel8_v_lowpass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_mspel8_v_lowpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_crop_tab = common dso_local global i32* null, align 8
@MAX_NEG_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @wmv2_mspel8_v_lowpass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_mspel8_v_lowpass(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32*, i32** @ff_crop_tab, align 8
  %25 = load i32, i32* @MAX_NEG_CROP, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %251, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %254

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 3, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 4, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 5, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %19, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 6, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 7, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %21, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 8, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %22, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 9, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %23, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %96, %97
  %99 = mul nsw i32 9, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %100, %101
  %103 = sub nsw i32 %99, %102
  %104 = add nsw i32 %103, 8
  %105 = ashr i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %95, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 0, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = mul nsw i32 9, %117
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = sub nsw i32 %118, %121
  %123 = add nsw i32 %122, 8
  %124 = ashr i32 %123, 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %114, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = mul nsw i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %134, %135
  %137 = mul nsw i32 9, %136
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %138, %139
  %141 = sub nsw i32 %137, %140
  %142 = add nsw i32 %141, 8
  %143 = ashr i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %133, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = mul nsw i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %153, %154
  %156 = mul nsw i32 9, %155
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %156, %159
  %161 = add nsw i32 %160, 8
  %162 = ashr i32 %161, 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %152, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 3, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %172, %173
  %175 = mul nsw i32 9, %174
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %175, %178
  %180 = add nsw i32 %179, 8
  %181 = ashr i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %171, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 4, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %191, %192
  %194 = mul nsw i32 9, %193
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %194, %197
  %199 = add nsw i32 %198, 8
  %200 = ashr i32 %199, 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %190, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %8, align 4
  %206 = mul nsw i32 5, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %210, %211
  %213 = mul nsw i32 9, %212
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %214, %215
  %217 = sub nsw i32 %213, %216
  %218 = add nsw i32 %217, 8
  %219 = ashr i32 %218, 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %209, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %8, align 4
  %225 = mul nsw i32 6, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i32*, i32** %11, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = add nsw i32 %229, %230
  %232 = mul nsw i32 9, %231
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %233, %234
  %236 = sub nsw i32 %232, %235
  %237 = add nsw i32 %236, 8
  %238 = ashr i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %228, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = mul nsw i32 7, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %241, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %7, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %6, align 8
  br label %251

251:                                              ; preds = %32
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %28

254:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
