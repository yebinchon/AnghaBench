; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_Look.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_Look.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MF_AMBUSH = common dso_local global i32 0, align 4
@MT_SPIDER = common dso_local global i64 0, align 8
@MT_CYBORG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_Look(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MF_SHOOTABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MF_AMBUSH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = call i64 @P_CheckSight(%struct.TYPE_14__* %34, %struct.TYPE_14__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %50

41:                                               ; preds = %33
  br label %43

42:                                               ; preds = %23
  br label %50

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43, %16, %1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = call i32 @P_LookForPlayers(%struct.TYPE_14__* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %105

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %42, %40
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %71 [
    i32 130, label %63
    i32 129, label %63
    i32 128, label %63
    i32 132, label %67
    i32 131, label %67
  ]

63:                                               ; preds = %57, %57, %57
  %64 = call i32 (...) @P_Random()
  %65 = srem i32 %64, 3
  %66 = add nsw i32 130, %65
  store i32 %66, i32* %4, align 4
  br label %77

67:                                               ; preds = %57, %57
  %68 = call i32 (...) @P_Random()
  %69 = srem i32 %68, 2
  %70 = add nsw i32 132, %69
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %57
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %67, %63
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MT_SPIDER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MT_CYBORG, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83, %77
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @S_StartSound(%struct.TYPE_14__* null, i32 %90)
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @S_StartSound(%struct.TYPE_14__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %50
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @P_SetMobjState(%struct.TYPE_14__* %98, i32 %103)
  br label %105

105:                                              ; preds = %97, %48
  ret void
}

declare dso_local i64 @P_CheckSight(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @P_LookForPlayers(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
