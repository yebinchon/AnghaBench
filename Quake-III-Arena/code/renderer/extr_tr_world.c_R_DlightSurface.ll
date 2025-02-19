; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightSurface.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@SF_FACE = common dso_local global i64 0, align 8
@SF_GRID = common dso_local global i64 0, align 8
@SF_TRIANGLES = common dso_local global i64 0, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @R_DlightSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_DlightSurface(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SF_FACE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = bitcast i64* %14 to i32*
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @R_DlightFace(i32* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SF_GRID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = bitcast i64* %28 to i32*
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @R_DlightGrid(i32* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %18
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SF_TRIANGLES, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = bitcast i64* %42 to i32*
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @R_DlightTrisurf(i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %11
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 0), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 0), align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @R_DlightFace(i32*, i32) #1

declare dso_local i32 @R_DlightGrid(i32*, i32) #1

declare dso_local i32 @R_DlightTrisurf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
