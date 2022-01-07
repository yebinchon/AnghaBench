; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_cdda_raw_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_cdda_raw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@PsndRate = common dso_local global i32 0, align 4
@cdda_out_buffer = common dso_local global i64 0, align 8
@Pico_mcd = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @cdda_raw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdda_raw_update(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @PsndRate, align 4
  %11 = icmp sle i32 %10, 22150
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* @PsndRate, align 4
  %15 = icmp slt i32 %14, 21950
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @cdda_out_buffer, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @pm_read(i64 %21, i32 %22, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = load i64, i64* @cdda_out_buffer, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @memset(i8* %35, i32 0, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %62

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %62 [
    i32 1, label %44
    i32 2, label %50
    i32 4, label %56
  ]

44:                                               ; preds = %42
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @cdda_out_buffer, align 8
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @mix_16h_to_32(i32* %45, i64 %46, i32 %48)
  br label %62

50:                                               ; preds = %42
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* @cdda_out_buffer, align 8
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 %53, 2
  %55 = call i32 @mix_16h_to_32_s1(i32* %51, i64 %52, i32 %54)
  br label %62

56:                                               ; preds = %42
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* @cdda_out_buffer, align 8
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i32 @mix_16h_to_32_s2(i32* %57, i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %30, %42, %56, %50, %44
  ret void
}

declare dso_local i32 @pm_read(i64, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mix_16h_to_32(i32*, i64, i32) #1

declare dso_local i32 @mix_16h_to_32_s1(i32*, i64, i32) #1

declare dso_local i32 @mix_16h_to_32_s2(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
