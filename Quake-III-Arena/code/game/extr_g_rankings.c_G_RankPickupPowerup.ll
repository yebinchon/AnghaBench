; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankPickupPowerup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankPickupPowerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PW_REDFLAG = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@QGR_KEY_FLAG_PICKUP = common dso_local global i32 0, align 4
@QGR_KEY_POWERUP = common dso_local global i32 0, align 4
@QGR_KEY_QUAD = common dso_local global i32 0, align 4
@QGR_KEY_SUIT = common dso_local global i32 0, align 4
@QGR_KEY_HASTE = common dso_local global i32 0, align 4
@QGR_KEY_INVIS = common dso_local global i32 0, align 4
@QGR_KEY_REGEN = common dso_local global i32 0, align 4
@QGR_KEY_FLIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankPickupPowerup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %50

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PW_REDFLAG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PW_BLUEFLAG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @QGR_KEY_FLAG_PICKUP, align 4
  %19 = call i32 @trap_RankReportInt(i32 %17, i32 -1, i32 %18, i32 1, i32 1)
  br label %50

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @QGR_KEY_POWERUP, align 4
  %23 = call i32 @trap_RankReportInt(i32 %21, i32 -1, i32 %22, i32 1, i32 1)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %49 [
    i32 129, label %25
    i32 133, label %29
    i32 131, label %33
    i32 130, label %37
    i32 128, label %41
    i32 132, label %45
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @QGR_KEY_QUAD, align 4
  %28 = call i32 @trap_RankReportInt(i32 %26, i32 -1, i32 %27, i32 1, i32 1)
  br label %50

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @QGR_KEY_SUIT, align 4
  %32 = call i32 @trap_RankReportInt(i32 %30, i32 -1, i32 %31, i32 1, i32 1)
  br label %50

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QGR_KEY_HASTE, align 4
  %36 = call i32 @trap_RankReportInt(i32 %34, i32 -1, i32 %35, i32 1, i32 1)
  br label %50

37:                                               ; preds = %20
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @QGR_KEY_INVIS, align 4
  %40 = call i32 @trap_RankReportInt(i32 %38, i32 -1, i32 %39, i32 1, i32 1)
  br label %50

41:                                               ; preds = %20
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @QGR_KEY_REGEN, align 4
  %44 = call i32 @trap_RankReportInt(i32 %42, i32 -1, i32 %43, i32 1, i32 1)
  br label %50

45:                                               ; preds = %20
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @QGR_KEY_FLIGHT, align 4
  %48 = call i32 @trap_RankReportInt(i32 %46, i32 -1, i32 %47, i32 1, i32 1)
  br label %50

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %7, %16, %49, %45, %41, %37, %33, %29, %25
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
