; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_analyze.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdcd_analyze.maxg = internal constant i32 1920, align 4
@HDCD_ANA_PE = common dso_local global i32 0, align 4
@HDCD_ANA_TGM = common dso_local global i32 0, align 4
@HDCD_ANA_CDT = common dso_local global i32 0, align 4
@HDCD_ANA_LLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @hdcd_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcd_analyze(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %20, align 8
  store i32 0, i32* %19, align 4
  br label %31

31:                                               ; preds = %129, %9
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %132

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 15
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @HDCD_ANA_PE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %35
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 1
  store i32 %56, i32* %21, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %47
  %71 = phi i1 [ false, %47 ], [ %69, %67 ]
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @hdcd_analyze_gen(i32 %64, i32 %74, i32 1)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 %75, i32* %81, align 4
  br label %128

82:                                               ; preds = %35
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @HDCD_ANA_TGM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32, i32* %18, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @hdcd_analyze_gen(i32 %96, i32 1, i32 1)
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32 %97, i32* %103, align 4
  br label %127

104:                                              ; preds = %86, %82
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @HDCD_ANA_CDT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hdcd_analyze_gen(i32 %118, i32 1, i32 1)
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %12, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %111, %108, %104
  br label %127

127:                                              ; preds = %126, %89
  br label %128

128:                                              ; preds = %127, %70
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %31

132:                                              ; preds = %31
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %170

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @FFMIN(i32 %137, i32 %140)
  store i32 %141, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %142

142:                                              ; preds = %163, %136
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %23, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @HDCD_ANA_LLE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @hdcd_analyze_gen(i32 %154, i32 %155, i32 1920)
  %157 = load i32*, i32** %10, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %152, %146
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %10, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %19, align 4
  br label %142

166:                                              ; preds = %142
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  br label %212

170:                                              ; preds = %132
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %172, %173
  %175 = ashr i32 %174, 3
  %176 = call i32 @FFMIN(i32 %171, i32 %175)
  store i32 %176, i32* %24, align 4
  store i32 0, i32* %19, align 4
  br label %177

177:                                              ; preds = %198, %170
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %24, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = load i32, i32* %13, align 4
  %183 = sub nsw i32 %182, 8
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* @HDCD_ANA_LLE, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @hdcd_analyze_gen(i32 %189, i32 %190, i32 1920)
  %192 = load i32*, i32** %10, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %187, %181
  %194 = load i32, i32* %12, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %10, align 8
  br label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %177

201:                                              ; preds = %177
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 %202, 8
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %206, %201
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %11, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %11, align 4
  br label %212

212:                                              ; preds = %208, %166
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load i32, i32* %11, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %12, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32*, i32** %10, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %10, align 8
  br label %225

225:                                              ; preds = %218, %215
  br label %247

226:                                              ; preds = %212
  br label %227

227:                                              ; preds = %241, %226
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %11, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %227
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* @HDCD_ANA_LLE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i32*, i32** %10, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @hdcd_analyze_gen(i32 %237, i32 %238, i32 1920)
  %240 = load i32*, i32** %10, align 8
  store i32 %239, i32* %240, align 4
  br label %241

241:                                              ; preds = %235, %231
  %242 = load i32, i32* %12, align 4
  %243 = load i32*, i32** %10, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %10, align 8
  br label %227

246:                                              ; preds = %227
  br label %247

247:                                              ; preds = %246, %225
  %248 = load i32*, i32** %10, align 8
  %249 = load i32*, i32** %20, align 8
  %250 = icmp eq i32* %248, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @av_assert0(i32 %251)
  %253 = load i32, i32* %13, align 4
  ret i32 %253
}

declare dso_local i32 @hdcd_analyze_gen(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
