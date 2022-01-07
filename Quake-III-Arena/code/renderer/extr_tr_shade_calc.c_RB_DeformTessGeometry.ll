; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_DeformTessGeometry.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_DeformTessGeometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@tess = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_DeformTessGeometry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %49, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i64 %14
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %48 [
    i32 139, label %19
    i32 138, label %20
    i32 128, label %23
    i32 141, label %26
    i32 140, label %29
    i32 137, label %32
    i32 143, label %34
    i32 142, label %36
    i32 136, label %38
    i32 135, label %38
    i32 134, label %38
    i32 133, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
  ]

19:                                               ; preds = %9
  br label %48

20:                                               ; preds = %9
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = call i32 @RB_CalcDeformNormals(%struct.TYPE_12__* %21)
  br label %48

23:                                               ; preds = %9
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = call i32 @RB_CalcDeformVertexes(%struct.TYPE_12__* %24)
  br label %48

26:                                               ; preds = %9
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @RB_CalcBulgeVertexes(%struct.TYPE_12__* %27)
  br label %48

29:                                               ; preds = %9
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = call i32 @RB_CalcMoveVertexes(%struct.TYPE_12__* %30)
  br label %48

32:                                               ; preds = %9
  %33 = call i32 (...) @RB_ProjectionShadowDeform()
  br label %48

34:                                               ; preds = %9
  %35 = call i32 (...) @AutospriteDeform()
  br label %48

36:                                               ; preds = %9
  %37 = call i32 (...) @Autosprite2Deform()
  br label %48

38:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 136
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DeformText(i32 %46)
  br label %48

48:                                               ; preds = %9, %38, %36, %34, %32, %29, %26, %23, %20, %19
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %3

52:                                               ; preds = %3
  ret void
}

declare dso_local i32 @RB_CalcDeformNormals(%struct.TYPE_12__*) #1

declare dso_local i32 @RB_CalcDeformVertexes(%struct.TYPE_12__*) #1

declare dso_local i32 @RB_CalcBulgeVertexes(%struct.TYPE_12__*) #1

declare dso_local i32 @RB_CalcMoveVertexes(%struct.TYPE_12__*) #1

declare dso_local i32 @RB_ProjectionShadowDeform(...) #1

declare dso_local i32 @AutospriteDeform(...) #1

declare dso_local i32 @Autosprite2Deform(...) #1

declare dso_local i32 @DeformText(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
