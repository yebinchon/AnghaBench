; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_blip_buf.c_blip_read_samples.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_blip_buf.c_blip_read_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@delta_bits = common dso_local global i32 0, align 4
@bass_shift = common dso_local global i32 0, align 4
@time_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blip_read_samples(%struct.TYPE_5__* %0, i16* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32* @SAMPLES(%struct.TYPE_5__* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %43, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @delta_bits, align 4
  %23 = call i32 @ARITH_SHIFT(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @CLAMP(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = trunc i32 %31 to i16
  %33 = load i16*, i16** %5, align 8
  store i16 %32, i16* %33, align 2
  %34 = load i16*, i16** %5, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 2
  store i16* %35, i16** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @delta_bits, align 4
  %38 = load i32, i32* @bass_shift, align 4
  %39 = sub nsw i32 %37, %38
  %40 = shl i32 %36, %39
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %20
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %44, %45
  br i1 %46, label %20, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @remove_samples(%struct.TYPE_5__* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32* @SAMPLES(%struct.TYPE_5__*) #1

declare dso_local i32 @ARITH_SHIFT(i32, i32) #1

declare dso_local i32 @CLAMP(i32) #1

declare dso_local i32 @remove_samples(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
