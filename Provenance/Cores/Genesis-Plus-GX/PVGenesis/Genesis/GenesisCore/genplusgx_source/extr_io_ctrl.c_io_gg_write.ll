; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_gg_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_gg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@io_reg = common dso_local global i32* null, align 8
@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_gg_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 2, label %10
    i32 3, label %14
    i32 5, label %18
    i32 6, label %23
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @io_reg, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 %7, i32* %9, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** @io_reg, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %11, i32* %13, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** @io_reg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 %15, i32* %17, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 248
  %21 = load i32*, i32** @io_reg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  store i32 %20, i32* %22, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** @io_reg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SN76489_Config(i32 %27, i32 %28, i32 %29, i32 %30)
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %23, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @SN76489_Config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
