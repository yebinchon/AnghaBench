; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_copy_width16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_copy_width16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 8, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @LD_UB8(i32* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ST_UB8(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32 %43)
  br label %275

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 16, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @LD_UB8(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 8, %60
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ST_UB8(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32* %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 8, %76
  %78 = load i32*, i32** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @LD_UB8(i32* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 8, %92
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ST_UB8(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32* %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 8, %108
  %110 = load i32*, i32** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %8, align 8
  br label %274

113:                                              ; preds = %45
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 32, %114
  br i1 %115, label %116, label %235

116:                                              ; preds = %113
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @LD_UB8(i32* %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 8, %128
  %130 = load i32*, i32** %6, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %6, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @ST_UB8(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32* %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 8, %144
  %146 = load i32*, i32** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %8, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @LD_UB8(i32* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 8, %160
  %162 = load i32*, i32** %6, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %6, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @ST_UB8(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32* %173, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = mul nsw i32 8, %176
  %178 = load i32*, i32** %8, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %8, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @LD_UB8(i32* %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 8, %192
  %194 = load i32*, i32** %6, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %6, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %19, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @ST_UB8(i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32* %205, i32 %206)
  %208 = load i32, i32* %9, align 4
  %209 = mul nsw i32 8, %208
  %210 = load i32*, i32** %8, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %8, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @LD_UB8(i32* %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32*, i32** %8, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @ST_UB8(i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32* %232, i32 %233)
  br label %273

235:                                              ; preds = %113
  %236 = load i32, i32* %10, align 4
  %237 = srem i32 %236, 4
  %238 = icmp eq i32 0, %237
  br i1 %238, label %239, label %272

239:                                              ; preds = %235
  %240 = load i32, i32* %10, align 4
  %241 = ashr i32 %240, 2
  store i32 %241, i32* %11, align 4
  br label %242

242:                                              ; preds = %246, %239
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %11, align 4
  %245 = icmp ne i32 %243, 0
  br i1 %245, label %246, label %271

246:                                              ; preds = %242
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @LD_UB4(i32* %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %7, align 4
  %255 = mul nsw i32 4, %254
  %256 = load i32*, i32** %6, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %6, align 8
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @ST_UB4(i32 %259, i32 %260, i32 %261, i32 %262, i32* %263, i32 %264)
  %266 = load i32, i32* %9, align 4
  %267 = mul nsw i32 4, %266
  %268 = load i32*, i32** %8, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %8, align 8
  br label %242

271:                                              ; preds = %242
  br label %272

272:                                              ; preds = %271, %235
  br label %273

273:                                              ; preds = %272, %116
  br label %274

274:                                              ; preds = %273, %48
  br label %275

275:                                              ; preds = %274, %22
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
