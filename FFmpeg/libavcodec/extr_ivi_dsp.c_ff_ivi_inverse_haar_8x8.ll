; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_inverse_haar_8x8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_inverse_haar_8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ivi_inverse_haar_8x8(i32* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [64 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %15, align 8
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  store i32* %28, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %141, %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %144

32:                                               ; preds = %29
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %119

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 1, %48
  %50 = mul nsw i32 %47, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 1, %54
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 16
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 1, %60
  %62 = mul nsw i32 %59, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 24
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 1, %66
  %68 = mul nsw i32 %65, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 32
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 40
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 48
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 56
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 16
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 24
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 32
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 40
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 48
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 56
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %26, align 4
  %118 = call i32 @INV_HAAR8(i32 %69, i32 %70, i32 %71, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  br label %136

119:                                              ; preds = %32
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 56
  store i32 0, i32* %121, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 48
  store i32 0, i32* %123, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 40
  store i32 0, i32* %125, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 32
  store i32 0, i32* %127, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 24
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 16
  store i32 0, i32* %131, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  store i32 0, i32* %133, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %119, %39
  %137 = load i32*, i32** %15, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %15, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %16, align 8
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %29

144:                                              ; preds = %29
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  store i32* %145, i32** %15, align 8
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %258, %144
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 8
  br i1 %148, label %149, label %261

149:                                              ; preds = %146
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %192, label %154

154:                                              ; preds = %149
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %192, label %159

159:                                              ; preds = %154
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %192, label %164

164:                                              ; preds = %159
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %192, label %169

169:                                              ; preds = %164
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %169
  %175 = load i32*, i32** %15, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %174
  %180 = load i32*, i32** %15, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %179
  %185 = load i32*, i32** %15, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 7
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @memset(i32* %190, i32 0, i32 32)
  br label %251

192:                                              ; preds = %184, %179, %174, %169, %164, %159, %154, %149
  %193 = load i32*, i32** %15, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %15, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %15, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %15, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 5
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %15, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 7
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 5
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %6, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 7
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %22, align 4
  %246 = load i32, i32* %23, align 4
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %25, align 4
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @INV_HAAR8(i32 %195, i32 %198, i32 %201, i32 %204, i32 %207, i32 %210, i32 %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 %231, i32 %234, i32 %237, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %192, %189
  %252 = load i32*, i32** %15, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 8
  store i32* %253, i32** %15, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32*, i32** %6, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %6, align 8
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %146

261:                                              ; preds = %146
  ret void
}

declare dso_local i32 @INV_HAAR8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
