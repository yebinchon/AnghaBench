; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_idct_col.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_idct_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @idct_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %25, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %26, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 16
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %27, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 24
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 24
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  store i32 %60, i32* %28, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 32
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %29, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 40
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 40
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  store i32 %74, i32* %30, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 48
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 48
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %31, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 56
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 56
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %32, align 4
  %89 = load i32, i32* %28, align 4
  %90 = mul i32 %89, 19266
  %91 = load i32, i32* %30, align 4
  %92 = mul i32 %91, 12873
  %93 = add i32 %90, %92
  %94 = ashr i32 %93, 15
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %30, align 4
  %96 = mul i32 %95, 19266
  %97 = load i32, i32* %28, align 4
  %98 = mul i32 %97, 12873
  %99 = sub i32 %96, %98
  %100 = ashr i32 %99, 15
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %32, align 4
  %102 = mul i32 %101, 4520
  %103 = load i32, i32* %26, align 4
  %104 = mul i32 %103, 22725
  %105 = add i32 %102, %104
  %106 = ashr i32 %105, 15
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %26, align 4
  %110 = mul i32 %109, 4520
  %111 = load i32, i32* %32, align 4
  %112 = mul i32 %111, 22725
  %113 = sub i32 %110, %112
  %114 = ashr i32 %113, 15
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %5, align 4
  %118 = mul nsw i32 %117, 2
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 %121, 2
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %128, 2
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul i32 %132, 11585
  %134 = ashr i32 %133, 14
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul i32 %135, 11585
  %137 = ashr i32 %136, 14
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %27, align 4
  %139 = mul i32 %138, 8867
  %140 = load i32, i32* %31, align 4
  %141 = mul i32 %140, 21407
  %142 = sub i32 %139, %141
  %143 = ashr i32 %142, 14
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %31, align 4
  %145 = mul i32 %144, 8867
  %146 = load i32, i32* %27, align 4
  %147 = mul i32 %146, 21407
  %148 = add i32 %145, %147
  %149 = ashr i32 %148, 14
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %25, align 4
  %151 = ashr i32 %150, 1
  %152 = load i32, i32* %29, align 4
  %153 = ashr i32 %152, 1
  %154 = sub nsw i32 %151, %153
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %29, align 4
  %156 = ashr i32 %155, 1
  %157 = mul nsw i32 %156, 2
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %15, align 4
  %162 = ashr i32 %161, 1
  %163 = sub nsw i32 %160, %162
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %16, align 4
  %166 = ashr i32 %165, 1
  %167 = sub nsw i32 %164, %166
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %15, align 4
  %176 = ashr i32 %175, 1
  %177 = mul nsw i32 %176, 2
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %16, align 4
  %183 = ashr i32 %182, 1
  %184 = mul nsw i32 %183, 2
  %185 = add nsw i32 %181, %184
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 %189, 2
  %191 = add nsw i32 %188, %190
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %14, align 4
  %196 = mul nsw i32 %195, 2
  %197 = add nsw i32 %194, %196
  %198 = load i32*, i32** %3, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %13, align 4
  %202 = mul nsw i32 %201, 2
  %203 = add nsw i32 %200, %202
  %204 = load i32*, i32** %3, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 16
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %10, align 4
  %208 = mul nsw i32 %207, 2
  %209 = add nsw i32 %206, %208
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 24
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %21, align 4
  %213 = load i32*, i32** %3, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 32
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %22, align 4
  %216 = load i32*, i32** %3, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 40
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %23, align 4
  %219 = load i32*, i32** %3, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 48
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %24, align 4
  %222 = load i32*, i32** %3, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 56
  store i32 %221, i32* %223, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
