; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_AddLagometerSnapshotInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_AddLagometerSnapshotInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@lagometer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@LAG_SAMPLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddLagometerSnapshotInfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  %8 = load i32, i32* @LAG_SAMPLES, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %6, i64 %11
  store i32 -1, i32* %12, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  %21 = load i32, i32* @LAG_SAMPLES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 2), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  %31 = load i32, i32* @LAG_SAMPLES, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lagometer, i32 0, i32 1), align 8
  br label %38

38:                                               ; preds = %15, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
