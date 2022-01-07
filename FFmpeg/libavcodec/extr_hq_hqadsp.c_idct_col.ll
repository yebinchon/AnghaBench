; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqadsp.c_idct_col.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqadsp.c_idct_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_1_847 = common dso_local global i32 0, align 4
@FIX_1_082 = common dso_local global i32 0, align 4
@FIX_2_613 = common dso_local global i32 0, align 4
@FIX_1_414 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col(i32* %0) #0 {
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
  %23 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 40
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 24
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 40
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 24
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 56
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 2
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 56
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 2
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @FIX_1_847, align 4
  %63 = call i32 @IDCTMUL(i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @FIX_1_082, align 4
  %66 = call i32 @IDCTMUL(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @FIX_2_613, align 4
  %72 = call i32 @IDCTMUL(i32 %70, i32 %71)
  %73 = mul nsw i32 %72, 2
  %74 = sub nsw i32 %69, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %75, %76
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %79, 2
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @FIX_1_414, align 4
  %85 = call i32 @IDCTMUL(i32 %83, i32 %84)
  %86 = mul nsw i32 %85, 2
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %2, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 48
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 1
  %100 = add nsw i32 %95, %99
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 16
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 48
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 %104, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %2, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 1
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 32
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 1
  %118 = sub nsw i32 %113, %117
  %119 = add nsw i32 %118, 8224
  store i32 %119, i32* %17, align 4
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 1
  %124 = load i32*, i32** %2, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 32
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 1
  %128 = add nsw i32 %123, %127
  %129 = add nsw i32 %128, 8224
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @FIX_1_414, align 4
  %132 = call i32 @IDCTMUL(i32 %130, i32 %131)
  %133 = mul nsw i32 %132, 2
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %19, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %148, %149
  %151 = ashr i32 %150, 6
  %152 = load i32*, i32** %2, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %154, %155
  %157 = ashr i32 %156, 6
  %158 = load i32*, i32** %2, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %160, %161
  %163 = ashr i32 %162, 6
  %164 = load i32*, i32** %2, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 16
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %14, align 4
  %168 = sub nsw i32 %166, %167
  %169 = ashr i32 %168, 6
  %170 = load i32*, i32** %2, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 24
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %172, %173
  %175 = ashr i32 %174, 6
  %176 = load i32*, i32** %2, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 32
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %178, %179
  %181 = ashr i32 %180, 6
  %182 = load i32*, i32** %2, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 40
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %184, %185
  %187 = ashr i32 %186, 6
  %188 = load i32*, i32** %2, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 48
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %190, %191
  %193 = ashr i32 %192, 6
  %194 = load i32*, i32** %2, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 56
  store i32 %193, i32* %195, align 4
  ret void
}

declare dso_local i32 @IDCTMUL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
