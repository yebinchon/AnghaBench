; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_wgt_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_wgt_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @avc_wgt_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_wgt_8x8_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca %struct.TYPE_12__, align 4
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %39 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 4, i1 false)
  %40 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %40, i8 0, i64 4, i1 false)
  %41 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  %42 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @__msa_fill_h(i32 %46)
  store i32 %47, i32* %36, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @__msa_fill_h(i32 %48)
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @__msa_fill_h(i32 %50)
  store i32 %51, i32* %37, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @LD4(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @INSERT_D2_UB(i32 %59, i32 %60, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @INSERT_D2_UB(i32 %64, i32 %65, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul i32 4, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @LD4(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @INSERT_D2_UB(i32 %80, i32 %81, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @INSERT_D2_UB(i32 %85, i32 %86, i32 %88)
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %21, align 4
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @UNPCK_UB_SH(i32 %93, i32 %90, i32 %91)
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UNPCK_UB_SH(i32 %98, i32 %95, i32 %96)
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %25, align 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @UNPCK_UB_SH(i32 %103, i32 %100, i32 %101)
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UNPCK_UB_SH(i32 %108, i32 %105, i32 %106)
  %110 = load i32, i32* %36, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %36, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %36, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %36, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %29, align 4
  %120 = load i32, i32* %30, align 4
  %121 = load i32, i32* %31, align 4
  %122 = call i32 @MUL4(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %36, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %36, align 4
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* %36, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %36, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %32, align 4
  %132 = load i32, i32* %33, align 4
  %133 = load i32, i32* %34, align 4
  %134 = load i32, i32* %35, align 4
  %135 = call i32 @MUL4(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %38, align 4
  %138 = load i32, i32* %29, align 4
  %139 = load i32, i32* %38, align 4
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %38, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %38, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %31, align 4
  %148 = call i32 @ADDS_SH4_SH(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %32, align 4
  %150 = load i32, i32* %38, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %38, align 4
  %153 = load i32, i32* %34, align 4
  %154 = load i32, i32* %38, align 4
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* %38, align 4
  %157 = load i32, i32* %32, align 4
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %35, align 4
  %161 = call i32 @ADDS_SH4_SH(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* %29, align 4
  %164 = load i32, i32* %30, align 4
  %165 = load i32, i32* %31, align 4
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %33, align 4
  %168 = load i32, i32* %34, align 4
  %169 = load i32, i32* %35, align 4
  %170 = call i32 @MAXI_SH8_SH(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 0)
  %171 = load i32, i32* %28, align 4
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* %31, align 4
  %175 = load i32, i32* %32, align 4
  %176 = load i32, i32* %33, align 4
  %177 = load i32, i32* %34, align 4
  %178 = load i32, i32* %35, align 4
  %179 = load i32, i32* %37, align 4
  %180 = call i32 @SRLR_H8_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %28, align 4
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %31, align 4
  %185 = load i32, i32* %32, align 4
  %186 = load i32, i32* %33, align 4
  %187 = load i32, i32* %34, align 4
  %188 = load i32, i32* %35, align 4
  %189 = call i32 @SAT_UH8_SH(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 7)
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %28, align 4
  %192 = load i32, i32* %31, align 4
  %193 = load i32, i32* %30, align 4
  %194 = load i32, i32* %33, align 4
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %35, align 4
  %197 = load i32, i32* %34, align 4
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @PCKEV_B4_UB(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %199, i32 %201, i32 %203, i32 %205)
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %7, align 4
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ST_D8(i32 %210, i32 %212, i32 %214, i32 %216, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %207, i32 %208)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #2

declare dso_local i32 @MUL4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @MAXI_SH8_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRLR_H8_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SAT_UH8_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
