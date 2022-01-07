; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreedEndMatch.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreedEndMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@bot_interbreed = common dso_local global i32 0, align 4
@bot_interbreedmatchcount = common dso_local global i64 0, align 8
@bot_interbreedcycle = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@bot_interbreedwrite = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"bot_interbreedwrite\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotInterbreedEndMatch() #0 {
  %1 = load i32, i32* @bot_interbreed, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = load i64, i64* @bot_interbreedmatchcount, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @bot_interbreedmatchcount, align 8
  %7 = load i64, i64* @bot_interbreedmatchcount, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bot_interbreedcycle, i32 0, i32 0), align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  store i64 0, i64* @bot_interbreedmatchcount, align 8
  %11 = call i32 @trap_Cvar_Update(%struct.TYPE_4__* @bot_interbreedwrite)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bot_interbreedwrite, i32 0, i32 0), align 4
  %13 = call i64 @strlen(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bot_interbreedwrite, i32 0, i32 0), align 4
  %17 = call i32 @BotWriteInterbreeded(i32 %16)
  %18 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %10
  %20 = call i32 (...) @BotInterbreedBots()
  br label %21

21:                                               ; preds = %3, %19, %4
  ret void
}

declare dso_local i32 @trap_Cvar_Update(%struct.TYPE_4__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @BotWriteInterbreeded(i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @BotInterbreedBots(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
