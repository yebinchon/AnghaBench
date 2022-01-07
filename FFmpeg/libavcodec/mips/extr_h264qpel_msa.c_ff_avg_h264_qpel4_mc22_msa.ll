; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel4_mc22_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel4_mc22_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel4_mc22_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca %struct.TYPE_8__, align 4
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
  %27 = alloca i32, align 4
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
  %52 = alloca %struct.TYPE_8__, align 4
  %53 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %54 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 4, i1 false)
  %55 = load i32*, i32** @luma_mask_arr, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 48
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* %27, align 4
  %60 = call i32 @LD_SB3(i32* %56, i32 16, i32 %57, i32 %58, i32 %59)
  %61 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %61, i64* %39, align 8
  %62 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %62, i64* %40, align 8
  %63 = call i64 @__msa_fill_w(i32 131067)
  store i64 %63, i64* %41, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %65, 2
  %67 = load i32*, i32** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @LD_SB5(i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 5, %79
  %81 = load i32*, i32** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %24, align 4
  %90 = call i32 @LD_SB4(i32* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @XORI_B5_128_SB(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @XORI_B4_128_SB(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  %107 = call i64 @AVC_HORZ_FILTER_SH(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i64 %107, i64* %28, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %27, align 4
  %113 = call i64 @AVC_HORZ_FILTER_SH(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  store i64 %113, i64* %30, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* %27, align 4
  %119 = call i64 @AVC_HORZ_FILTER_SH(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  store i64 %119, i64* %32, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = call i64 @AVC_HORZ_FILTER_SH(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  store i64 %125, i64* %34, align 8
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* %27, align 4
  %131 = call i64 @AVC_HORZ_FILTER_SH(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  store i64 %131, i64* %36, align 8
  %132 = load i64, i64* %28, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %30, align 8
  %135 = load i64, i64* %30, align 8
  %136 = load i64, i64* %29, align 8
  %137 = load i64, i64* %31, align 8
  %138 = call i32 @PCKOD_D2_SH(i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %32, align 8
  %140 = load i64, i64* %32, align 8
  %141 = load i64, i64* %34, align 8
  %142 = load i64, i64* %34, align 8
  %143 = load i64, i64* %33, align 8
  %144 = load i64, i64* %35, align 8
  %145 = call i32 @PCKOD_D2_SH(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* %30, align 8
  %149 = load i64, i64* %29, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i64, i64* %31, align 8
  %154 = load i64, i64* %42, align 8
  %155 = load i64, i64* %43, align 8
  %156 = load i64, i64* %44, align 8
  %157 = load i64, i64* %45, align 8
  %158 = call i32 @ILVR_H4_SH(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %33, align 8
  %160 = load i64, i64* %32, align 8
  %161 = load i64, i64* %34, align 8
  %162 = load i64, i64* %33, align 8
  %163 = load i64, i64* %35, align 8
  %164 = load i64, i64* %34, align 8
  %165 = load i64, i64* %36, align 8
  %166 = load i64, i64* %35, align 8
  %167 = load i64, i64* %46, align 8
  %168 = load i64, i64* %47, align 8
  %169 = load i64, i64* %48, align 8
  %170 = load i64, i64* %49, align 8
  %171 = call i32 @ILVR_H4_SH(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %42, align 8
  %173 = load i64, i64* %44, align 8
  %174 = load i64, i64* %46, align 8
  %175 = load i64, i64* %39, align 8
  %176 = load i64, i64* %40, align 8
  %177 = load i64, i64* %41, align 8
  %178 = call i64 @AVC_DOT_SW3_SW(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  store i64 %178, i64* %50, align 8
  %179 = load i64, i64* %43, align 8
  %180 = load i64, i64* %45, align 8
  %181 = load i64, i64* %47, align 8
  %182 = load i64, i64* %39, align 8
  %183 = load i64, i64* %40, align 8
  %184 = load i64, i64* %41, align 8
  %185 = call i64 @AVC_DOT_SW3_SW(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  store i64 %185, i64* %51, align 8
  %186 = load i64, i64* %51, align 8
  %187 = load i64, i64* %50, align 8
  %188 = call i64 @__msa_pckev_h(i64 %186, i64 %187)
  store i64 %188, i64* %37, align 8
  %189 = load i64, i64* %44, align 8
  %190 = load i64, i64* %46, align 8
  %191 = load i64, i64* %48, align 8
  %192 = load i64, i64* %39, align 8
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* %41, align 8
  %195 = call i64 @AVC_DOT_SW3_SW(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  store i64 %195, i64* %50, align 8
  %196 = load i64, i64* %45, align 8
  %197 = load i64, i64* %47, align 8
  %198 = load i64, i64* %49, align 8
  %199 = load i64, i64* %39, align 8
  %200 = load i64, i64* %40, align 8
  %201 = load i64, i64* %41, align 8
  %202 = call i64 @AVC_DOT_SW3_SW(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  store i64 %202, i64* %51, align 8
  %203 = load i64, i64* %51, align 8
  %204 = load i64, i64* %50, align 8
  %205 = call i64 @__msa_pckev_h(i64 %203, i64 %204)
  store i64 %205, i64* %38, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @LW4(i32* %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @INSERT_W4_UB(i32 %213, i32 %214, i32 %215, i32 %216, i32 %218)
  %220 = load i64, i64* %37, align 8
  %221 = load i64, i64* %38, align 8
  %222 = call i32 @PCKEV_XORI128_UB(i64 %220, i64 %221)
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %222, i32* %223, align 4
  %224 = bitcast %struct.TYPE_8__* %14 to i8*
  %225 = bitcast %struct.TYPE_8__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %224, i8* align 4 %225, i64 4, i1 false)
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @__msa_aver_u_b(i32 %227, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %230, i32* %231, align 4
  %232 = bitcast %struct.TYPE_8__* %14 to i8*
  %233 = bitcast %struct.TYPE_8__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %232, i8* align 4 %233, i64 4, i1 false)
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ST_W4(i32 %237, i32 0, i32 1, i32 2, i32 3, i32* %234, i32 %235)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i64 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKOD_D2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_pckev_h(i64, i64) #2

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__msa_aver_u_b(i32, i32) #2

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
