; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_Pico32xSwapDRAM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_Pico32xSwapDRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@m68k_read8_map = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_6__* null, align 8
@m68k_read16_map = common dso_local global i32 0, align 4
@m68k_write8_map = common dso_local global i32 0, align 4
@m68k_write8_dram1_ow = common dso_local global i32 0, align 4
@m68k_write8_dram0_ow = common dso_local global i32 0, align 4
@m68k_write16_map = common dso_local global i32 0, align 4
@m68k_write16_dram1_ow = common dso_local global i32 0, align 4
@m68k_write16_dram0_ow = common dso_local global i32 0, align 4
@sh2_read16_map = common dso_local global %struct.TYPE_5__* null, align 8
@sh2_read8_map = common dso_local global %struct.TYPE_4__* null, align 8
@sh2_write8_dram1 = common dso_local global i32 0, align 4
@sh2_write8_dram0 = common dso_local global i32 0, align 4
@sh2_write8_map = common dso_local global i32* null, align 8
@sh2_write16_dram1 = common dso_local global i32 0, align 4
@sh2_write16_dram0 = common dso_local global i32 0, align 4
@sh2_write16_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Pico32xSwapDRAM(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @m68k_read8_map, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico32xMem, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpu68k_map_set(i32 %3, i32 8650752, i32 8781823, i32 %10, i32 0)
  %12 = load i32, i32* @m68k_read16_map, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico32xMem, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu68k_map_set(i32 %12, i32 8650752, i32 8781823, i32 %19, i32 0)
  %21 = load i32, i32* @m68k_read8_map, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico32xMem, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu68k_map_set(i32 %21, i32 8781824, i32 8912895, i32 %28, i32 0)
  %30 = load i32, i32* @m68k_read16_map, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico32xMem, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu68k_map_set(i32 %30, i32 8781824, i32 8912895, i32 %37, i32 0)
  %39 = load i32, i32* @m68k_write8_map, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @m68k_write8_dram1_ow, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @m68k_write8_dram0_ow, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @cpu68k_map_set(i32 %39, i32 8650752, i32 8912895, i32 %47, i32 1)
  %49 = load i32, i32* @m68k_write16_map, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @m68k_write16_dram1_ow, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @m68k_write16_dram0_ow, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @cpu68k_map_set(i32 %49, i32 8650752, i32 8912895, i32 %57, i32 1)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico32xMem, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MAP_MEMORY(i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh2_read16_map, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 18
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh2_read16_map, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sh2_read8_map, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 18
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %66, i32* %75, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sh2_read8_map, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %66, i32* %78, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %56
  %82 = load i32, i32* @sh2_write8_dram1, align 4
  br label %85

83:                                               ; preds = %56
  %84 = load i32, i32* @sh2_write8_dram0, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load i32*, i32** @sh2_write8_map, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 18
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** @sh2_write8_map, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @sh2_write16_dram1, align 4
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @sh2_write16_dram0, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32*, i32** @sh2_write16_map, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 18
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** @sh2_write16_map, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %98, i32* %102, align 4
  ret void
}

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAP_MEMORY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
