; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_idct_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_idct_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_row(i32* %0) #0 {
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
  store i32* %0, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 19266
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 12873
  %31 = add nsw i32 %26, %30
  %32 = ashr i32 %31, 14
  store i32 %32, i32* %3, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 19266
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 12873
  %41 = sub nsw i32 %36, %40
  %42 = ashr i32 %41, 14
  store i32 %42, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 4520
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 22725
  %51 = add nsw i32 %46, %50
  %52 = ashr i32 %51, 14
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4520
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 22725
  %63 = sub nsw i32 %58, %62
  %64 = ashr i32 %63, 14
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %3, align 4
  %68 = mul nsw i32 %67, 2
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 2
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 11585
  %84 = ashr i32 %83, 14
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 11585
  %87 = ashr i32 %86, 14
  store i32 %87, i32* %12, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 8867
  %92 = load i32*, i32** %2, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 21407
  %96 = sub nsw i32 %91, %95
  %97 = ashr i32 %96, 14
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 8867
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 21407
  %106 = add nsw i32 %101, %105
  %107 = ashr i32 %106, 14
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 2
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %133, %135
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %14, align 4
  %141 = mul nsw i32 %140, 2
  %142 = add nsw i32 %139, %141
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %7, align 4
  %147 = mul nsw i32 %146, 2
  %148 = add nsw i32 %145, %147
  %149 = add nsw i32 %148, 4
  %150 = ashr i32 %149, 3
  %151 = load i32*, i32** %2, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %154, 2
  %156 = add nsw i32 %153, %155
  %157 = add nsw i32 %156, 4
  %158 = ashr i32 %157, 3
  %159 = load i32*, i32** %2, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 %162, 2
  %164 = add nsw i32 %161, %163
  %165 = add nsw i32 %164, 4
  %166 = ashr i32 %165, 3
  %167 = load i32*, i32** %2, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 %170, 2
  %172 = add nsw i32 %169, %171
  %173 = add nsw i32 %172, 4
  %174 = ashr i32 %173, 3
  %175 = load i32*, i32** %2, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 4
  %179 = ashr i32 %178, 3
  %180 = load i32*, i32** %2, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 4
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 4
  %184 = ashr i32 %183, 3
  %185 = load i32*, i32** %2, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 5
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %187, 4
  %189 = ashr i32 %188, 3
  %190 = load i32*, i32** %2, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %22, align 4
  %193 = add nsw i32 %192, 4
  %194 = ashr i32 %193, 3
  %195 = load i32*, i32** %2, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 7
  store i32 %194, i32* %196, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
