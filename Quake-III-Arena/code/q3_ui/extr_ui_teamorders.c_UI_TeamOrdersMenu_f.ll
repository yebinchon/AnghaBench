; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@teamOrdersMenuInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_TeamOrdersMenu_f() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_INFO_STRING, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i64, i64* @CS_SERVERINFO, align 8
  %11 = trunc i64 %7 to i32
  %12 = call i32 @trap_GetConfigString(i64 %10, i8* %9, i32 %11)
  %13 = call i32 @Info_ValueForKey(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* @atoi(i32 %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %17 = load i64, i64* @GT_TEAM, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %37

20:                                               ; preds = %0
  %21 = call i32 @trap_GetClientState(%struct.TYPE_4__* %1)
  %22 = load i64, i64* @CS_PLAYERS, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @MAX_INFO_STRING, align 4
  %27 = call i32 @trap_GetConfigString(i64 %25, i8* %9, i32 %26)
  %28 = call i32 @Info_ValueForKey(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i8* @atoi(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TEAM_SPECTATOR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %37

35:                                               ; preds = %20
  %36 = call i32 (...) @UI_TeamOrdersMenu()
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %34, %19
  %38 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigString(i64, i8*, i32) #2

declare dso_local i8* @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @trap_GetClientState(%struct.TYPE_4__*) #2

declare dso_local i32 @UI_TeamOrdersMenu(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
