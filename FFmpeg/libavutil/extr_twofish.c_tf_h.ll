; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_h.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD2 = common dso_local global i64* null, align 8
@MD1 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @tf_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tf_h(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i64], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @AV_WL32(i64* %9, i32 %10)
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tf_h0(i64* %12, i32* %13, i32 %14)
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %17 = load i64, i64* %16, align 16
  %18 = load i64*, i64** @MD2, align 8
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %17, %22
  %24 = load i64*, i64** @MD1, align 8
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %26 = load i64, i64* %25, align 16
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %23, %28
  %30 = load i64*, i64** @MD1, align 8
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = xor i64 %29, %34
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load i64*, i64** @MD1, align 8
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %39 = load i64, i64* %38, align 16
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** @MD2, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = xor i64 %41, %46
  %48 = load i64*, i64** @MD2, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %50 = load i64, i64* %49, align 16
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %47, %52
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %53, %55
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** @MD2, align 8
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %60 = load i64, i64* %59, align 16
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** @MD1, align 8
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = xor i64 %62, %67
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = xor i64 %68, %70
  %72 = load i64*, i64** @MD2, align 8
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = xor i64 %71, %76
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  store i64 %77, i64* %78, align 16
  %79 = load i64*, i64** @MD2, align 8
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %81 = load i64, i64* %80, align 16
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = xor i64 %83, %85
  %87 = load i64*, i64** @MD2, align 8
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %89 = load i64, i64* %88, align 16
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = xor i64 %86, %91
  %93 = load i64*, i64** @MD1, align 8
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = xor i64 %92, %97
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 3
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %101 = call i32 @AV_RL32(i64* %100)
  ret i32 %101
}

declare dso_local i32 @AV_WL32(i64*, i32) #1

declare dso_local i32 @tf_h0(i64*, i32*, i32) #1

declare dso_local i32 @AV_RL32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
