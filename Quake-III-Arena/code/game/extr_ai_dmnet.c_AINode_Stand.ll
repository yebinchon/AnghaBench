; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Stand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Stand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i64, i64, i32, i32, i32 }

@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"stand: found enemy\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"stand: time out\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Stand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @INVENTORY_HEALTH, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %6, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i64 @BotChat_HitTalking(%struct.TYPE_8__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = call i64 (...) @FloatTime()
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i64 @BotChatTime(%struct.TYPE_8__* %20)
  %22 = add nsw i64 %19, %21
  %23 = sitofp i64 %22 to double
  %24 = fadd double %23, 1.000000e-01
  %25 = fptosi double %24 to i64
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = call i64 (...) @FloatTime()
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i64 @BotChatTime(%struct.TYPE_8__* %29)
  %31 = add nsw i64 %28, %30
  %32 = sitofp i64 %31 to double
  %33 = fadd double %32, 1.000000e-01
  %34 = fptosi double %33 to i64
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %14
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i64 (...) @FloatTime()
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i64 @BotFindEnemy(%struct.TYPE_8__* %45, i32 -1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @qfalse, align 4
  store i32 %51, i32* %2, align 4
  br label %80

52:                                               ; preds = %44
  %53 = call i64 (...) @FloatTime()
  %54 = add nsw i64 %53, 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %38
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @trap_EA_Talk(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i64 (...) @FloatTime()
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @trap_BotEnterChat(i32 %70, i32 0, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %57
  %79 = load i32, i32* @qtrue, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %67, %48
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @BotChat_HitTalking(%struct.TYPE_8__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i64 @BotChatTime(%struct.TYPE_8__*) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @trap_EA_Talk(i32) #1

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #1

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
