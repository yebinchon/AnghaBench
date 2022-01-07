; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32)* @hevc_bi_copy_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_bi_copy_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
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
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca %struct.TYPE_12__, align 4
  %25 = alloca %struct.TYPE_12__, align 4
  %26 = alloca %struct.TYPE_12__, align 4
  %27 = alloca %struct.TYPE_12__, align 4
  %28 = alloca %struct.TYPE_12__, align 4
  %29 = alloca %struct.TYPE_12__, align 4
  %30 = alloca %struct.TYPE_12__, align 4
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
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %55 = bitcast %struct.TYPE_12__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 4, i1 false)
  store i32 8, i32* %15, align 4
  br label %56

56:                                               ; preds = %60, %7
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %15, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %259

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LD_SB4(i32* %61, i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @LD_SB4(i32* %73, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 4, %84
  %86 = load i32*, i32** %8, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %8, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %42, align 4
  %92 = load i32, i32* %43, align 4
  %93 = load i32, i32* %44, align 4
  %94 = load i32, i32* %45, align 4
  %95 = call i32 @LD_SH4(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %46, align 4
  %100 = load i32, i32* %47, align 4
  %101 = load i32, i32* %48, align 4
  %102 = load i32, i32* %49, align 4
  %103 = call i32 @LD_SH4(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 16
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %50, align 4
  %108 = load i32, i32* %51, align 4
  %109 = load i32, i32* %52, align 4
  %110 = load i32, i32* %53, align 4
  %111 = call i32 @LD_SH4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 4, %112
  %114 = load i32*, i32** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %31, align 4
  %118 = load i32, i32* %32, align 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ILVRL_B2_SH(i32 %120, i32 %122, i32 %117, i32 %118)
  %124 = load i32, i32* %33, align 4
  %125 = load i32, i32* %34, align 4
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ILVRL_B2_SH(i32 %127, i32 %129, i32 %124, i32 %125)
  %131 = load i32, i32* %35, align 4
  %132 = load i32, i32* %36, align 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ILVR_B2_SH(i32 %134, i32 %136, i32 %138, i32 %140, i32 %131, i32 %132)
  %142 = load i32, i32* %37, align 4
  %143 = load i32, i32* %38, align 4
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ILVRL_B2_SH(i32 %145, i32 %147, i32 %142, i32 %143)
  %149 = load i32, i32* %39, align 4
  %150 = load i32, i32* %40, align 4
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ILVRL_B2_SH(i32 %152, i32 %154, i32 %149, i32 %150)
  %156 = load i32, i32* %41, align 4
  %157 = load i32, i32* %54, align 4
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ILVR_B2_SH(i32 %159, i32 %161, i32 %163, i32 %165, i32 %156, i32 %157)
  %167 = load i32, i32* %31, align 4
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = call i32 @SLLI_4V(i32 %167, i32 %168, i32 %169, i32 %170, i32 6)
  %172 = load i32, i32* %35, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load i32, i32* %37, align 4
  %175 = load i32, i32* %38, align 4
  %176 = call i32 @SLLI_4V(i32 %172, i32 %173, i32 %174, i32 %175, i32 6)
  %177 = load i32, i32* %39, align 4
  %178 = load i32, i32* %40, align 4
  %179 = load i32, i32* %41, align 4
  %180 = load i32, i32* %54, align 4
  %181 = call i32 @SLLI_4V(i32 %177, i32 %178, i32 %179, i32 %180, i32 6)
  %182 = load i32, i32* %42, align 4
  %183 = load i32, i32* %46, align 4
  %184 = load i32, i32* %43, align 4
  %185 = load i32, i32* %47, align 4
  %186 = load i32, i32* %31, align 4
  %187 = load i32, i32* %32, align 4
  %188 = load i32, i32* %33, align 4
  %189 = load i32, i32* %34, align 4
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %32, align 4
  %192 = load i32, i32* %33, align 4
  %193 = load i32, i32* %34, align 4
  %194 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 7, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %50, align 4
  %196 = load i32, i32* %51, align 4
  %197 = load i32, i32* %44, align 4
  %198 = load i32, i32* %48, align 4
  %199 = load i32, i32* %35, align 4
  %200 = load i32, i32* %36, align 4
  %201 = load i32, i32* %37, align 4
  %202 = load i32, i32* %38, align 4
  %203 = load i32, i32* %35, align 4
  %204 = load i32, i32* %36, align 4
  %205 = load i32, i32* %37, align 4
  %206 = load i32, i32* %38, align 4
  %207 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 7, i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %45, align 4
  %209 = load i32, i32* %49, align 4
  %210 = load i32, i32* %52, align 4
  %211 = load i32, i32* %53, align 4
  %212 = load i32, i32* %39, align 4
  %213 = load i32, i32* %40, align 4
  %214 = load i32, i32* %41, align 4
  %215 = load i32, i32* %54, align 4
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %41, align 4
  %219 = load i32, i32* %54, align 4
  %220 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 7, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %32, align 4
  %222 = load i32, i32* %31, align 4
  %223 = load i32, i32* %34, align 4
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %36, align 4
  %226 = load i32, i32* %35, align 4
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %18, align 4
  %230 = call i32 @PCKEV_B3_UB(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %38, align 4
  %232 = load i32, i32* %37, align 4
  %233 = load i32, i32* %40, align 4
  %234 = load i32, i32* %39, align 4
  %235 = load i32, i32* %54, align 4
  %236 = load i32, i32* %41, align 4
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %21, align 4
  %240 = call i32 @PCKEV_B3_UB(i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @ST_UB4(i32 %241, i32 %242, i32 %243, i32 %244, i32* %245, i32 %246)
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %21, align 4
  %250 = load i32*, i32** %12, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 16
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @ST_D4(i32 %248, i32 %249, i32 0, i32 1, i32 0, i32 1, i32* %251, i32 %252)
  %254 = load i32, i32* %13, align 4
  %255 = mul nsw i32 4, %254
  %256 = load i32*, i32** %12, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %12, align 8
  br label %56

259:                                              ; preds = %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
