; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SVC_Info.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SVC_Info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ui_singlePlayerActive\00", align 1
@sv_privateClients = common dso_local global %struct.TYPE_15__* null, align 8
@sv_maxclients = common dso_local global %struct.TYPE_17__* null, align 8
@svs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@sv_hostname = common dso_local global %struct.TYPE_20__* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@sv_mapname = common dso_local global %struct.TYPE_19__* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@sv_gametype = common dso_local global %struct.TYPE_11__* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@sv_pure = common dso_local global %struct.TYPE_14__* null, align 8
@sv_minPing = common dso_local global %struct.TYPE_16__* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"minPing\00", align 1
@sv_maxPing = common dso_local global %struct.TYPE_18__* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"maxPing\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@NS_SERVER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"infoResponse\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SVC_Info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @MAX_INFO_STRING, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %1
  store i32 1, i32* %8, align 4
  br label %116

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sv_privateClients, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %43, %20
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_maxclients, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 0), align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CS_CONNECTED, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %24

46:                                               ; preds = %24
  %47 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %47, align 16
  %48 = call i8* @Cmd_Argv(i32 1)
  %49 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @PROTOCOL_VERSION, align 4
  %51 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sv_hostname, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sv_mapname, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_maxclients, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sv_privateClients, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_gametype, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_pure, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_minPing, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %46
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_minPing, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87, %46
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sv_maxPing, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sv_maxPing, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %98, %93
  %105 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* @NS_SERVER, align 4
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @NET_OutOfBandPrint(i32 %113, i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %12)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %19
  %117 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @Cvar_VariableValue(i8*) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i8* @va(i8*, i32) #2

declare dso_local i8* @Cvar_VariableString(i8*) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
