; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_lpf_sao_msa.c_ff_hevc_sao_edge_filter_8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_lpf_sao_msa.c_ff_hevc_sao_edge_filter_8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PB_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_sao_edge_filter_8_msa(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @MAX_PB_SIZE, align 4
  %17 = mul nsw i32 2, %16
  %18 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %272 [
    i32 0, label %24
    i32 1, label %86
    i32 2, label %148
    i32 3, label %210
  ]

24:                                               ; preds = %7
  %25 = load i32, i32* %13, align 4
  %26 = ashr i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = srem i32 %35, 16
  %37 = sub nsw i32 %34, %36
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @hevc_sao_edge_filter_0degree_16multiple_msa(i32* %29, i32 %30, i32* %31, i32 %32, i32* %33, i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = srem i32 %41, 16
  %43 = sub nsw i32 %40, %42
  %44 = load i32*, i32** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 16
  %50 = sub nsw i32 %47, %49
  %51 = load i32*, i32** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = srem i32 %54, 16
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %28, %24
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @hevc_sao_edge_filter_0degree_8width_msa(i32* %61, i32 %62, i32* %63, i32 %64, i32* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  store i32* %71, i32** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = srem i32 %72, 8
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %60, %56
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @hevc_sao_edge_filter_0degree_4width_msa(i32* %78, i32 %79, i32* %80, i32 %81, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %74
  br label %272

86:                                               ; preds = %7
  %87 = load i32, i32* %13, align 4
  %88 = ashr i32 %87, 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = srem i32 %97, 16
  %99 = sub nsw i32 %96, %98
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @hevc_sao_edge_filter_90degree_16multiple_msa(i32* %91, i32 %92, i32* %93, i32 %94, i32* %95, i32 %99, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = srem i32 %103, 16
  %105 = sub nsw i32 %102, %104
  %106 = load i32*, i32** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = srem i32 %110, 16
  %112 = sub nsw i32 %109, %111
  %113 = load i32*, i32** %9, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = srem i32 %116, 16
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %90, %86
  %119 = load i32, i32* %13, align 4
  %120 = ashr i32 %119, 3
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @hevc_sao_edge_filter_90degree_8width_msa(i32* %123, i32 %124, i32* %125, i32 %126, i32* %127, i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 8
  store i32* %131, i32** %8, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  store i32* %133, i32** %9, align 8
  %134 = load i32, i32* %13, align 4
  %135 = srem i32 %134, 8
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %122, %118
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @hevc_sao_edge_filter_90degree_4width_msa(i32* %140, i32 %141, i32* %142, i32 %143, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %136
  br label %272

148:                                              ; preds = %7
  %149 = load i32, i32* %13, align 4
  %150 = ashr i32 %149, 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = srem i32 %159, 16
  %161 = sub nsw i32 %158, %160
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @hevc_sao_edge_filter_45degree_16multiple_msa(i32* %153, i32 %154, i32* %155, i32 %156, i32* %157, i32 %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = srem i32 %165, 16
  %167 = sub nsw i32 %164, %166
  %168 = load i32*, i32** %8, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %8, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = srem i32 %172, 16
  %174 = sub nsw i32 %171, %173
  %175 = load i32*, i32** %9, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %9, align 8
  %178 = load i32, i32* %13, align 4
  %179 = srem i32 %178, 16
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %152, %148
  %181 = load i32, i32* %13, align 4
  %182 = ashr i32 %181, 3
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @hevc_sao_edge_filter_45degree_8width_msa(i32* %185, i32 %186, i32* %187, i32 %188, i32* %189, i32 %190)
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  store i32* %193, i32** %8, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  store i32* %195, i32** %9, align 8
  %196 = load i32, i32* %13, align 4
  %197 = srem i32 %196, 8
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %184, %180
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %15, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @hevc_sao_edge_filter_45degree_4width_msa(i32* %202, i32 %203, i32* %204, i32 %205, i32* %206, i32 %207)
  br label %209

209:                                              ; preds = %201, %198
  br label %272

210:                                              ; preds = %7
  %211 = load i32, i32* %13, align 4
  %212 = ashr i32 %211, 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = srem i32 %221, 16
  %223 = sub nsw i32 %220, %222
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @hevc_sao_edge_filter_135degree_16multiple_msa(i32* %215, i32 %216, i32* %217, i32 %218, i32* %219, i32 %223, i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %13, align 4
  %228 = srem i32 %227, 16
  %229 = sub nsw i32 %226, %228
  %230 = load i32*, i32** %8, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %8, align 8
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = srem i32 %234, 16
  %236 = sub nsw i32 %233, %235
  %237 = load i32*, i32** %9, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %9, align 8
  %240 = load i32, i32* %13, align 4
  %241 = srem i32 %240, 16
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %214, %210
  %243 = load i32, i32* %13, align 4
  %244 = ashr i32 %243, 3
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %242
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %15, align 4
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @hevc_sao_edge_filter_135degree_8width_msa(i32* %247, i32 %248, i32* %249, i32 %250, i32* %251, i32 %252)
  %254 = load i32*, i32** %8, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 8
  store i32* %255, i32** %8, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 8
  store i32* %257, i32** %9, align 8
  %258 = load i32, i32* %13, align 4
  %259 = srem i32 %258, 8
  store i32 %259, i32* %13, align 4
  br label %260

260:                                              ; preds = %246, %242
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %15, align 4
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @hevc_sao_edge_filter_135degree_4width_msa(i32* %264, i32 %265, i32* %266, i32 %267, i32* %268, i32 %269)
  br label %271

271:                                              ; preds = %263, %260
  br label %272

272:                                              ; preds = %7, %271, %209, %147, %85
  ret void
}

declare dso_local i32 @hevc_sao_edge_filter_0degree_16multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_0degree_8width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_0degree_4width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_90degree_16multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_90degree_8width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_90degree_4width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_45degree_16multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_45degree_8width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_45degree_4width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_135degree_16multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_135degree_8width_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_edge_filter_135degree_4width_msa(i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
