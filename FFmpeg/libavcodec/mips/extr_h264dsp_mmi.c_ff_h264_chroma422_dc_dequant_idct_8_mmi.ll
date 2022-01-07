; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_chroma422_dc_dequant_idct_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_chroma422_dc_dequant_idct_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_chroma422_dc_dequant_idct_8_mmi(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 16
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 32
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 48
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 32
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 48
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 64
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 80
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %45, i32* %46, align 16
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 64
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 80
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 96
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 112
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %61, i32* %62, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 96
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 112
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = add nsw i32 %72, %74
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %75, %77
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %78, %80
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %86 = load i32, i32* %85, align 16
  %87 = sub nsw i32 %84, %86
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %87, %89
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %90, %92
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = sub nsw i32 %96, %98
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %99, %101
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %102, %104
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %110 = load i32, i32* %109, align 16
  %111 = add nsw i32 %108, %110
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %111, %113
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %114, %116
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %120, %122
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %123, %125
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %126, %128
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %129, i32* %130, align 16
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %132, %134
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %135, %137
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %138, %140
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %144, %146
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %147, %149
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %150, %152
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %156, %158
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %159, %161
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %162, %164
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = load i32, i32* %4, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %170, 128
  %172 = ashr i32 %171, 8
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %4, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %178, 128
  %180 = ashr i32 %179, 8
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 32
  store i32 %180, i32* %182, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %186, 128
  %188 = ashr i32 %187, 8
  %189 = load i32*, i32** %3, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 64
  store i32 %188, i32* %190, align 4
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %4, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %194, 128
  %196 = ashr i32 %195, 8
  %197 = load i32*, i32** %3, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 96
  store i32 %196, i32* %198, align 4
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %200 = load i32, i32* %199, align 16
  %201 = load i32, i32* %4, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %202, 128
  %204 = ashr i32 %203, 8
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 16
  store i32 %204, i32* %206, align 4
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %4, align 4
  %210 = mul nsw i32 %208, %209
  %211 = add nsw i32 %210, 128
  %212 = ashr i32 %211, 8
  %213 = load i32*, i32** %3, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 48
  store i32 %212, i32* %214, align 4
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %218, 128
  %220 = ashr i32 %219, 8
  %221 = load i32*, i32** %3, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 80
  store i32 %220, i32* %222, align 4
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %4, align 4
  %226 = mul nsw i32 %224, %225
  %227 = add nsw i32 %226, 128
  %228 = ashr i32 %227, 8
  %229 = load i32*, i32** %3, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 112
  store i32 %228, i32* %230, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
