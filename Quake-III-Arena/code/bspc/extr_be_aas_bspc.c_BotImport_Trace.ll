; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_BotImport_Trace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_BotImport_Trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i64, %struct.TYPE_8__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@worldmodel = common dso_local global i32 0, align 4
@capsule_collision = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotImport_Trace(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @worldmodel, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @capsule_collision, align 4
  %23 = call i32 @CM_BoxTrace(%struct.TYPE_11__* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @VectorCopy(i32 %33, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @VectorCopy(i32 %56, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

declare dso_local i32 @CM_BoxTrace(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
