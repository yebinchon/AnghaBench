; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_BulletSlope.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_BulletSlope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FRACUNIT = common dso_local global i32 0, align 4
@bulletslope = common dso_local global i32 0, align 4
@linetarget = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_BulletSlope(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @FRACUNIT, align 4
  %10 = mul nsw i32 1024, %9
  %11 = call i32 @P_AimLineAttack(%struct.TYPE_4__* %7, i32 %8, i32 %10)
  store i32 %11, i32* @bulletslope, align 4
  %12 = load i32, i32* @linetarget, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 67108864
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @FRACUNIT, align 4
  %20 = mul nsw i32 1024, %19
  %21 = call i32 @P_AimLineAttack(%struct.TYPE_4__* %17, i32 %18, i32 %20)
  store i32 %21, i32* @bulletslope, align 4
  %22 = load i32, i32* @linetarget, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, 134217728
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FRACUNIT, align 4
  %30 = mul nsw i32 1024, %29
  %31 = call i32 @P_AimLineAttack(%struct.TYPE_4__* %27, i32 %28, i32 %30)
  store i32 %31, i32* @bulletslope, align 4
  br label %32

32:                                               ; preds = %24, %14
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @P_AimLineAttack(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
