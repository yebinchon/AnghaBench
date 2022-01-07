; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_apcm_dequant_add.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_apcm_dequant_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_gsm_dequant_tab = common dso_local global i64** null, align 8
@ff_gsm_requant_tab = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32*)* @apcm_dequant_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apcm_dequant_add(i32* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @get_bits(i32* %11, i32 6)
  store i32 %12, i32* %9, align 4
  %13 = load i64**, i64*** @ff_gsm_dequant_tab, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64*, i64** %13, i64 %15
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %10, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %52, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_bits(i32* %22, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i64*, i64** %10, align 8
  %30 = load i64**, i64*** @ff_gsm_requant_tab, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %30, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %29, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 3, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %44
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %21
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %18

55:                                               ; preds = %18
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
