; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@backEnd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceEntity(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 128, label %7
    i32 132, label %9
    i32 130, label %11
    i32 129, label %13
    i32 131, label %15
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @RB_SurfaceSprite()
  br label %19

9:                                                ; preds = %1
  %10 = call i32 (...) @RB_SurfaceBeam()
  br label %19

11:                                               ; preds = %1
  %12 = call i32 (...) @RB_SurfaceRailCore()
  br label %19

13:                                               ; preds = %1
  %14 = call i32 (...) @RB_SurfaceRailRings()
  br label %19

15:                                               ; preds = %1
  %16 = call i32 (...) @RB_SurfaceLightningBolt()
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @RB_SurfaceAxis()
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9, %7
  ret void
}

declare dso_local i32 @RB_SurfaceSprite(...) #1

declare dso_local i32 @RB_SurfaceBeam(...) #1

declare dso_local i32 @RB_SurfaceRailCore(...) #1

declare dso_local i32 @RB_SurfaceRailRings(...) #1

declare dso_local i32 @RB_SurfaceLightningBolt(...) #1

declare dso_local i32 @RB_SurfaceAxis(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
