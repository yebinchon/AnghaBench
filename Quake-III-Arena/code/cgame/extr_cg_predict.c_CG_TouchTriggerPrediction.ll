; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_predict.c_CG_TouchTriggerPrediction.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_predict.c_CG_TouchTriggerPrediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64*, i64, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PM_SPECTATOR = common dso_local global i64 0, align 8
@PM_NORMAL = common dso_local global i64 0, align 8
@cg_numTriggerEntities = common dso_local global i32 0, align 4
@cg_triggerEntities = common dso_local global %struct.TYPE_13__** null, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@SOLID_BMODEL = common dso_local global i64 0, align 8
@cg_pmove = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ET_TELEPORT_TRIGGER = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@ET_PUSH_TRIGGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_TouchTriggerPrediction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_TouchTriggerPrediction() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* @STAT_HEALTH, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %102

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 1), align 8
  %15 = load i64, i64* @PM_SPECTATOR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 1), align 8
  %19 = load i64, i64* @PM_NORMAL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %102

25:                                               ; preds = %21, %13
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %94, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @cg_numTriggerEntities, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %26
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @cg_triggerEntities, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %31, i64 %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %3, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ET_ITEM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = call i32 @CG_TouchItem(%struct.TYPE_13__* %47)
  br label %94

49:                                               ; preds = %43, %30
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOLID_BMODEL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %94

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @trap_CM_InlineModel(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %94

64:                                               ; preds = %56
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 5), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 5), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_pmove, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_pmove, i32 0, i32 0), align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @trap_CM_BoxTrace(%struct.TYPE_11__* %2, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 -1)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %94

75:                                               ; preds = %64
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ET_TELEPORT_TRIGGER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @qtrue, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  br label %93

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ET_PUSH_TRIGGER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = call i32 @BG_TouchJumpPad(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), %struct.TYPE_12__* %90)
  br label %92

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %74, %63, %55, %46
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %26

97:                                               ; preds = %26
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 2), align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 3), align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 4), align 8
  br label %102

102:                                              ; preds = %12, %24, %101, %97
  ret void
}

declare dso_local i32 @CG_TouchItem(%struct.TYPE_13__*) #1

declare dso_local i32 @trap_CM_InlineModel(i32) #1

declare dso_local i32 @trap_CM_BoxTrace(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BG_TouchJumpPad(%struct.TYPE_16__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
