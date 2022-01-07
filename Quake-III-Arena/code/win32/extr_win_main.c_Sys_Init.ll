; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"in_restart\00", align 1
@Sys_In_Restart_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"net_restart\00", align 1
@Sys_Net_Restart_f = common dso_local global i32 0, align 4
@g_wv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Couldn't get OS info\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Quake3 requires Windows version 4 or greater\00", align 1
@VER_PLATFORM_WIN32s = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Quake3 doesn't run on Win32s\00", align 1
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"winnt\00", align 1
@VER_PLATFORM_WIN32_WINDOWS = common dso_local global i64 0, align 8
@WIN98_BUILD_NUMBER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"win98\00", align 1
@OSR2_BUILD_NUMBER = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"win95 osr2.x\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"win95\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"unknown Windows variant\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"win_hinstance\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"win_wndproc\00", align 1
@MainWndProc = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"sys_cpustring\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"...detecting CPU, found \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"x86 (pre-Pentium)\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"x86 (P5/PPro, non-MMX)\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"x86 (P5/Pentium2, MMX)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Intel Pentium III\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"AMD w/ 3DNow!\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Alpha AXP\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"Unknown cpu type %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"...forcing CPU type to \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"x87\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"mmx\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"3dnow\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"PentiumIII\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"axp\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"WARNING: unknown sys_cpustring '%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sys_cpuid\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"username\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @timeBeginPeriod(i32 1)
  %3 = load i32, i32* @Sys_In_Restart_f, align 4
  %4 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @Sys_Net_Restart_f, align 4
  %6 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 0), align 8
  %7 = call i32 @GetVersionEx(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @Sys_Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 1), align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @Sys_Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 2), align 8
  %18 = load i64, i64* @VER_PLATFORM_WIN32s, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @Sys_Error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 2), align 8
  %24 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %53

28:                                               ; preds = %22
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 2), align 8
  %30 = load i64, i64* @VER_PLATFORM_WIN32_WINDOWS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 3), align 8
  %34 = call i64 @LOWORD(i32 %33)
  %35 = load i64, i64* @WIN98_BUILD_NUMBER, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %49

39:                                               ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 1, i32 3), align 8
  %41 = call i64 @LOWORD(i32 %40)
  %42 = load i64, i64* @OSR2_BUILD_NUMBER, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %48

46:                                               ; preds = %39
  %47 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %37
  br label %52

50:                                               ; preds = %28
  %51 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wv, i32 0, i32 0), align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @CVAR_ROM, align 4
  %58 = call i32 @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %56, i32 %57)
  %59 = load i64, i64* @MainWndProc, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @CVAR_ROM, align 4
  %63 = call i32 @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %61, i32 %62)
  %64 = call i32 @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %65 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %66 = call i32 @Q_stricmp(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %91, label %68

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %70 = call i32 (...) @Sys_GetProcessorId()
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  switch i32 %71, label %86 [
    i32 132, label %72
    i32 128, label %74
    i32 129, label %76
    i32 130, label %78
    i32 131, label %80
    i32 134, label %82
    i32 133, label %84
  ]

72:                                               ; preds = %68
  %73 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %90

74:                                               ; preds = %68
  %75 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %90

76:                                               ; preds = %68
  %77 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %90

78:                                               ; preds = %68
  %79 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %90

80:                                               ; preds = %68
  %81 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %90

82:                                               ; preds = %68
  %83 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %90

84:                                               ; preds = %68
  %85 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %90

86:                                               ; preds = %68
  %87 = load i32, i32* @ERR_FATAL, align 4
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @Com_Error(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %84, %82, %80, %78, %76, %74, %72
  br label %131

91:                                               ; preds = %53
  %92 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %93 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %94 = call i32 @Q_stricmp(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 132, i32* %1, align 4
  br label %130

97:                                               ; preds = %91
  %98 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %99 = call i32 @Q_stricmp(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 129, i32* %1, align 4
  br label %129

102:                                              ; preds = %97
  %103 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %104 = call i32 @Q_stricmp(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 130, i32* %1, align 4
  br label %128

107:                                              ; preds = %102
  %108 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %109 = call i32 @Q_stricmp(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store i32 134, i32* %1, align 4
  br label %127

112:                                              ; preds = %107
  %113 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %114 = call i32 @Q_stricmp(i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i32 131, i32* %1, align 4
  br label %126

117:                                              ; preds = %112
  %118 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %119 = call i32 @Q_stricmp(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  store i32 133, i32* %1, align 4
  br label %125

122:                                              ; preds = %117
  %123 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0), i32 %123)
  store i32 132, i32* %1, align 4
  br label %125

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %101
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %90
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %132)
  %134 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %135 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 %134)
  %136 = call i8* (...) @Sys_GetCurrentUser()
  %137 = call i32 @Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* %136)
  %138 = call i32 (...) @IN_Init()
  ret void
}

declare dso_local i32 @timeBeginPeriod(i32) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @GetVersionEx(%struct.TYPE_4__*) #1

declare dso_local i32 @Sys_Error(i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Cvar_VariableString(i8*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Sys_GetProcessorId(...) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i8* @Sys_GetCurrentUser(...) #1

declare dso_local i32 @IN_Init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
