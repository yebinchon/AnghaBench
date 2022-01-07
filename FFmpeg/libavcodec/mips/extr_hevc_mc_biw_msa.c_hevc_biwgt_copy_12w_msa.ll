; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_biwgt_copy_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_biwgt_copy_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_24__, align 4
  %33 = alloca %struct.TYPE_24__, align 4
  %34 = alloca %struct.TYPE_24__, align 4
  %35 = alloca %struct.TYPE_24__, align 4
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
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %53 = bitcast %struct.TYPE_24__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 4, i1 false)
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %23, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %24, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %20, align 4
  %60 = and i32 %59, 65535
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %61, %63
  store i32 %64, i32* %27, align 4
  %65 = load i32, i32* %26, align 4
  %66 = call i32 @__msa_fill_w(i32 %65)
  store i32 %66, i32* %50, align 4
  %67 = load i32, i32* %27, align 4
  %68 = call i32 @__msa_fill_w(i32 %67)
  store i32 %68, i32* %51, align 4
  %69 = load i32, i32* %24, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @__msa_fill_w(i32 %70)
  store i32 %71, i32* %52, align 4
  store i32 4, i32* %25, align 4
  br label %72

72:                                               ; preds = %76, %12
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %25, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %225

76:                                               ; preds = %72
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @LD_SB4(i32* %77, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 4, %88
  %90 = load i32*, i32** %13, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %13, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %36, align 4
  %96 = load i32, i32* %37, align 4
  %97 = load i32, i32* %38, align 4
  %98 = load i32, i32* %39, align 4
  %99 = call i32 @LD_SH4(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %40, align 4
  %104 = load i32, i32* %41, align 4
  %105 = load i32, i32* %42, align 4
  %106 = load i32, i32* %43, align 4
  %107 = call i32 @LD_SH4(i32* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = mul nsw i32 4, %108
  %110 = load i32*, i32** %15, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %15, align 8
  %113 = load i32, i32* %41, align 4
  %114 = load i32, i32* %40, align 4
  %115 = load i32, i32* %43, align 4
  %116 = load i32, i32* %42, align 4
  %117 = load i32, i32* %40, align 4
  %118 = load i32, i32* %41, align 4
  %119 = call i32 @ILVR_D2_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %44, align 4
  %121 = load i32, i32* %45, align 4
  %122 = load i32, i32* %46, align 4
  %123 = load i32, i32* %47, align 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ILVR_B4_SH(i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i32 %137, i32 %139, i32 %120, i32 %121, i32 %122, i32 %123)
  %141 = load i32, i32* %44, align 4
  %142 = load i32, i32* %45, align 4
  %143 = load i32, i32* %46, align 4
  %144 = load i32, i32* %47, align 4
  %145 = call i32 @SLLI_4V(i32 %141, i32 %142, i32 %143, i32 %144, i32 6)
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ILVL_W2_SB(i32 %147, i32 %149, i32 %151, i32 %153, i32 %155, i32 %157)
  %159 = load i32, i32* %48, align 4
  %160 = load i32, i32* %49, align 4
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ILVR_B2_SH(i32 %162, i32 %164, i32 %166, i32 %168, i32 %159, i32 %160)
  %170 = load i32, i32* %48, align 4
  %171 = shl i32 %170, 6
  store i32 %171, i32* %48, align 4
  %172 = load i32, i32* %49, align 4
  %173 = shl i32 %172, 6
  store i32 %173, i32* %49, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32, i32* %45, align 4
  %176 = load i32, i32* %46, align 4
  %177 = load i32, i32* %47, align 4
  %178 = load i32, i32* %36, align 4
  %179 = load i32, i32* %37, align 4
  %180 = load i32, i32* %38, align 4
  %181 = load i32, i32* %39, align 4
  %182 = load i32, i32* %51, align 4
  %183 = load i32, i32* %52, align 4
  %184 = load i32, i32* %50, align 4
  %185 = load i32, i32* %44, align 4
  %186 = load i32, i32* %45, align 4
  %187 = load i32, i32* %46, align 4
  %188 = load i32, i32* %47, align 4
  %189 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %48, align 4
  %191 = load i32, i32* %49, align 4
  %192 = load i32, i32* %40, align 4
  %193 = load i32, i32* %41, align 4
  %194 = load i32, i32* %51, align 4
  %195 = load i32, i32* %52, align 4
  %196 = load i32, i32* %50, align 4
  %197 = load i32, i32* %48, align 4
  %198 = load i32, i32* %49, align 4
  %199 = call i32 @HEVC_BIW_RND_CLIP2_MAX_SATU(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %45, align 4
  %201 = load i32, i32* %44, align 4
  %202 = load i32, i32* %47, align 4
  %203 = load i32, i32* %46, align 4
  %204 = load i32, i32* %49, align 4
  %205 = load i32, i32* %48, align 4
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %31, align 4
  %209 = call i32 @PCKEV_B3_UB(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %29, align 4
  %211 = load i32, i32* %30, align 4
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @ST_D4(i32 %210, i32 %211, i32 0, i32 1, i32 0, i32 1, i32* %212, i32 %213)
  %215 = load i32, i32* %31, align 4
  %216 = load i32*, i32** %17, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 8
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @ST_W4(i32 %215, i32 0, i32 1, i32 2, i32 3, i32* %217, i32 %218)
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 4, %220
  %222 = load i32*, i32** %17, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %17, align 8
  br label %72

225:                                              ; preds = %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_W2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP2_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
