; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_routealt.c_AAS_AlternativeRouteGoals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_routealt.c_AAS_AlternativeRouteGoals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@ALTROUTEGOAL_ALL = common dso_local global i32 0, align 4
@ALTROUTEGOAL_CLUSTERPORTALS = common dso_local global i32 0, align 4
@ALTROUTEGOAL_VIEWPORTALS = common dso_local global i32 0, align 4
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AREACONTENTS_VIEWPORTAL = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@clusterareas = common dso_local global i64* null, align 8
@midrangeareas = common dso_local global %struct.TYPE_12__* null, align 8
@numclusterareas = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AlternativeRouteGoals(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.TYPE_11__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
