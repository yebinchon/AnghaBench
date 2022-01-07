; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8**, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@s_playermodel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"models/players/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerModel_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_SetMenuItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 7, i32 0), align 4
  %7 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6, i32 16)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 7, i32 0), align 4
  %9 = call i32 @Q_CleanStr(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %11 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 64)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %87, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 8
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %12
  %17 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = call i32 @Q_strncpyz(i8* %30, i8* %31, i32 %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = call i32 @strcat(i8* %40, i8* %42)
  br label %45

44:                                               ; preds = %16
  br label %87

45:                                               ; preds = %29
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %48 = call i32 @Q_stricmp(i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %1, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 2), align 8
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 3), align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp sgt i32 %61, 16
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 16, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 5, i32 0), align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @Q_strncpyz(i8* %65, i8* %66, i32 %67)
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 5, i32 0), align 8
  %70 = call i32 @Q_strupr(i8* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp sgt i32 %75, 16
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 16, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 5
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @Q_strncpyz(i8* %79, i8* %81, i32 %82)
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %85 = call i32 @Q_strupr(i8* %84)
  br label %90

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %12

90:                                               ; preds = %78, %12
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i32, i32) #1

declare dso_local i32 @Q_CleanStr(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Q_strupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
