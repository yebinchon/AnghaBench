; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_glfile.c_WriteGLView_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_glfile.c_WriteGLView_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__**, %struct.TYPE_6__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteGLView_r(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLANENUM_LEAF, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32*, i32** %4, align 8
  call void @WriteGLView_r(%struct.TYPE_6__* %17, i32* %18)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32*, i32** %4, align 8
  call void @WriteGLView_r(%struct.TYPE_6__* %23, i32* %24)
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %5, align 8
  br label %29

29:                                               ; preds = %56, %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = icmp eq %struct.TYPE_6__* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @OutputPortal(%struct.TYPE_5__* %41, i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %6, align 8
  br label %55

49:                                               ; preds = %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %6, align 8
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %5, align 8
  br label %29

58:                                               ; preds = %12, %29
  ret void
}

declare dso_local i32 @OutputPortal(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
