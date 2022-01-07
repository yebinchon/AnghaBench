; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_z80_write_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_z80_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@zram = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_write_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 3
  switch i32 %7, label %30 [
    i32 2, label %8
    i32 3, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 3
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fm_write(i32 %9, i32 %11, i32 %12)
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 127
  switch i32 %17, label %26 [
    i32 96, label %18
    i32 127, label %22
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1
  %21 = call i32 @gen_zbank_w(i32 %20)
  br label %39

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @m68k_lockup_w_8(i32 %23, i32 %24)
  br label %39

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @m68k_unused_8_w(i32 %27, i32 %28)
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** @zram, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 8191
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %38 = add nsw i32 %37, 8
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %30, %26, %22, %18, %8
  ret void
}

declare dso_local i32 @fm_write(i32, i32, i32) #1

declare dso_local i32 @gen_zbank_w(i32) #1

declare dso_local i32 @m68k_lockup_w_8(i32, i32) #1

declare dso_local i32 @m68k_unused_8_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
