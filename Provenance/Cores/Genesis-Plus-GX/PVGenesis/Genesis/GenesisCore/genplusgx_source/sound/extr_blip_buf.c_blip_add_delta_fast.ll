; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_blip_buf.c_blip_add_delta_fast.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_blip_buf.c_blip_add_delta_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@pre_shift = common dso_local global i32 0, align 4
@frac_bits = common dso_local global i32 0, align 4
@delta_bits = common dso_local global i32 0, align 4
@delta_unit = common dso_local global i32 0, align 4
@end_frame_extra = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blip_add_delta_fast(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul i32 %11, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  %20 = load i32, i32* @pre_shift, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = call i32* @SAMPLES(%struct.TYPE_4__* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @frac_bits, align 4
  %26 = lshr i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @frac_bits, align 4
  %31 = load i32, i32* @delta_bits, align 4
  %32 = sub i32 %30, %31
  %33 = lshr i32 %29, %32
  %34 = load i32, i32* @delta_unit, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @delta_unit, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local i32* @SAMPLES(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
