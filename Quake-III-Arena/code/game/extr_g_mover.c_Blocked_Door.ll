; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Blocked_Door.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Blocked_Door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }

@ET_ITEM = common dso_local global i64 0, align 8
@IT_TEAM = common dso_local global i64 0, align 8
@EV_ITEM_POP = common dso_local global i32 0, align 4
@MOD_CRUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Blocked_Door(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ET_ITEM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IT_TEAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @Team_DroppedFlagThink(%struct.TYPE_16__* %25)
  br label %62

27:                                               ; preds = %16, %9
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EV_ITEM_POP, align 4
  %33 = call i32 @G_TempEntity(i32 %31, i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = call i32 @G_FreeEntity(%struct.TYPE_16__* %34)
  br label %62

36:                                               ; preds = %2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @MOD_CRUSH, align 4
  %49 = call i32 @G_Damage(%struct.TYPE_16__* %42, %struct.TYPE_16__* %43, %struct.TYPE_16__* %44, i32* null, i32* null, i64 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call i32 @Use_BinaryMover(%struct.TYPE_16__* %58, %struct.TYPE_16__* %59, %struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %57, %56, %27, %24
  ret void
}

declare dso_local i32 @Team_DroppedFlagThink(%struct.TYPE_16__*) #1

declare dso_local i32 @G_TempEntity(i32, i32) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_16__*) #1

declare dso_local i32 @G_Damage(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @Use_BinaryMover(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
