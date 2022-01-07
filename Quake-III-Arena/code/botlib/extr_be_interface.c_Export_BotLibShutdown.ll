; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_Export_BotLibShutdown.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_Export_BotLibShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"BotLibShutdown\00", align 1
@BLERR_LIBRARYNOTSETUP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@botlibsetup = common dso_local global i8* null, align 8
@botlibglobals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Export_BotLibShutdown() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @BotLibSetup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @BLERR_LIBRARYNOTSETUP, align 4
  store i32 %5, i32* %1, align 4
  br label %22

6:                                                ; preds = %0
  %7 = call i32 (...) @BotShutdownChatAI()
  %8 = call i32 (...) @BotShutdownMoveAI()
  %9 = call i32 (...) @BotShutdownGoalAI()
  %10 = call i32 (...) @BotShutdownWeaponAI()
  %11 = call i32 (...) @BotShutdownWeights()
  %12 = call i32 (...) @BotShutdownCharacters()
  %13 = call i32 (...) @AAS_Shutdown()
  %14 = call i32 (...) @EA_Shutdown()
  %15 = call i32 (...) @LibVarDeAllocAll()
  %16 = call i32 (...) @PC_RemoveAllGlobalDefines()
  %17 = call i32 (...) @Log_Shutdown()
  %18 = load i8*, i8** @qfalse, align 8
  store i8* %18, i8** @botlibsetup, align 8
  %19 = load i8*, i8** @qfalse, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botlibglobals, i32 0, i32 0), align 8
  %20 = call i32 (...) @PC_CheckOpenSourceHandles()
  %21 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %6, %4
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @BotLibSetup(i8*) #1

declare dso_local i32 @BotShutdownChatAI(...) #1

declare dso_local i32 @BotShutdownMoveAI(...) #1

declare dso_local i32 @BotShutdownGoalAI(...) #1

declare dso_local i32 @BotShutdownWeaponAI(...) #1

declare dso_local i32 @BotShutdownWeights(...) #1

declare dso_local i32 @BotShutdownCharacters(...) #1

declare dso_local i32 @AAS_Shutdown(...) #1

declare dso_local i32 @EA_Shutdown(...) #1

declare dso_local i32 @LibVarDeAllocAll(...) #1

declare dso_local i32 @PC_RemoveAllGlobalDefines(...) #1

declare dso_local i32 @Log_Shutdown(...) #1

declare dso_local i32 @PC_CheckOpenSourceHandles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
