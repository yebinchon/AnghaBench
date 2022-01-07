; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_GLimp_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_GLimp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i8*, i8*)*, %struct.TYPE_12__* (i8*, i8*, i32)*, i32 (i32, i8*)* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i32 }

@qfalse = common dso_local global i8* null, align 8
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"r_lastValidRenderer\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(uninitialized)\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"r_allowSoftwareGL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@r_allowSoftwareGL = common dso_local global %struct.TYPE_12__* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"r_previousglDriver\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@r_previousglDriver = common dso_local global %struct.TYPE_12__* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"r_glDriver\00", align 1
@qXErrorHandler = common dso_local global i32 0, align 4
@r_glDriver = common dso_local global %struct.TYPE_14__* null, align 8
@OPENGL_DRIVER_NAME = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@_3DFX_DRIVER_NAME = common dso_local global i8* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"GLimp_Init() - could not load OpenGL subsystem\0A\00", align 1
@GLDRV_ICD = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GLHW_GENERIC = common dso_local global i8* null, align 8
@GL_VENDOR = common dso_local global i32 0, align 4
@GL_RENDERER = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"voodoo graphics/1 tmu/2 mb\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rage 128\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"rage128\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"r_finish\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"savage3d\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"s3 savage4\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"r_texturemode\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"GL_LINEAR_MIPMAP_LINEAR\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"banshee\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Voodoo_Graphics\00", align 1
@GLHW_3DFX_2D3D = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"rage pro\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"RagePro\00", align 1
@GLHW_RAGEPRO = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"permedia2\00", align 1
@GLHW_PERMEDIA2 = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"riva 128\00", align 1
@GLHW_RIVA128 = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"riva tnt \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_Init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = load i8*, i8** @qfalse, align 8
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** @qfalse, align 8
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** @qfalse, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.TYPE_12__* (i8*, i8*, i32)*, %struct.TYPE_12__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %10 = load i32, i32* @CVAR_ARCHIVE, align 4
  %11 = call %struct.TYPE_12__* %9(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_12__* (i8*, i8*, i32)*, %struct.TYPE_12__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %13 = load i32, i32* @CVAR_LATCH, align 4
  %14 = call %struct.TYPE_12__* %12(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** @r_allowSoftwareGL, align 8
  %15 = load %struct.TYPE_12__* (i8*, i8*, i32)*, %struct.TYPE_12__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %16 = load i32, i32* @CVAR_ROM, align 4
  %17 = call %struct.TYPE_12__* %15(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** @r_previousglDriver, align 8
  %18 = call i32 (...) @InitSig()
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_previousglDriver, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %0
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_previousglDriver, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 %25(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %0
  %31 = call i32 @XSetErrorHandler(i32* @qXErrorHandler)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_glDriver, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @GLW_LoadOpenGL(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %84, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_glDriver, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @OPENGL_DRIVER_NAME, align 8
  %42 = call i64 @Q_stricmp(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** @qtrue, align 8
  store i8* %45, i8** %1, align 8
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_glDriver, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @_3DFX_DRIVER_NAME, align 8
  %51 = call i64 @Q_stricmp(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** @qtrue, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i8*, i8** %1, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** @qtrue, align 8
  store i8* %63, i8** %1, align 8
  %64 = load i8*, i8** @OPENGL_DRIVER_NAME, align 8
  %65 = call i64 @GLW_LoadOpenGL(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %69 = load i8*, i8** @OPENGL_DRIVER_NAME, align 8
  %70 = call i32 %68(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** @qfalse, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_glDriver, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @qtrue, align 8
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %67, %62
  br label %76

76:                                               ; preds = %75, %59, %56
  %77 = load i8*, i8** %3, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 2), align 8
  %81 = load i32, i32* @ERR_FATAL, align 4
  %82 = call i32 %80(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %30
  %85 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_glDriver, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 %85(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @GLDRV_ICD, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 5), align 8
  %91 = load i8*, i8** @GLHW_GENERIC, align 8
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 0), align 8
  %93 = load i32, i32* @GL_VENDOR, align 4
  %94 = call i32 @qglGetString(i32 %93)
  %95 = call i32 @Q_strncpyz(i8* %92, i32 %94, i32 8)
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %97 = load i32, i32* @GL_RENDERER, align 4
  %98 = call i32 @qglGetString(i32 %97)
  %99 = call i32 @Q_strncpyz(i8* %96, i32 %98, i32 8)
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %84
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %116 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %114, %104, %84
  %122 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 2), align 8
  %123 = load i32, i32* @GL_VERSION, align 4
  %124 = call i32 @qglGetString(i32 %123)
  %125 = call i32 @Q_strncpyz(i8* %122, i32 %124, i32 8)
  %126 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 3), align 8
  %127 = load i32, i32* @GL_EXTENSIONS, align 4
  %128 = call i32 @qglGetString(i32 %127)
  %129 = call i32 @Q_strncpyz(i8* %126, i32 %128, i32 8)
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %131 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %132 = call i32 @strcpy(i8* %130, i8* %131)
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %134 = call i32 @strlwr(i8* %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %139 = call i64 @Q_stricmp(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %121
  %142 = load i8*, i8** @GLHW_GENERIC, align 8
  store i8* %142, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  %143 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %144 = call i32 %143(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %146 = call i64 @Q_stristr(i8* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %150 = call i32 %149(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %151 = load %struct.TYPE_12__* (i8*, i8*, i32)*, %struct.TYPE_12__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %152 = load i32, i32* @CVAR_ARCHIVE, align 4
  %153 = load i32, i32* @CVAR_LATCH, align 4
  %154 = or i32 %152, %153
  %155 = call %struct.TYPE_12__* %151(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %154)
  br label %182

156:                                              ; preds = %141
  %157 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %158 = call i32 %157(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %160 = call i64 @Q_stristr(i8* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %164 = call i64 @Q_stristr(i8* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %156
  %167 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %168 = call i32 %167(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %181

169:                                              ; preds = %162
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %171 = call i64 @Q_stristr(i8* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %175 = call i64 @Q_stristr(i8* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %169
  %178 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %179 = call i32 %178(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %148
  br label %183

183:                                              ; preds = %182, %121
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %185 = call i64 @Q_stristr(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %189 = call i64 @Q_stristr(i8* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187, %183
  %192 = load i8*, i8** @GLHW_3DFX_2D3D, align 8
  store i8* %192, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  br label %224

193:                                              ; preds = %187
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %195 = call i64 @Q_stristr(i8* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %199 = call i64 @Q_stristr(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197, %193
  %202 = load i8*, i8** @GLHW_RAGEPRO, align 8
  store i8* %202, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  br label %223

203:                                              ; preds = %197
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %205 = call i64 @Q_stristr(i8* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i8*, i8** @GLHW_PERMEDIA2, align 8
  store i8* %208, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  br label %222

209:                                              ; preds = %203
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %211 = call i64 @Q_stristr(i8* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i8*, i8** @GLHW_RIVA128, align 8
  store i8* %214, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 4), align 8
  br label %221

215:                                              ; preds = %209
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %217 = call i64 @Q_stristr(i8* %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %219, %215
  br label %221

221:                                              ; preds = %220, %213
  br label %222

222:                                              ; preds = %221, %207
  br label %223

223:                                              ; preds = %222, %201
  br label %224

224:                                              ; preds = %223, %191
  %225 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %226 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 1), align 8
  %227 = call i32 %225(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %226)
  %228 = call i32 (...) @GLW_InitExtensions()
  %229 = call i32 (...) @GLW_InitGamma()
  %230 = call i32 (...) @InitSig()
  ret void
}

declare dso_local i32 @InitSig(...) #1

declare dso_local i32 @XSetErrorHandler(i32*) #1

declare dso_local i64 @GLW_LoadOpenGL(i8*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @qglGetString(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlwr(i8*) #1

declare dso_local i64 @Q_stristr(i8*, i8*) #1

declare dso_local i32 @GLW_InitExtensions(...) #1

declare dso_local i32 @GLW_InitGamma(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
