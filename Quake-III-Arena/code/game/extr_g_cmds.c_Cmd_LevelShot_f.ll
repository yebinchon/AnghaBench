; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_LevelShot_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_LevelShot_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_gametype = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"print \22Must be in g_gametype 0 for levelshot\0A\22\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clientLevelShot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_LevelShot_f(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @CheatsOk(i32* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_gametype, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @g_entities, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = call i32 @trap_SendServerCommand(i32* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %25

17:                                               ; preds = %7
  %18 = call i32 (...) @BeginIntermission()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @g_entities, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @trap_SendServerCommand(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %17, %10, %6
  ret void
}

declare dso_local i32 @CheatsOk(i32*) #1

declare dso_local i32 @trap_SendServerCommand(i32*, i8*) #1

declare dso_local i32 @BeginIntermission(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
