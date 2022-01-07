; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_biwgt_copy_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_biwgt_copy_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_6__, align 4
  %33 = alloca %struct.TYPE_6__, align 4
  %34 = alloca %struct.TYPE_6__, align 4
  %35 = alloca %struct.TYPE_6__, align 4
  %36 = alloca %struct.TYPE_6__, align 4
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
  %55 = alloca i32, align 4
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
  %56 = bitcast %struct.TYPE_6__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %23, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %24, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %20, align 4
  %63 = and i32 %62, 65535
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %21, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  store i32 %67, i32* %27, align 4
  %68 = load i32, i32* %26, align 4
  %69 = call i32 @__msa_fill_w(i32 %68)
  store i32 %69, i32* %53, align 4
  %70 = load i32, i32* %27, align 4
  %71 = call i32 @__msa_fill_w(i32 %70)
  store i32 %71, i32* %54, align 4
  %72 = load i32, i32* %24, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @__msa_fill_w(i32 %73)
  store i32 %74, i32* %55, align 4
  %75 = load i32, i32* %19, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %25, align 4
  br label %77

77:                                               ; preds = %81, %12
  %78 = load i32, i32* %25, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %25, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %222

81:                                               ; preds = %77
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @LD_SB2(i32* %82, i32 16, i32 %84, i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @LD_SB2(i32* %92, i32 16, i32 %94, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* %38, align 4
  %105 = load i32, i32* %39, align 4
  %106 = load i32, i32* %40, align 4
  %107 = call i32 @LD_SH4(i32* %102, i32 8, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %15, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %41, align 4
  %114 = load i32, i32* %42, align 4
  %115 = load i32, i32* %43, align 4
  %116 = load i32, i32* %44, align 4
  %117 = call i32 @LD_SH4(i32* %112, i32 8, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %15, align 8
  %122 = load i32, i32* %45, align 4
  %123 = load i32, i32* %49, align 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ILVRL_B2_SH(i32 %125, i32 %127, i32 %122, i32 %123)
  %129 = load i32, i32* %46, align 4
  %130 = load i32, i32* %50, align 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ILVRL_B2_SH(i32 %132, i32 %134, i32 %129, i32 %130)
  %136 = load i32, i32* %47, align 4
  %137 = load i32, i32* %51, align 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ILVRL_B2_SH(i32 %139, i32 %141, i32 %136, i32 %137)
  %143 = load i32, i32* %48, align 4
  %144 = load i32, i32* %52, align 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ILVRL_B2_SH(i32 %146, i32 %148, i32 %143, i32 %144)
  %150 = load i32, i32* %45, align 4
  %151 = load i32, i32* %46, align 4
  %152 = load i32, i32* %47, align 4
  %153 = load i32, i32* %48, align 4
  %154 = call i32 @SLLI_4V(i32 %150, i32 %151, i32 %152, i32 %153, i32 6)
  %155 = load i32, i32* %49, align 4
  %156 = load i32, i32* %50, align 4
  %157 = load i32, i32* %51, align 4
  %158 = load i32, i32* %52, align 4
  %159 = call i32 @SLLI_4V(i32 %155, i32 %156, i32 %157, i32 %158, i32 6)
  %160 = load i32, i32* %45, align 4
  %161 = load i32, i32* %49, align 4
  %162 = load i32, i32* %46, align 4
  %163 = load i32, i32* %50, align 4
  %164 = load i32, i32* %37, align 4
  %165 = load i32, i32* %38, align 4
  %166 = load i32, i32* %39, align 4
  %167 = load i32, i32* %40, align 4
  %168 = load i32, i32* %54, align 4
  %169 = load i32, i32* %55, align 4
  %170 = load i32, i32* %53, align 4
  %171 = load i32, i32* %45, align 4
  %172 = load i32, i32* %49, align 4
  %173 = load i32, i32* %46, align 4
  %174 = load i32, i32* %50, align 4
  %175 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %47, align 4
  %177 = load i32, i32* %51, align 4
  %178 = load i32, i32* %48, align 4
  %179 = load i32, i32* %52, align 4
  %180 = load i32, i32* %41, align 4
  %181 = load i32, i32* %42, align 4
  %182 = load i32, i32* %43, align 4
  %183 = load i32, i32* %44, align 4
  %184 = load i32, i32* %54, align 4
  %185 = load i32, i32* %55, align 4
  %186 = load i32, i32* %53, align 4
  %187 = load i32, i32* %47, align 4
  %188 = load i32, i32* %51, align 4
  %189 = load i32, i32* %48, align 4
  %190 = load i32, i32* %52, align 4
  %191 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %49, align 4
  %193 = load i32, i32* %45, align 4
  %194 = load i32, i32* %50, align 4
  %195 = load i32, i32* %46, align 4
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %29, align 4
  %198 = call i32 @PCKEV_B2_UB(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %51, align 4
  %200 = load i32, i32* %47, align 4
  %201 = load i32, i32* %52, align 4
  %202 = load i32, i32* %48, align 4
  %203 = load i32, i32* %30, align 4
  %204 = load i32, i32* %31, align 4
  %205 = call i32 @PCKEV_B2_UB(i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %28, align 4
  %207 = load i32, i32* %29, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @ST_UB2(i32 %206, i32 %207, i32* %208, i32 16)
  %210 = load i32, i32* %18, align 4
  %211 = load i32*, i32** %17, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %17, align 8
  %214 = load i32, i32* %30, align 4
  %215 = load i32, i32* %31, align 4
  %216 = load i32*, i32** %17, align 8
  %217 = call i32 @ST_UB2(i32 %214, i32 %215, i32* %216, i32 16)
  %218 = load i32, i32* %18, align 4
  %219 = load i32*, i32** %17, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %17, align 8
  br label %77

222:                                              ; preds = %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
