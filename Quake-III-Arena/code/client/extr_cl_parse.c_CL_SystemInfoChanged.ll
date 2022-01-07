; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_SystemInfoChanged.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_SystemInfoChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32* }
%struct.TYPE_5__ = type { i64 }

@BIG_INFO_KEY = common dso_local global i32 0, align 4
@BIG_INFO_VALUE = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CS_SYSTEMINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sv_cheats\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sv_paks\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sv_pakNames\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sv_referencedPaks\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"sv_referencedPakNames\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@cl_connectedToPureServer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_SystemInfoChanged() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @BIG_INFO_KEY, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @BIG_INFO_VALUE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 1), align 8
  %18 = load i64, i64* @CS_SYSTEMINFO, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8* %22, i8** %1, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = call i8* @Info_ValueForKey(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = call i64 @atoi(i8* %24)
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %81

29:                                               ; preds = %0
  %30 = load i8*, i8** %1, align 8
  %31 = call i8* @Info_ValueForKey(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @atoi(i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @Cvar_SetCheatState()
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i8*, i8** %1, align 8
  %39 = call i8* @Info_ValueForKey(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** %2, align 8
  %40 = load i8*, i8** %1, align 8
  %41 = call i8* @Info_ValueForKey(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @FS_PureServerSetLoadedPaks(i8* %42, i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i8* @Info_ValueForKey(i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i8* %46, i8** %2, align 8
  %47 = load i8*, i8** %1, align 8
  %48 = call i8* @Info_ValueForKey(i8* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @FS_PureServerSetReferencedPaks(i8* %49, i8* %50)
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %1, align 8
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %68, %37
  %55 = load i8*, i8** %2, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = call i32 @Info_NextPair(i8** %2, i8* %12, i8* %15)
  %59 = getelementptr inbounds i8, i8* %12, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %70

63:                                               ; preds = %57
  %64 = call i32 @Q_stricmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @qtrue, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = call i32 @Cvar_Set(i8* %12, i8* %15)
  br label %54

70:                                               ; preds = %62, %54
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = call i64* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73, %70
  %80 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %80, i32* @cl_connectedToPureServer, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %28
  %82 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %8, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @atoi(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Cvar_SetCheatState(...) #2

declare dso_local i32 @FS_PureServerSetLoadedPaks(i8*, i8*) #2

declare dso_local i32 @FS_PureServerSetReferencedPaks(i8*, i8*) #2

declare dso_local i32 @Info_NextPair(i8**, i8*, i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

declare dso_local i64* @Cvar_VariableString(i8*) #2

declare dso_local i32 @Cvar_VariableValue(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
