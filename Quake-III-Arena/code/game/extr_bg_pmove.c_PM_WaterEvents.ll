; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_WaterEvents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_WaterEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@pml = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@pm = common dso_local global %struct.TYPE_4__* null, align 8
@EV_WATER_TOUCH = common dso_local global i32 0, align 4
@EV_WATER_LEAVE = common dso_local global i32 0, align 4
@EV_WATER_UNDER = common dso_local global i32 0, align 4
@EV_WATER_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_WaterEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_WaterEvents() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pml, i32 0, i32 0), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i32, i32* @EV_WATER_TOUCH, align 4
  %10 = call i32 @PM_AddEvent(i32 %9)
  br label %11

11:                                               ; preds = %8, %3, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pml, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EV_WATER_LEAVE, align 4
  %21 = call i32 @PM_AddEvent(i32 %20)
  br label %22

22:                                               ; preds = %19, %14, %11
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pml, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EV_WATER_UNDER, align 4
  %32 = call i32 @PM_AddEvent(i32 %31)
  br label %33

33:                                               ; preds = %30, %25, %22
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pml, i32 0, i32 0), align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EV_WATER_CLEAR, align 4
  %43 = call i32 @PM_AddEvent(i32 %42)
  br label %44

44:                                               ; preds = %41, %36, %33
  ret void
}

declare dso_local i32 @PM_AddEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
