; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@SN76489 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PSG_MCYCLES_RATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76489_Update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @SN76489_RunUntil(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %12 = sub i32 %10, %11
  %13 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %14 = add i32 %12, %13
  %15 = sub i32 %14, 1
  %16 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %17 = udiv i32 %15, %16
  %18 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %19 = mul i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %21 = add i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  br label %22

22:                                               ; preds = %7, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %25 = sub i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %37, %22
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, %30
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %26

40:                                               ; preds = %26
  ret void
}

declare dso_local i32 @SN76489_RunUntil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
