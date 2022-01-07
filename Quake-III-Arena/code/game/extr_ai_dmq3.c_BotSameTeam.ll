; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSameTeam.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSameTeam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"t\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSameTeam(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @MAX_CLIENTS, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp sge i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAX_CLIENTS, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @qfalse, align 4
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %24
  %31 = load i64, i64* @gametype, align 8
  %32 = load i64, i64* @GT_TEAM, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* @CS_PLAYERS, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %43 = call i32 @trap_GetConfigstring(i32 %41, i8* %42, i32 1024)
  %44 = load i32, i32* @CS_PLAYERS, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %44, %45
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %48 = call i32 @trap_GetConfigstring(i32 %46, i8* %47, i32 1024)
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %50 = call i32 @Info_ValueForKey(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = call i64 @atoi(i32 %50)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %53 = call i32 @Info_ValueForKey(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %54 = call i64 @atoi(i32 %53)
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %56, %28, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @trap_GetConfigstring(i32, i8*, i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
