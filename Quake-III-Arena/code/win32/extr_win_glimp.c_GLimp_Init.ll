; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i8*, i8*)*, %struct.TYPE_17__* (i8*, i8*, i32)*, i32 (i32, i8*)*, i32 (i32, i8*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i32 }

@ri = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"r_lastValidRenderer\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(uninitialized)\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Initializing OpenGL subsystem\0A\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"GLimp_Init() - incorrect operating system\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"win_hinstance\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@g_wv = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"win_wndproc\00", align 1
@glw_state = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"r_allowSoftwareGL\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@r_allowSoftwareGL = common dso_local global %struct.TYPE_17__* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"r_maskMinidriver\00", align 1
@r_maskMinidriver = common dso_local global %struct.TYPE_17__* null, align 8
@glConfig = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GL_VENDOR = common dso_local global i32 0, align 4
@GL_RENDERER = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@GLHW_GENERIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"voodoo graphics/1 tmu/2 mb\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"rage 128\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"rage128\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"r_finish\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"savage3d\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"s3 savage4\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"r_texturemode\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"GL_LINEAR_MIPMAP_LINEAR\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"banshee\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"voodoo3\00", align 1
@GLHW_3DFX_2D3D = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"glzicd\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"rage pro\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Rage Pro\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ragepro\00", align 1
@GLHW_RAGEPRO = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"permedia2\00", align 1
@GLHW_PERMEDIA2 = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"riva 128\00", align 1
@GLHW_RIVA128 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"riva tnt \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_Init() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %5 = load i32, i32* @CVAR_ARCHIVE, align 4
  %6 = call %struct.TYPE_17__* %4(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %2, align 8
  %7 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 3), align 8
  %8 = load i32, i32* @PRINT_ALL, align 4
  %9 = call i32 %7(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (...) @GLW_CheckOSVersion()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 2), align 8
  %14 = load i32, i32* @ERR_FATAL, align 4
  %15 = call i32 %13(i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %0
  %17 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %18 = call %struct.TYPE_17__* %17(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %3, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sscanf(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_wv, i32 0, i32 0))
  %23 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %24 = call %struct.TYPE_17__* %23(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %3, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sscanf(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glw_state, i32 0, i32 0))
  %29 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %30 = load i32, i32* @CVAR_LATCH, align 4
  %31 = call %struct.TYPE_17__* %29(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** @r_allowSoftwareGL, align 8
  %32 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %33 = load i32, i32* @CVAR_LATCH, align 4
  %34 = call %struct.TYPE_17__* %32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** @r_maskMinidriver, align 8
  %35 = call i32 (...) @GLW_StartOpenGL()
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 0), align 8
  %37 = load i32, i32* @GL_VENDOR, align 4
  %38 = call i8* @qglGetString(i32 %37)
  %39 = call i32 @Q_strncpyz(i8* %36, i8* %38, i32 8)
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 1), align 8
  %41 = load i32, i32* @GL_RENDERER, align 4
  %42 = call i8* @qglGetString(i32 %41)
  %43 = call i32 @Q_strncpyz(i8* %40, i8* %42, i32 8)
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 2), align 8
  %45 = load i32, i32* @GL_VERSION, align 4
  %46 = call i8* @qglGetString(i32 %45)
  %47 = call i32 @Q_strncpyz(i8* %44, i8* %46, i32 8)
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 3), align 8
  %49 = load i32, i32* @GL_EXTENSIONS, align 4
  %50 = call i8* @qglGetString(i32 %49)
  %51 = call i32 @Q_strncpyz(i8* %48, i8* %50, i32 8)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 1), align 8
  %54 = call i32 @Q_strncpyz(i8* %52, i8* %53, i32 1024)
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %56 = call i32 @Q_strlwr(i8* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 1), align 8
  %61 = call i64 @Q_stricmp(i32 %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %16
  %64 = load i32, i32* @GLHW_GENERIC, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 4), align 8
  %65 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %66 = call i32 %65(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %68 = call i64 @strstr(i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %72 = call i32 %71(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %73 = load %struct.TYPE_17__* (i8*, i8*, i32)*, %struct.TYPE_17__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 1), align 8
  %74 = load i32, i32* @CVAR_ARCHIVE, align 4
  %75 = load i32, i32* @CVAR_LATCH, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.TYPE_17__* %73(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %76)
  br label %104

78:                                               ; preds = %63
  %79 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %80 = call i32 %79(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %82 = call i64 @strstr(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %86 = call i64 @strstr(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %78
  %89 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %90 = call i32 %89(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %103

91:                                               ; preds = %84
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %93 = call i64 @strstr(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %97 = call i64 @strstr(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %91
  %100 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %101 = call i32 %100(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104, %16
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %107 = call i64 @strstr(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %111 = call i64 @strstr(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @GLHW_3DFX_2D3D, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 4), align 8
  br label %168

115:                                              ; preds = %109
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %117 = call i64 @strstr(i8* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %167

120:                                              ; preds = %115
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %122 = call i64 @strstr(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %166

125:                                              ; preds = %120
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %127 = call i64 @strstr(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %131 = call i64 @strstr(i8* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %135 = call i64 @strstr(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133, %129, %125
  %138 = load i32, i32* @GLHW_RAGEPRO, align 4
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 4), align 8
  br label %165

139:                                              ; preds = %133
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %141 = call i64 @strstr(i8* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %164

144:                                              ; preds = %139
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %146 = call i64 @strstr(i8* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @GLHW_PERMEDIA2, align 4
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 4), align 8
  br label %163

150:                                              ; preds = %144
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %152 = call i64 @strstr(i8* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @GLHW_RIVA128, align 4
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 4), align 8
  br label %162

156:                                              ; preds = %150
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %158 = call i64 @strstr(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %156
  br label %162

162:                                              ; preds = %161, %154
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165, %124
  br label %167

167:                                              ; preds = %166, %119
  br label %168

168:                                              ; preds = %167, %113
  %169 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %170 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 1), align 8
  %171 = call i32 %169(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %170)
  %172 = call i32 (...) @GLW_InitExtensions()
  %173 = call i32 (...) @WG_CheckHardwareGamma()
  ret void
}

declare dso_local i32 @GLW_CheckOSVersion(...) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @GLW_StartOpenGL(...) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @qglGetString(i32) #1

declare dso_local i32 @Q_strlwr(i8*) #1

declare dso_local i64 @Q_stricmp(i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @GLW_InitExtensions(...) #1

declare dso_local i32 @WG_CheckHardwareGamma(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
