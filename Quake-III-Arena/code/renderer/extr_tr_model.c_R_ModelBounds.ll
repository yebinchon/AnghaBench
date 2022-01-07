; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_model.c_R_ModelBounds.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_model.c_R_ModelBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ModelBounds(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_7__* @R_GetModelByHandle(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @VectorCopy(i32 %23, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @VectorCopy(i32 %32, i32 %33)
  br label %75

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @VectorClear(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @VectorClear(i32 %45)
  br label %75

47:                                               ; preds = %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = bitcast %struct.TYPE_8__* %53 to i32*
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = bitcast i32* %59 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %9, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @VectorCopy(i32 %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @VectorCopy(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %47, %42, %16
  ret void
}

declare dso_local %struct.TYPE_7__* @R_GetModelByHandle(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
