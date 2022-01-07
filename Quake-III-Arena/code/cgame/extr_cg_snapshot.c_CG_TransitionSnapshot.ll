; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_snapshot.c_CG_TransitionSnapshot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_snapshot.c_CG_TransitionSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__*, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i8*, i32, i8* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@cg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"CG_TransitionSnapshot: NULL cg.snap\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CG_TransitionSnapshot: NULL cg.nextSnap\00", align 1
@cg_entities = common dso_local global %struct.TYPE_16__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@EF_TELEPORT_BIT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PMF_FOLLOW = common dso_local global i32 0, align 4
@cg_nopredict = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cg_synchronousClients = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_TransitionSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_TransitionSnapshot() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %7 = icmp ne %struct.TYPE_14__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @CG_Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 3), align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @CG_Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 3), align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CG_ExecuteNewServerCommands(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %15
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cg_entities, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 %39
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %1, align 8
  %41 = load i8*, i8** @qfalse, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %2, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 3), align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cg_entities, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i8*, i8** @qfalse, align 8
  %60 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_15__* %51, i32* %58, i8* %59)
  %61 = load i8*, i8** @qfalse, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cg_entities, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i8* %61, i8** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %93, %47
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cg_entities, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %84
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %1, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %87 = call i32 @CG_TransitionEntity(%struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %69

96:                                               ; preds = %69
  store %struct.TYPE_14__* null, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 3), align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %99, label %138

99:                                               ; preds = %96
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %4, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %5, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %106, %109
  %111 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i32, i32* @qtrue, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 2), align 8
  br label %116

116:                                              ; preds = %114, %99
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PMF_FOLLOW, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %119
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_nopredict, i32 0, i32 0), align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_synchronousClients, i32 0, i32 0), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130, %127, %119, %116
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = call i32 @CG_TransitionPlayerState(%struct.TYPE_15__* %134, %struct.TYPE_15__* %135)
  br label %137

137:                                              ; preds = %133, %130
  br label %138

138:                                              ; preds = %137, %96
  ret void
}

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i32 @CG_ExecuteNewServerCommands(i32) #1

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_15__*, i32*, i8*) #1

declare dso_local i32 @CG_TransitionEntity(%struct.TYPE_16__*) #1

declare dso_local i32 @CG_TransitionPlayerState(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
