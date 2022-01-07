; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_Frame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@sv_killserver = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Server was killed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@com_sv_running = common dso_local global %struct.TYPE_12__* null, align 8
@sv_fps = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"sv_fps\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@sv = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@com_dedicated = common dso_local global %struct.TYPE_14__* null, align 8
@svs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Restarting server due to time wrapping\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"vstr nextmap\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Restarting server due to numSnapshotEntities wrapping\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@CS_SYSTEMINFO = common dso_local global i32 0, align 4
@com_speeds = common dso_local global %struct.TYPE_13__* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@time_game = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_killserver, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %157

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_sv_running, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %157

18:                                               ; preds = %12
  %19 = call i64 (...) @SV_CheckPaused()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %157

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_fps, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @Cvar_Set(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_fps, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 1000, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_dedicated, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @SV_BotFrame(i32 %44)
  br label %46

46:                                               ; preds = %41, %29
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_dedicated, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @NET_Sleep(i32 %58)
  br label %157

60:                                               ; preds = %51, %46
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %62 = icmp sgt i32 %61, 1879048192
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %157

66:                                               ; preds = %60
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 2), align 4
  %69 = sub nsw i32 2147483646, %68
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %73 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %157

74:                                               ; preds = %66
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 1), align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 1), align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 1), align 4
  %82 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %157

83:                                               ; preds = %77, %74
  %84 = load i32, i32* @cvar_modifiedFlags, align 4
  %85 = load i32, i32* @CVAR_SERVERINFO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* @CS_SERVERINFO, align 4
  %90 = load i32, i32* @CVAR_SERVERINFO, align 4
  %91 = call i32 @Cvar_InfoString(i32 %90)
  %92 = call i32 @SV_SetConfigstring(i32 %89, i32 %91)
  %93 = load i32, i32* @CVAR_SERVERINFO, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* @cvar_modifiedFlags, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* @cvar_modifiedFlags, align 4
  br label %97

97:                                               ; preds = %88, %83
  %98 = load i32, i32* @cvar_modifiedFlags, align 4
  %99 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load i32, i32* @CS_SYSTEMINFO, align 4
  %104 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %105 = call i32 @Cvar_InfoString_Big(i32 %104)
  %106 = call i32 @SV_SetConfigstring(i32 %103, i32 %105)
  %107 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* @cvar_modifiedFlags, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* @cvar_modifiedFlags, align 4
  br label %111

111:                                              ; preds = %102, %97
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_speeds, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @Sys_Milliseconds()
  store i32 %117, i32* %4, align 4
  br label %119

118:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %116
  %120 = call i32 (...) @SV_CalcPings()
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_dedicated, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %127 = call i32 @SV_BotFrame(i32 %126)
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %133, %128
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sv, i32 0, i32 0), align 4
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %140 = load i32, i32* @gvm, align 4
  %141 = load i32, i32* @GAME_RUN_FRAME, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 4
  %143 = call i32 @VM_Call(i32 %140, i32 %141, i32 %142)
  br label %129

144:                                              ; preds = %129
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_speeds, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = call i32 (...) @Sys_Milliseconds()
  %151 = load i32, i32* %4, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* @time_game, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = call i32 (...) @SV_CheckTimeouts()
  %155 = call i32 (...) @SV_SendClientMessages()
  %156 = call i32 (...) @SV_MasterHeartbeat()
  br label %157

157:                                              ; preds = %153, %81, %71, %63, %55, %21, %17, %9
  ret void
}

declare dso_local i32 @SV_Shutdown(i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i64 @SV_CheckPaused(...) #1

declare dso_local i32 @SV_BotFrame(i32) #1

declare dso_local i32 @NET_Sleep(i32) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

declare dso_local i32 @SV_SetConfigstring(i32, i32) #1

declare dso_local i32 @Cvar_InfoString(i32) #1

declare dso_local i32 @Cvar_InfoString_Big(i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @SV_CalcPings(...) #1

declare dso_local i32 @VM_Call(i32, i32, i32) #1

declare dso_local i32 @SV_CheckTimeouts(...) #1

declare dso_local i32 @SV_SendClientMessages(...) #1

declare dso_local i32 @SV_MasterHeartbeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
