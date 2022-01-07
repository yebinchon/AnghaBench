; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_wgt_8x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_wgt_8x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @avc_wgt_8x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_wgt_8x16_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca %struct.TYPE_12__, align 4
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
  %39 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %40 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %40, i8 0, i64 4, i1 false)
  %41 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  %42 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false)
  %43 = bitcast %struct.TYPE_12__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 4, i1 false)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @__msa_fill_h(i32 %47)
  store i32 %48, i32* %37, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @__msa_fill_h(i32 %49)
  store i32 %50, i32* %39, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @__msa_fill_h(i32 %51)
  store i32 %52, i32* %38, align 4
  store i32 2, i32* %12, align 4
  br label %53

53:                                               ; preds = %57, %5
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %229

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @LD4(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @INSERT_D2_UB(i32 %65, i32 %66, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @INSERT_D2_UB(i32 %70, i32 %71, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul i32 4, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @LD4(i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @INSERT_D2_UB(i32 %86, i32 %87, i32 %89)
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @INSERT_D2_UB(i32 %91, i32 %92, i32 %94)
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UNPCK_UB_SH(i32 %99, i32 %96, i32 %97)
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %24, align 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @UNPCK_UB_SH(i32 %104, i32 %101, i32 %102)
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UNPCK_UB_SH(i32 %109, i32 %106, i32 %107)
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %28, align 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @UNPCK_UB_SH(i32 %114, i32 %111, i32 %112)
  %116 = load i32, i32* %37, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %37, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %37, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %37, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %29, align 4
  %125 = load i32, i32* %30, align 4
  %126 = load i32, i32* %31, align 4
  %127 = load i32, i32* %32, align 4
  %128 = call i32 @MUL4(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %37, align 4
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %37, align 4
  %132 = load i32, i32* %26, align 4
  %133 = load i32, i32* %37, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %37, align 4
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %33, align 4
  %138 = load i32, i32* %34, align 4
  %139 = load i32, i32* %35, align 4
  %140 = load i32, i32* %36, align 4
  %141 = call i32 @MUL4(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %39, align 4
  %144 = load i32, i32* %30, align 4
  %145 = load i32, i32* %39, align 4
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %39, align 4
  %148 = load i32, i32* %32, align 4
  %149 = load i32, i32* %39, align 4
  %150 = load i32, i32* %29, align 4
  %151 = load i32, i32* %30, align 4
  %152 = load i32, i32* %31, align 4
  %153 = load i32, i32* %32, align 4
  %154 = call i32 @ADDS_SH4_SH(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %33, align 4
  %156 = load i32, i32* %39, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %39, align 4
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %39, align 4
  %161 = load i32, i32* %36, align 4
  %162 = load i32, i32* %39, align 4
  %163 = load i32, i32* %33, align 4
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %36, align 4
  %167 = call i32 @ADDS_SH4_SH(i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* %30, align 4
  %170 = load i32, i32* %31, align 4
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %34, align 4
  %174 = load i32, i32* %35, align 4
  %175 = load i32, i32* %36, align 4
  %176 = call i32 @MAXI_SH8_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 0)
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %30, align 4
  %179 = load i32, i32* %31, align 4
  %180 = load i32, i32* %32, align 4
  %181 = load i32, i32* %33, align 4
  %182 = load i32, i32* %34, align 4
  %183 = load i32, i32* %35, align 4
  %184 = load i32, i32* %36, align 4
  %185 = load i32, i32* %38, align 4
  %186 = call i32 @SRLR_H8_SH(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %29, align 4
  %188 = load i32, i32* %30, align 4
  %189 = load i32, i32* %31, align 4
  %190 = load i32, i32* %32, align 4
  %191 = load i32, i32* %33, align 4
  %192 = load i32, i32* %34, align 4
  %193 = load i32, i32* %35, align 4
  %194 = load i32, i32* %36, align 4
  %195 = call i32 @SAT_UH8_SH(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 7)
  %196 = load i32, i32* %30, align 4
  %197 = load i32, i32* %29, align 4
  %198 = load i32, i32* %32, align 4
  %199 = load i32, i32* %31, align 4
  %200 = load i32, i32* %34, align 4
  %201 = load i32, i32* %33, align 4
  %202 = load i32, i32* %36, align 4
  %203 = load i32, i32* %35, align 4
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @PCKEV_B4_UB(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %205, i32 %207, i32 %209, i32 %211)
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ST_D8(i32 %216, i32 %218, i32 %220, i32 %222, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %213, i32 %214)
  %224 = load i32, i32* %7, align 4
  %225 = mul i32 8, %224
  %226 = load i32*, i32** %6, align 8
  %227 = zext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %6, align 8
  br label %53

229:                                              ; preds = %53
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
