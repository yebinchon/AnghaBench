; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_uniwgt_copy_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_uniwgt_copy_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_8__, align 4
  %27 = alloca %struct.TYPE_8__, align 4
  %28 = alloca %struct.TYPE_8__, align 4
  %29 = alloca %struct.TYPE_8__, align 4
  %30 = alloca %struct.TYPE_8__, align 4
  %31 = alloca %struct.TYPE_8__, align 4
  %32 = alloca %struct.TYPE_8__, align 4
  %33 = alloca %struct.TYPE_8__, align 4
  %34 = alloca %struct.TYPE_8__, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %54 = bitcast %struct.TYPE_8__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 4, i1 false)
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @__msa_fill_w(i32 %57)
  store i32 %58, i32* %52, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @__msa_fill_h(i32 %59)
  store i32 %60, i32* %43, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @__msa_fill_w(i32 %61)
  store i32 %62, i32* %53, align 4
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %69, %8
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %17, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %270

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @LD_SB4(i32* %70, i32 16, i32 %72, i32 %74, i32 %76, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @LD_SB4(i32* %84, i32 16, i32 %86, i32 %88, i32 %90, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %9, align 8
  %98 = load i32, i32* %35, align 4
  %99 = load i32, i32* %36, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ILVRL_B2_SH(i32 %101, i32 %103, i32 %98, i32 %99)
  %105 = load i32, i32* %37, align 4
  %106 = load i32, i32* %38, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ILVRL_B2_SH(i32 %108, i32 %110, i32 %105, i32 %106)
  %112 = load i32, i32* %39, align 4
  %113 = load i32, i32* %40, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ILVRL_B2_SH(i32 %115, i32 %117, i32 %112, i32 %113)
  %119 = load i32, i32* %41, align 4
  %120 = load i32, i32* %42, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ILVRL_B2_SH(i32 %122, i32 %124, i32 %119, i32 %120)
  %126 = load i32, i32* %44, align 4
  %127 = load i32, i32* %45, align 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ILVRL_B2_SH(i32 %129, i32 %131, i32 %126, i32 %127)
  %133 = load i32, i32* %46, align 4
  %134 = load i32, i32* %47, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ILVRL_B2_SH(i32 %136, i32 %138, i32 %133, i32 %134)
  %140 = load i32, i32* %48, align 4
  %141 = load i32, i32* %49, align 4
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ILVRL_B2_SH(i32 %143, i32 %145, i32 %140, i32 %141)
  %147 = load i32, i32* %50, align 4
  %148 = load i32, i32* %51, align 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ILVRL_B2_SH(i32 %150, i32 %152, i32 %147, i32 %148)
  %154 = load i32, i32* %35, align 4
  %155 = load i32, i32* %36, align 4
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %38, align 4
  %158 = call i32 @SLLI_4V(i32 %154, i32 %155, i32 %156, i32 %157, i32 6)
  %159 = load i32, i32* %39, align 4
  %160 = load i32, i32* %40, align 4
  %161 = load i32, i32* %41, align 4
  %162 = load i32, i32* %42, align 4
  %163 = call i32 @SLLI_4V(i32 %159, i32 %160, i32 %161, i32 %162, i32 6)
  %164 = load i32, i32* %44, align 4
  %165 = load i32, i32* %45, align 4
  %166 = load i32, i32* %46, align 4
  %167 = load i32, i32* %47, align 4
  %168 = call i32 @SLLI_4V(i32 %164, i32 %165, i32 %166, i32 %167, i32 6)
  %169 = load i32, i32* %48, align 4
  %170 = load i32, i32* %49, align 4
  %171 = load i32, i32* %50, align 4
  %172 = load i32, i32* %51, align 4
  %173 = call i32 @SLLI_4V(i32 %169, i32 %170, i32 %171, i32 %172, i32 6)
  %174 = load i32, i32* %35, align 4
  %175 = load i32, i32* %36, align 4
  %176 = load i32, i32* %37, align 4
  %177 = load i32, i32* %38, align 4
  %178 = load i32, i32* %52, align 4
  %179 = load i32, i32* %43, align 4
  %180 = load i32, i32* %53, align 4
  %181 = load i32, i32* %35, align 4
  %182 = load i32, i32* %36, align 4
  %183 = load i32, i32* %37, align 4
  %184 = load i32, i32* %38, align 4
  %185 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %39, align 4
  %187 = load i32, i32* %40, align 4
  %188 = load i32, i32* %41, align 4
  %189 = load i32, i32* %42, align 4
  %190 = load i32, i32* %52, align 4
  %191 = load i32, i32* %43, align 4
  %192 = load i32, i32* %53, align 4
  %193 = load i32, i32* %39, align 4
  %194 = load i32, i32* %40, align 4
  %195 = load i32, i32* %41, align 4
  %196 = load i32, i32* %42, align 4
  %197 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %44, align 4
  %199 = load i32, i32* %45, align 4
  %200 = load i32, i32* %46, align 4
  %201 = load i32, i32* %47, align 4
  %202 = load i32, i32* %52, align 4
  %203 = load i32, i32* %43, align 4
  %204 = load i32, i32* %53, align 4
  %205 = load i32, i32* %44, align 4
  %206 = load i32, i32* %45, align 4
  %207 = load i32, i32* %46, align 4
  %208 = load i32, i32* %47, align 4
  %209 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %48, align 4
  %211 = load i32, i32* %49, align 4
  %212 = load i32, i32* %50, align 4
  %213 = load i32, i32* %51, align 4
  %214 = load i32, i32* %52, align 4
  %215 = load i32, i32* %43, align 4
  %216 = load i32, i32* %53, align 4
  %217 = load i32, i32* %48, align 4
  %218 = load i32, i32* %49, align 4
  %219 = load i32, i32* %50, align 4
  %220 = load i32, i32* %51, align 4
  %221 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %36, align 4
  %223 = load i32, i32* %35, align 4
  %224 = load i32, i32* %38, align 4
  %225 = load i32, i32* %37, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @PCKEV_B2_UB(i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %40, align 4
  %230 = load i32, i32* %39, align 4
  %231 = load i32, i32* %42, align 4
  %232 = load i32, i32* %41, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %21, align 4
  %235 = call i32 @PCKEV_B2_UB(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %45, align 4
  %237 = load i32, i32* %44, align 4
  %238 = load i32, i32* %47, align 4
  %239 = load i32, i32* %46, align 4
  %240 = load i32, i32* %22, align 4
  %241 = load i32, i32* %23, align 4
  %242 = call i32 @PCKEV_B2_UB(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %49, align 4
  %244 = load i32, i32* %48, align 4
  %245 = load i32, i32* %51, align 4
  %246 = load i32, i32* %50, align 4
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %25, align 4
  %249 = call i32 @PCKEV_B2_UB(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @ST_UB4(i32 %250, i32 %251, i32 %252, i32 %253, i32* %254, i32 16)
  %256 = load i32, i32* %12, align 4
  %257 = load i32*, i32** %11, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %11, align 8
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %24, align 4
  %263 = load i32, i32* %25, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 @ST_UB4(i32 %260, i32 %261, i32 %262, i32 %263, i32* %264, i32 16)
  %266 = load i32, i32* %12, align 4
  %267 = load i32*, i32** %11, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %11, align 8
  br label %65

270:                                              ; preds = %65
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
