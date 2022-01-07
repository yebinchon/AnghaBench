; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_ListEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_ListEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@ID_LIST_BOTS = common dso_local global i32 0, align 4
@teamOrdersMenuInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@ID_LIST_CTF_ORDERS = common dso_local global i32 0, align 4
@ID_LIST_TEAM_ORDERS = common dso_local global i32 0, align 4
@ctfMessages = common dso_local global i32* null, align 8
@teamMessages = common dso_local global i32* null, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"say_team \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_TeamOrdersMenu_ListEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_TeamOrdersMenu_ListEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QM_ACTIVATED, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ID_LIST_BOTS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1), align 8
  %28 = load i64, i64* @GT_CTF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ID_LIST_CTF_ORDERS, align 4
  %32 = call i32 @UI_TeamOrdersMenu_SetList(i32 %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ID_LIST_TEAM_ORDERS, align 4
  %35 = call i32 @UI_TeamOrdersMenu_SetList(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %73

37:                                               ; preds = %12
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ID_LIST_CTF_ORDERS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = load i32*, i32** @ctfMessages, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 2), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Com_sprintf(i8* %42, i32 256, i32 %47, i32 %52)
  br label %67

54:                                               ; preds = %37
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %56 = load i32*, i32** @teamMessages, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 2), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Com_sprintf(i8* %55, i32 256, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %54, %41
  %68 = load i32, i32* @EXEC_APPEND, align 4
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %70 = call i32 @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = call i32 @trap_Cmd_ExecuteText(i32 %68, i32 %70)
  %72 = call i32 (...) @UI_PopMenu()
  br label %73

73:                                               ; preds = %67, %36, %11
  ret void
}

declare dso_local i32 @UI_TeamOrdersMenu_SetList(i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
