; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_uniwgt_copy_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_uniwgt_copy_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %24 = alloca %struct.TYPE_7__, align 4
  %25 = alloca %struct.TYPE_7__, align 4
  %26 = alloca %struct.TYPE_7__, align 4
  %27 = alloca %struct.TYPE_7__, align 4
  %28 = alloca %struct.TYPE_7__, align 4
  %29 = alloca %struct.TYPE_7__, align 4
  %30 = alloca %struct.TYPE_7__, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %46 = bitcast %struct.TYPE_7__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 4, i1 false)
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, 65535
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @__msa_fill_w(i32 %49)
  store i32 %50, i32* %44, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @__msa_fill_h(i32 %51)
  store i32 %52, i32* %37, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @__msa_fill_w(i32 %53)
  store i32 %54, i32* %45, align 4
  %55 = load i32, i32* %13, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %61, %8
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %17, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %223

61:                                               ; preds = %57
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LD_SB3(i32* %62, i32 16, i32 %64, i32 %66, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LD_SB3(i32* %74, i32 16, i32 %76, i32 %78, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %31, align 4
  %87 = load i32, i32* %32, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ILVRL_B2_SH(i32 %89, i32 %91, i32 %86, i32 %87)
  %93 = load i32, i32* %33, align 4
  %94 = load i32, i32* %34, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ILVRL_B2_SH(i32 %96, i32 %98, i32 %93, i32 %94)
  %100 = load i32, i32* %35, align 4
  %101 = load i32, i32* %36, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ILVRL_B2_SH(i32 %103, i32 %105, i32 %100, i32 %101)
  %107 = load i32, i32* %38, align 4
  %108 = load i32, i32* %39, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ILVRL_B2_SH(i32 %110, i32 %112, i32 %107, i32 %108)
  %114 = load i32, i32* %40, align 4
  %115 = load i32, i32* %41, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ILVRL_B2_SH(i32 %117, i32 %119, i32 %114, i32 %115)
  %121 = load i32, i32* %42, align 4
  %122 = load i32, i32* %43, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ILVRL_B2_SH(i32 %124, i32 %126, i32 %121, i32 %122)
  %128 = load i32, i32* %31, align 4
  %129 = load i32, i32* %32, align 4
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* %34, align 4
  %132 = call i32 @SLLI_4V(i32 %128, i32 %129, i32 %130, i32 %131, i32 6)
  %133 = load i32, i32* %35, align 4
  %134 = load i32, i32* %36, align 4
  %135 = load i32, i32* %38, align 4
  %136 = load i32, i32* %39, align 4
  %137 = call i32 @SLLI_4V(i32 %133, i32 %134, i32 %135, i32 %136, i32 6)
  %138 = load i32, i32* %40, align 4
  %139 = load i32, i32* %41, align 4
  %140 = load i32, i32* %42, align 4
  %141 = load i32, i32* %43, align 4
  %142 = call i32 @SLLI_4V(i32 %138, i32 %139, i32 %140, i32 %141, i32 6)
  %143 = load i32, i32* %31, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %33, align 4
  %146 = load i32, i32* %34, align 4
  %147 = load i32, i32* %44, align 4
  %148 = load i32, i32* %37, align 4
  %149 = load i32, i32* %45, align 4
  %150 = load i32, i32* %31, align 4
  %151 = load i32, i32* %32, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %34, align 4
  %154 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %38, align 4
  %158 = load i32, i32* %39, align 4
  %159 = load i32, i32* %44, align 4
  %160 = load i32, i32* %37, align 4
  %161 = load i32, i32* %45, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %36, align 4
  %164 = load i32, i32* %38, align 4
  %165 = load i32, i32* %39, align 4
  %166 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %40, align 4
  %168 = load i32, i32* %41, align 4
  %169 = load i32, i32* %42, align 4
  %170 = load i32, i32* %43, align 4
  %171 = load i32, i32* %44, align 4
  %172 = load i32, i32* %37, align 4
  %173 = load i32, i32* %45, align 4
  %174 = load i32, i32* %40, align 4
  %175 = load i32, i32* %41, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %43, align 4
  %178 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %33, align 4
  %183 = load i32, i32* %36, align 4
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @PCKEV_B3_UB(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %39, align 4
  %190 = load i32, i32* %38, align 4
  %191 = load i32, i32* %41, align 4
  %192 = load i32, i32* %40, align 4
  %193 = load i32, i32* %43, align 4
  %194 = load i32, i32* %42, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %23, align 4
  %198 = call i32 @PCKEV_B3_UB(i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = call i32 @ST_UB2(i32 %199, i32 %200, i32* %201, i32 16)
  %203 = load i32, i32* %20, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 32
  %206 = call i32 @ST_UB(i32 %203, i32* %205)
  %207 = load i32, i32* %12, align 4
  %208 = load i32*, i32** %11, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %11, align 8
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %22, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @ST_UB2(i32 %211, i32 %212, i32* %213, i32 16)
  %215 = load i32, i32* %23, align 4
  %216 = load i32*, i32** %11, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 32
  %218 = call i32 @ST_UB(i32 %215, i32* %217)
  %219 = load i32, i32* %12, align 4
  %220 = load i32*, i32** %11, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %11, align 8
  br label %57

223:                                              ; preds = %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #2

declare dso_local i32 @ST_UB(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
