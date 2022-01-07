; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_terebi_oekaki.c_terebi_oekaki_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_terebi_oekaki.c_terebi_oekaki_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32**, i32* }

@tablet = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INPUT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @terebi_oekaki_read() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tablet, i32 0, i32 0), align 8
  %3 = shl i32 %2, 15
  %4 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %5 = getelementptr inbounds i32*, i32** %4, i64 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tablet, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %3, %9
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INPUT_B, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = or i32 %18, 256
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tablet, i32 0, i32 0), align 8
  %21 = load i32, i32* %1, align 4
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
