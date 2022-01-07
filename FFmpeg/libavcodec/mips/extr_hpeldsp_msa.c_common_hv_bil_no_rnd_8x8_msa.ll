; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @common_hv_bil_no_rnd_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_no_rnd_8x8_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca %struct.TYPE_15__, align 4
  %54 = alloca %struct.TYPE_15__, align 4
  %55 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %56 = bitcast %struct.TYPE_15__* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @LD_UB8(i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 8, %68
  %70 = load i32*, i32** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @LD_UB(i32* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SLDI_B4_UB(i32 %84, i32 %75, i32 %86, i32 %76, i32 %88, i32 %77, i32 %90, i32 %78, i32 1, i32 %79, i32 %80, i32 %81, i32 %82)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SLDI_B3_UB(i32 %99, i32 %92, i32 %101, i32 %93, i32 %103, i32 %94, i32 1, i32 %95, i32 %96, i32 %97)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %26, align 4
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SLDI_B2_UB(i32 %110, i32 %105, i32 %112, i32 %106, i32 1, i32 %107, i32 %108)
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* %30, align 8
  %126 = call i32 @ILVR_B4_UH(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* %32, align 8
  %135 = load i64, i64* %33, align 8
  %136 = call i32 @ILVR_B3_UH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i64, i64* %34, align 8
  %142 = load i64, i64* %35, align 8
  %143 = call i32 @ILVR_B2_UH(i32 %137, i32 %138, i32 %139, i32 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %28, align 8
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %37, align 8
  %149 = load i64, i64* %38, align 8
  %150 = call i32 @HADD_UB3_UH(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %32, align 8
  %154 = load i64, i64* %39, align 8
  %155 = load i64, i64* %40, align 8
  %156 = load i64, i64* %41, align 8
  %157 = call i32 @HADD_UB3_UH(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %33, align 8
  %159 = load i64, i64* %34, align 8
  %160 = load i64, i64* %35, align 8
  %161 = load i64, i64* %42, align 8
  %162 = load i64, i64* %43, align 8
  %163 = load i64, i64* %44, align 8
  %164 = call i32 @HADD_UB3_UH(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %36, align 8
  %166 = load i64, i64* %37, align 8
  %167 = add nsw i64 %165, %166
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %45, align 8
  %169 = load i64, i64* %37, align 8
  %170 = load i64, i64* %38, align 8
  %171 = add nsw i64 %169, %170
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %46, align 8
  %173 = load i64, i64* %38, align 8
  %174 = load i64, i64* %39, align 8
  %175 = add nsw i64 %173, %174
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %47, align 8
  %177 = load i64, i64* %39, align 8
  %178 = load i64, i64* %40, align 8
  %179 = add nsw i64 %177, %178
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %48, align 8
  %181 = load i64, i64* %40, align 8
  %182 = load i64, i64* %41, align 8
  %183 = add nsw i64 %181, %182
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %49, align 8
  %185 = load i64, i64* %41, align 8
  %186 = load i64, i64* %42, align 8
  %187 = add nsw i64 %185, %186
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %50, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = add nsw i64 %189, %190
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %51, align 8
  %193 = load i64, i64* %43, align 8
  %194 = load i64, i64* %44, align 8
  %195 = add nsw i64 %193, %194
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %52, align 8
  %197 = load i64, i64* %45, align 8
  %198 = load i64, i64* %46, align 8
  %199 = load i64, i64* %47, align 8
  %200 = load i64, i64* %48, align 8
  %201 = call i32 @SRA_4V(i64 %197, i64 %198, i64 %199, i64 %200, i32 2)
  %202 = load i64, i64* %49, align 8
  %203 = load i64, i64* %50, align 8
  %204 = load i64, i64* %51, align 8
  %205 = load i64, i64* %52, align 8
  %206 = call i32 @SRA_4V(i64 %202, i64 %203, i64 %204, i64 %205, i32 2)
  %207 = load i64, i64* %46, align 8
  %208 = load i64, i64* %45, align 8
  %209 = load i64, i64* %48, align 8
  %210 = load i64, i64* %47, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @PCKEV_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i32 %212, i32 %214)
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %8, align 4
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ST_D4(i32 %219, i32 %221, i32 0, i32 1, i32 0, i32 1, i32* %216, i32 %217)
  %223 = load i64, i64* %50, align 8
  %224 = load i64, i64* %49, align 8
  %225 = load i64, i64* %52, align 8
  %226 = load i64, i64* %51, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @PCKEV_B2_SB(i64 %223, i64 %224, i64 %225, i64 %226, i32 %228, i32 %230)
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 4, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %8, align 4
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ST_D4(i32 %239, i32 %241, i32 0, i32 1, i32 0, i32 1, i32* %236, i32 %237)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_UB(i32*) #2

declare dso_local i32 @SLDI_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B2_UB(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_UH(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #2

declare dso_local i32 @ILVR_B3_UH(i32, i32, i32, i32, i32, i32, i64, i64, i64) #2

declare dso_local i32 @ILVR_B2_UH(i32, i32, i32, i32, i64, i64) #2

declare dso_local i32 @HADD_UB3_UH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @SRA_4V(i64, i64, i64, i64, i32) #2

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
