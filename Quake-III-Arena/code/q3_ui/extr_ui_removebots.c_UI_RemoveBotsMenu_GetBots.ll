; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_removebots.c_UI_RemoveBotsMenu_GetBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_removebots.c_UI_RemoveBotsMenu_GetBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@removeBotsMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"skill\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_RemoveBotsMenu_GetBots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_RemoveBotsMenu_GetBots() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_INFO_STRING, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i64, i64* @CS_SERVERINFO, align 8
  %11 = trunc i64 %7 to i32
  %12 = call i32 @trap_GetConfigString(i64 %10, i8* %9, i32 %11)
  %13 = call i32 @Info_ValueForKey(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @atoi(i32 %13)
  store i32 %14, i32* %1, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @removeBotsMenuInfo, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %38, %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i64, i64* @CS_PLAYERS, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @MAX_INFO_STRING, align 4
  %25 = call i32 @trap_GetConfigString(i64 %23, i8* %9, i32 %24)
  %26 = call i32 @Info_ValueForKey(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @atoi(i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @removeBotsMenuInfo, i32 0, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @removeBotsMenuInfo, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @removeBotsMenuInfo, i32 0, i32 0), align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @removeBotsMenuInfo, i32 0, i32 0), align 8
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigString(i64, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
