; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_dot_ram_0_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_dot_ram_0_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32*** }

@scd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@gfx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dot_ram_0_write16(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 131071
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @READ_BYTE(i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 15
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 240
  %19 = or i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gfx, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %20, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0), align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @WRITE_BYTE(i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i64 @READ_BYTE(i32, i32) #1

declare dso_local i32 @WRITE_BYTE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
