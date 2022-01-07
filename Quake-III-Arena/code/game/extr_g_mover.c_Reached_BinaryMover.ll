; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Reached_BinaryMover.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Reached_BinaryMover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, i64, i64, i32, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MOVER_1TO2 = common dso_local global i64 0, align 8
@MOVER_POS2 = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@EV_GENERAL_SOUND = common dso_local global i32 0, align 4
@ReturnToPos1 = common dso_local global i32 0, align 4
@MOVER_2TO1 = common dso_local global i64 0, align 8
@MOVER_POS1 = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Reached_BinaryMover: bad moverState\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Reached_BinaryMover(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MOVER_1TO2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load i32, i32* @MOVER_POS2, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %18 = call i32 @SetMoverState(%struct.TYPE_11__* %15, i32 %16, i64 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @G_AddEvent(%struct.TYPE_11__* %24, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load i32, i32* @ReturnToPos1, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %48, align 8
  br label %49

49:                                               ; preds = %45, %30
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 @G_UseTargets(%struct.TYPE_11__* %50, %struct.TYPE_11__* %53)
  br label %96

55:                                               ; preds = %1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MOVER_2TO1, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = load i32, i32* @MOVER_POS1, align 4
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %65 = call i32 @SetMoverState(%struct.TYPE_11__* %62, i32 %63, i64 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @G_AddEvent(%struct.TYPE_11__* %71, i32 %72, i64 %75)
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = icmp eq %struct.TYPE_11__* %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = load i32, i32* @qfalse, align 4
  %91 = call i32 @trap_AdjustAreaPortalState(%struct.TYPE_11__* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %95

93:                                               ; preds = %55
  %94 = call i32 @G_Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %49
  ret void
}

declare dso_local i32 @SetMoverState(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @G_UseTargets(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @trap_AdjustAreaPortalState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @G_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
