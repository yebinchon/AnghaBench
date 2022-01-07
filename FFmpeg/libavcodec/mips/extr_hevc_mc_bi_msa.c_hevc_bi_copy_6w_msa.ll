; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32)* @hevc_bi_copy_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_bi_copy_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
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
  %24 = alloca %struct.TYPE_5__, align 4
  %25 = alloca %struct.TYPE_5__, align 4
  %26 = alloca %struct.TYPE_5__, align 4
  %27 = alloca %struct.TYPE_5__, align 4
  %28 = alloca %struct.TYPE_5__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %45 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 4, i1 false)
  %46 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 4, i1 false)
  %47 = bitcast %struct.TYPE_5__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 4, i1 false)
  %48 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 4, i1 false)
  %49 = bitcast %struct.TYPE_5__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 3
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %56, %7
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %15, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %257

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @LD4(i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 4, %64
  %66 = load i32*, i32** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @INSERT_D2_SB(i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @INSERT_D2_SB(i32 %74, i32 %75, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @LD4(i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = load i32*, i32** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @INSERT_D2_SB(i32 %91, i32 %92, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @INSERT_D2_SB(i32 %96, i32 %97, i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %30, align 4
  %105 = load i32, i32* %31, align 4
  %106 = load i32, i32* %32, align 4
  %107 = load i32, i32* %33, align 4
  %108 = load i32, i32* %34, align 4
  %109 = load i32, i32* %35, align 4
  %110 = load i32, i32* %36, align 4
  %111 = call i32 @LD_SH8(i32* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 8, %112
  %114 = load i32*, i32** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %37, align 4
  %118 = load i32, i32* %38, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ILVRL_B2_SH(i32 %120, i32 %122, i32 %117, i32 %118)
  %124 = load i32, i32* %39, align 4
  %125 = load i32, i32* %40, align 4
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ILVRL_B2_SH(i32 %127, i32 %129, i32 %124, i32 %125)
  %131 = load i32, i32* %41, align 4
  %132 = load i32, i32* %42, align 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ILVRL_B2_SH(i32 %134, i32 %136, i32 %131, i32 %132)
  %138 = load i32, i32* %43, align 4
  %139 = load i32, i32* %44, align 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ILVRL_B2_SH(i32 %141, i32 %143, i32 %138, i32 %139)
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = load i32, i32* %40, align 4
  %149 = call i32 @SLLI_4V(i32 %145, i32 %146, i32 %147, i32 %148, i32 6)
  %150 = load i32, i32* %41, align 4
  %151 = load i32, i32* %42, align 4
  %152 = load i32, i32* %43, align 4
  %153 = load i32, i32* %44, align 4
  %154 = call i32 @SLLI_4V(i32 %150, i32 %151, i32 %152, i32 %153, i32 6)
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %32, align 4
  %159 = load i32, i32* %37, align 4
  %160 = load i32, i32* %38, align 4
  %161 = load i32, i32* %39, align 4
  %162 = load i32, i32* %40, align 4
  %163 = load i32, i32* %37, align 4
  %164 = load i32, i32* %38, align 4
  %165 = load i32, i32* %39, align 4
  %166 = load i32, i32* %40, align 4
  %167 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 7, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %33, align 4
  %169 = load i32, i32* %34, align 4
  %170 = load i32, i32* %35, align 4
  %171 = load i32, i32* %36, align 4
  %172 = load i32, i32* %41, align 4
  %173 = load i32, i32* %42, align 4
  %174 = load i32, i32* %43, align 4
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %41, align 4
  %177 = load i32, i32* %42, align 4
  %178 = load i32, i32* %43, align 4
  %179 = load i32, i32* %44, align 4
  %180 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 7, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %38, align 4
  %182 = load i32, i32* %37, align 4
  %183 = load i32, i32* %40, align 4
  %184 = load i32, i32* %39, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %21, align 4
  %187 = call i32 @PCKEV_B2_UB(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %42, align 4
  %189 = load i32, i32* %41, align 4
  %190 = load i32, i32* %44, align 4
  %191 = load i32, i32* %43, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %23, align 4
  %194 = call i32 @PCKEV_B2_UB(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %20, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @ST_W2(i32 %195, i32 0, i32 2, i32* %196, i32 %197)
  %199 = load i32, i32* %20, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @ST_H2(i32 %199, i32 2, i32 6, i32* %201, i32 %202)
  %204 = load i32, i32* %21, align 4
  %205 = load i32*, i32** %12, align 8
  %206 = load i32, i32* %13, align 4
  %207 = mul nsw i32 2, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @ST_W2(i32 %204, i32 0, i32 2, i32* %209, i32 %210)
  %212 = load i32, i32* %21, align 4
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %13, align 4
  %215 = mul nsw i32 2, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @ST_H2(i32 %212, i32 2, i32 6, i32* %218, i32 %219)
  %221 = load i32, i32* %13, align 4
  %222 = mul nsw i32 4, %221
  %223 = load i32*, i32** %12, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %12, align 8
  %226 = load i32, i32* %22, align 4
  %227 = load i32*, i32** %12, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @ST_W2(i32 %226, i32 0, i32 2, i32* %227, i32 %228)
  %230 = load i32, i32* %22, align 4
  %231 = load i32*, i32** %12, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @ST_H2(i32 %230, i32 2, i32 6, i32* %232, i32 %233)
  %235 = load i32, i32* %23, align 4
  %236 = load i32*, i32** %12, align 8
  %237 = load i32, i32* %13, align 4
  %238 = mul nsw i32 2, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @ST_W2(i32 %235, i32 0, i32 2, i32* %240, i32 %241)
  %243 = load i32, i32* %23, align 4
  %244 = load i32*, i32** %12, align 8
  %245 = load i32, i32* %13, align 4
  %246 = mul nsw i32 2, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @ST_H2(i32 %243, i32 2, i32 6, i32* %249, i32 %250)
  %252 = load i32, i32* %13, align 4
  %253 = mul nsw i32 4, %252
  %254 = load i32*, i32** %12, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %12, align 8
  br label %52

257:                                              ; preds = %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_SB(i32, i32, i32) #2

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
