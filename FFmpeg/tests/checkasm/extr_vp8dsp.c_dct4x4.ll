; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_dct4x4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_dct4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dct4x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dct4x4(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %124, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %127

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 4
  %19 = add nsw i32 %18, 0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %22, %29
  %31 = mul nsw i32 %30, 8
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %38, %45
  %47 = mul nsw i32 %46, 8
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = mul nsw i32 %56, 4
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %54, %61
  %63 = mul nsw i32 %62, 8
  store i32 %63, i32* %6, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %66, 0
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = mul nsw i32 %72, 4
  %74 = add nsw i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %70, %77
  %79 = mul nsw i32 %78, 8
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = mul nsw i32 %84, 4
  %86 = add nsw i32 %85, 0
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, 2217
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %91, 5352
  %93 = add nsw i32 %90, %92
  %94 = add nsw i32 %93, 14500
  %95 = ashr i32 %94, 12
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 %111, 2217
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 %113, 5352
  %115 = sub nsw i32 %112, %114
  %116 = add nsw i32 %115, 7500
  %117 = ashr i32 %116, 12
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = mul nsw i32 %119, 4
  %121 = add nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %15
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %12

127:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %234, %127
  %129 = load i32, i32* %3, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %237

131:                                              ; preds = %128
  %132 = load i32*, i32** %2, align 8
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 0
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 12
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %137, %143
  store i32 %144, i32* %8, align 4
  %145 = load i32*, i32** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %150, %156
  store i32 %157, i32* %9, align 4
  %158 = load i32*, i32** %2, align 8
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %163, %169
  store i32 %170, i32* %10, align 4
  %171 = load i32*, i32** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 0
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 12
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %176, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %184, %185
  %187 = add nsw i32 %186, 7
  %188 = ashr i32 %187, 4
  %189 = load i32*, i32** %2, align 8
  %190 = load i32, i32* %3, align 4
  %191 = add nsw i32 %190, 0
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* %10, align 4
  %195 = mul nsw i32 %194, 2217
  %196 = load i32, i32* %11, align 4
  %197 = mul nsw i32 %196, 5352
  %198 = add nsw i32 %195, %197
  %199 = add nsw i32 %198, 12000
  %200 = ashr i32 %199, 16
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = add nsw i32 %200, %205
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %9, align 4
  %214 = sub nsw i32 %212, %213
  %215 = add nsw i32 %214, 7
  %216 = ashr i32 %215, 4
  %217 = load i32*, i32** %2, align 8
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* %11, align 4
  %223 = mul nsw i32 %222, 2217
  %224 = load i32, i32* %10, align 4
  %225 = mul nsw i32 %224, 5352
  %226 = sub nsw i32 %223, %225
  %227 = add nsw i32 %226, 51000
  %228 = ashr i32 %227, 16
  %229 = load i32*, i32** %2, align 8
  %230 = load i32, i32* %3, align 4
  %231 = add nsw i32 %230, 12
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  br label %234

234:                                              ; preds = %131
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %128

237:                                              ; preds = %128
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
