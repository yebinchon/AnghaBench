; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_ext.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 (i32)* }

@reg = common dso_local global i32* null, align 8
@dma_src = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_dma_68k_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_dma_68k_ext(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @reg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 23
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 17
  %9 = load i32, i32* @dma_src, align 4
  %10 = shl i32 %9, 1
  %11 = or i32 %8, %10
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %57, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 0), align 8
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 0), align 8
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 16
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %28(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %12
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 0), align 8
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 65535
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %31, %21
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %4, align 4
  %48 = load i32*, i32** @reg, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 23
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 17
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 131071
  %54 = or i32 %51, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @vdp_bus_w(i32 %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %2, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %12, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 1
  %64 = and i32 %63, 65535
  store i32 %64, i32* @dma_src, align 4
  ret void
}

declare dso_local i32 @vdp_bus_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
