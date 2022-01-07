; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_intra_pred_dc_16x16_msa(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %5, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 -1
  store i64* %19, i64** %6, align 8
  %20 = load i64*, i64** %3, align 8
  store i64* %20, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = call i64 @LD_UB(i64* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @__msa_hadd_u_h(i64 %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @__msa_hadd_u_w(i32 %26, i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @__msa_hadd_u_d(i64 %29, i64 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %13, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @__msa_pckev_w(i32 %33, i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @__msa_hadd_u_d(i64 %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @__msa_copy_u_w(i32 %41, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %4, align 8
  %45 = mul i64 0, %44
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = mul i64 1, %53
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %4, align 8
  %63 = mul i64 2, %62
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %4, align 8
  %72 = mul i64 3, %71
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %4, align 8
  %81 = mul i64 4, %80
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %4, align 8
  %90 = mul i64 5, %89
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %4, align 8
  %99 = mul i64 6, %98
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i64*, i64** %6, align 8
  %107 = load i64, i64* %4, align 8
  %108 = mul i64 7, %107
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %8, align 4
  %115 = load i64*, i64** %6, align 8
  %116 = load i64, i64* %4, align 8
  %117 = mul i64 8, %116
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %4, align 8
  %126 = mul i64 9, %125
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %8, align 4
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* %4, align 8
  %135 = mul i64 10, %134
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %8, align 4
  %142 = load i64*, i64** %6, align 8
  %143 = load i64, i64* %4, align 8
  %144 = mul i64 11, %143
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %8, align 4
  %151 = load i64*, i64** %6, align 8
  %152 = load i64, i64* %4, align 8
  %153 = mul i64 12, %152
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %8, align 4
  %160 = load i64*, i64** %6, align 8
  %161 = load i64, i64* %4, align 8
  %162 = mul i64 13, %161
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %8, align 4
  %169 = load i64*, i64** %6, align 8
  %170 = load i64, i64* %4, align 8
  %171 = mul i64 14, %170
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %8, align 4
  %178 = load i64*, i64** %6, align 8
  %179 = load i64, i64* %4, align 8
  %180 = mul i64 15, %179
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 16
  %189 = ashr i32 %188, 5
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @__msa_fill_b(i32 %190)
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load i64*, i64** %7, align 8
  %201 = load i64, i64* %4, align 8
  %202 = call i32 @ST_UB8(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64* %200, i64 %201)
  %203 = load i64, i64* %4, align 8
  %204 = mul i64 8, %203
  %205 = load i64*, i64** %7, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 %204
  store i64* %206, i64** %7, align 8
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %10, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load i64*, i64** %7, align 8
  %216 = load i64, i64* %4, align 8
  %217 = call i32 @ST_UB8(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64* %215, i64 %216)
  ret void
}

declare dso_local i64 @LD_UB(i64*) #1

declare dso_local i32 @__msa_hadd_u_h(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_w(i32, i32) #1

declare dso_local i64 @__msa_hadd_u_d(i64, i64) #1

declare dso_local i64 @__msa_pckev_w(i32, i32) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
