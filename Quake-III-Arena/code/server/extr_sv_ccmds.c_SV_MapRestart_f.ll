; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_MapRestart_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_MapRestart_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i8*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64 }

@com_frameTime = common dso_local global i64 0, align 8
@sv = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@com_sv_running = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"g_doWarmup\00", align 1
@svs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CS_WARMUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_16__* null, align 8
@sv_gametype = common dso_local global %struct.TYPE_17__* null, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"variable change -- restarting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@qfalse = common dso_local global i8* null, align 8
@SNAPFLAG_SERVERCOUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@SS_LOADING = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@SS_GAME = common dso_local global i32 0, align 4
@CS_CONNECTED = common dso_local global i64 0, align 8
@NA_BOT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"map_restart\0A\00", align 1
@GAME_CLIENT_CONNECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"SV_MapRestart_f(%d): dropped client %i - denied!\0A\00", align 1
@CS_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_MapRestart_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_MapRestart_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = load i64, i64* @com_frameTime, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %162

12:                                               ; preds = %0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_sv_running, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %162

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %162

23:                                               ; preds = %19
  %24 = call i32 (...) @Cmd_Argc()
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @Cmd_Argv(i32 1)
  %28 = call i32 @atoi(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %23
  store i32 5, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %41 = load i32, i32* @CS_WARMUP, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %43 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @SV_SetConfigstring(i32 %41, i32 %43)
  br label %162

45:                                               ; preds = %33, %30
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_maxclients, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_gametype, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @MAX_QPATH, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %6, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %7, align 8
  %60 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %62 = trunc i64 %57 to i32
  %63 = call i32 @Q_strncpyz(i8* %59, i32 %61, i32 %62)
  %64 = load i8*, i8** @qfalse, align 8
  %65 = call i32 @SV_SpawnServer(i8* %59, i8* %64)
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %162

67:                                               ; preds = %50
  %68 = load i32, i32* @SNAPFLAG_SERVERCOUNT, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 2), align 8
  %70 = xor i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 2), align 8
  %71 = load i64, i64* @com_frameTime, align 8
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @SS_LOADING, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 3), align 8
  %77 = load i8*, i8** @qtrue, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 8
  %78 = call i32 (...) @SV_RestartGameProgs()
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %89, %67
  %80 = load i32, i32* %1, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* @gvm, align 4
  %84 = load i32, i32* @GAME_RUN_FRAME, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %86 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %88 = add nsw i32 %87, 100
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load i32, i32* @SS_GAME, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 3), align 8
  %94 = load i8*, i8** @qfalse, align 8
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %152, %92
  %96 = load i32, i32* %1, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_maxclients, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %155

101:                                              ; preds = %95
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 1), align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %104
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %2, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CS_CONNECTED, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %152

112:                                              ; preds = %101
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NA_BOT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i8*, i8** @qtrue, align 8
  store i8* %121, i8** %4, align 8
  br label %124

122:                                              ; preds = %112
  %123 = load i8*, i8** @qfalse, align 8
  store i8* %123, i8** %4, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = call i32 @SV_AddServerCommand(%struct.TYPE_14__* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* @gvm, align 4
  %128 = load i32, i32* @gvm, align 4
  %129 = load i32, i32* @GAME_CLIENT_CONNECT, align 4
  %130 = load i32, i32* %1, align 4
  %131 = load i8*, i8** @qfalse, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %128, i32 %129, i32 %130, i8* %131, i8* %132)
  %134 = call i8* @VM_ExplicitArgPtr(i32 %127, i32 %133)
  store i8* %134, i8** %3, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %124
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 @SV_DropClient(%struct.TYPE_14__* %138, i8* %139)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %1, align 4
  %143 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %141, i32 %142)
  br label %152

144:                                              ; preds = %124
  %145 = load i64, i64* @CS_ACTIVE, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = call i32 @SV_ClientEnterWorld(%struct.TYPE_14__* %148, i32* %150)
  br label %152

152:                                              ; preds = %144, %137, %111
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %1, align 4
  br label %95

155:                                              ; preds = %95
  %156 = load i32, i32* @gvm, align 4
  %157 = load i32, i32* @GAME_RUN_FRAME, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %159 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %161 = add nsw i32 %160, 100
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  br label %162

162:                                              ; preds = %155, %55, %36, %22, %17, %11
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @SV_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @Cvar_VariableString(i8*) #1

declare dso_local i32 @SV_SpawnServer(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Cvar_Set(i8*, i32) #1

declare dso_local i32 @SV_RestartGameProgs(...) #1

declare dso_local i32 @VM_Call(i32, i32, i32, ...) #1

declare dso_local i32 @SV_AddServerCommand(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @VM_ExplicitArgPtr(i32, i32) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SV_ClientEnterWorld(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
