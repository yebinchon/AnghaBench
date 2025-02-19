; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_GunShot.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_GunShot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MISSILERANGE = common dso_local global i32 0, align 4
@bulletslope = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_GunShot(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @P_Random()
  %8 = srem i32 %7, 3
  %9 = add nsw i32 %8, 1
  %10 = mul nsw i32 5, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @P_Random()
  %18 = call i32 (...) @P_Random()
  %19 = sub nsw i32 %17, %18
  %20 = shl i32 %19, 18
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MISSILERANGE, align 4
  %27 = load i32, i32* @bulletslope, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @P_LineAttack(%struct.TYPE_4__* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_LineAttack(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
