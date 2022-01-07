; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_PrevWeapon_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_PrevWeapon_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PMF_FOLLOW = common dso_local global i32 0, align 4
@WP_GAUNTLET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_PrevWeapon_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %46

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PMF_FOLLOW, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %46

15:                                               ; preds = %6
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  store i32 %17, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %38, %15
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %29 = load i32, i32* @WP_GAUNTLET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %38

32:                                               ; preds = %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %34 = call i64 @CG_WeaponSelectable(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %18

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %5, %14, %44, %41
  ret void
}

declare dso_local i64 @CG_WeaponSelectable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
