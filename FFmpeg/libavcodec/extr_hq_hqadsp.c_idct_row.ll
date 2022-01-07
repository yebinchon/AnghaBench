; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqadsp.c_idct_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqadsp.c_idct_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_1_847 = common dso_local global i32 0, align 4
@FIX_1_082 = common dso_local global i32 0, align 4
@FIX_2_613 = common dso_local global i32 0, align 4
@FIX_1_414 = common dso_local global i32 0, align 4
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
  %23 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @FIX_1_847, align 4
  %59 = call i32 @IDCTMUL(i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @FIX_1_082, align 4
  %62 = call i32 @IDCTMUL(i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @FIX_2_613, align 4
  %68 = call i32 @IDCTMUL(i32 %66, i32 %67)
  %69 = mul nsw i32 %68, 2
  %70 = sub nsw i32 %65, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @FIX_1_414, align 4
  %80 = call i32 @IDCTMUL(i32 %78, i32 %79)
  %81 = mul nsw i32 %80, 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %84, 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %17, align 4
  %109 = load i32*, i32** %2, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @FIX_1_414, align 4
  %118 = call i32 @IDCTMUL(i32 %116, i32 %117)
  %119 = mul nsw i32 %118, 4
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %19, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %23, align 4
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32*, i32** %2, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32*, i32** %2, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32*, i32** %2, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32*, i32** %2, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32*, i32** %2, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32*, i32** %2, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32*, i32** %2, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load i32*, i32** %2, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 7
  store i32 %171, i32* %173, align 4
  ret void
}

declare dso_local i32 @IDCTMUL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
