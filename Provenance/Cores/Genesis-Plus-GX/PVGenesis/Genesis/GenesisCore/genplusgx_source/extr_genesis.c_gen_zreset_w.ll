; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_zreset_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_zreset_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@zstate = common dso_local global i32 0, align 4
@Z80 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@z80_read_byte = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@z80_read_word = common dso_local global i32 0, align 4
@z80_write_byte = common dso_local global i32 0, align 4
@z80_write_word = common dso_local global i32 0, align 4
@m68k_read_bus_8 = common dso_local global i32 0, align 4
@m68k_read_bus_16 = common dso_local global i32 0, align 4
@m68k_unused_8_w = common dso_local global i32 0, align 4
@m68k_unused_16_w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_zreset_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = load i32, i32* @zstate, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Z80, i32 0, i32 0), align 4
  %12 = call i32 (...) @z80_reset()
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fm_reset(i32 %13)
  br label %39

15:                                               ; preds = %7
  %16 = load i32, i32* @zstate, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32, i32* @z80_read_byte, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 160
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @z80_read_word, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 160
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @z80_write_byte, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 160
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @z80_write_word, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 160
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = call i32 (...) @z80_reset()
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @fm_reset(i32 %36)
  br label %38

38:                                               ; preds = %18, %15
  br label %39

39:                                               ; preds = %38, %10
  %40 = load i32, i32* @zstate, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* @zstate, align 4
  br label %74

42:                                               ; preds = %2
  %43 = load i32, i32* @zstate, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @z80_run(i32 %46)
  br label %69

48:                                               ; preds = %42
  %49 = load i32, i32* @zstate, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, i32* @m68k_read_bus_8, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 160
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @m68k_read_bus_16, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 160
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @m68k_unused_8_w, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 160
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @m68k_unused_16_w, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 160
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %51, %48
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @fm_reset(i32 %70)
  %72 = load i32, i32* @zstate, align 4
  %73 = and i32 %72, 2
  store i32 %73, i32* @zstate, align 4
  br label %74

74:                                               ; preds = %69, %39
  ret void
}

declare dso_local i32 @z80_reset(...) #1

declare dso_local i32 @fm_reset(i32) #1

declare dso_local i32 @z80_run(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
