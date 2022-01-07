; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotUpdateInfoConfigStrings.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotUpdateInfoConfigStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@maxclients = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@botstates = common dso_local global %struct.TYPE_3__** null, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotUpdateInfoConfigStrings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAX_INFO_STRING, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %56, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @maxclients, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @MAX_CLIENTS, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %59

18:                                               ; preds = %16
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @botstates, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @botstates, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %18
  br label %56

35:                                               ; preds = %25
  %36 = load i64, i64* @CS_PLAYERS, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = trunc i64 %5 to i32
  %41 = call i32 @trap_GetConfigstring(i64 %39, i8* %7, i32 %40)
  %42 = call i32 @strlen(i8* %7)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i8* @Info_ValueForKey(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @strlen(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %35
  br label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @botstates, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @BotSetInfoConfigString(%struct.TYPE_3__* %54)
  br label %56

56:                                               ; preds = %49, %48, %34
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %8

59:                                               ; preds = %16
  %60 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @BotSetInfoConfigString(%struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
