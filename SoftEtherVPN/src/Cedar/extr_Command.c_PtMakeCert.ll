; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtMakeCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtMakeCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_17__*, i32*, i32*, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"CMD_MakeCert_EVAL_EXPIRES\00", align 1
@__const.PtMakeCert.minmax = private unnamed_addr constant %struct.TYPE_17__ { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 0, i32 10950 }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"CMD_MakeCert_PROMPT_CN\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"CMD_MakeCert_PROMPT_O\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"CMD_MakeCert_PROMPT_OU\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CMD_MakeCert_PROMPT_C\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"CMD_MakeCert_PROMPT_ST\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"CMD_MakeCert_PROMPT_L\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SERIAL\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"CMD_MakeCert_PROMPT_SERIAL\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"EXPIRES\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"CMD_MakeCert_PROMPT_EXPIRES\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"SIGNCERT\00", align 1
@CmdEvalIsFile = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"SIGNKEY\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SAVECERT\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"CMD_MakeCert_PROMPT_SAVECERT\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"SAVEKEY\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"CMD_MakeCert_PROMPT_SAVEKEY\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"CMD_MakeCert_ERROR_SIGNKEY\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"CMD_MakeCert_ERROR_GEN_FAILED\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"CMD_SAVECERT_FAILED\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"CMD_SAVEKEY_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PtMakeCert(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_17__, align 8
  %22 = alloca [12 x %struct.TYPE_15__], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %24 = bitcast %struct.TYPE_17__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_17__* @__const.PtMakeCert.minmax to i8*), i64 16, i1 false)
  %25 = getelementptr inbounds [12 x %struct.TYPE_15__], [12 x %struct.TYPE_15__]* %22, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %28 = load i32*, i32** @CmdPrompt, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %31 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %37 = load i32*, i32** @CmdPrompt, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %36, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %40 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %46 = load i32*, i32** @CmdPrompt, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %49 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32* %49, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %55 = load i32*, i32** @CmdPrompt, align 8
  %56 = bitcast i32* %55 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %58 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32* %58, i32** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %64 = load i32*, i32** @CmdPrompt, align 8
  %65 = bitcast i32* %64 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %63, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %67 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  store i32* %67, i32** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %73 = load i32*, i32** @CmdPrompt, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %72, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %76 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  store i32* %76, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %82 = load i32*, i32** @CmdPrompt, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %81, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %85 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i32* %85, i32** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  store i32* null, i32** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  store i32* null, i32** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %91 = load i32*, i32** @CmdPrompt, align 8
  %92 = bitcast i32* %91 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %90, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %94 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  store i32* %94, i32** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %96 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %96, i32** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %98 = bitcast %struct.TYPE_17__* %21 to i32*
  store i32* %98, i32** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %104 = load i32*, i32** @CmdEvalIsFile, align 8
  store i32* %104, i32** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  store i32* null, i32** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  %111 = load i32*, i32** @CmdEvalIsFile, align 8
  store i32* %111, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  store i32* null, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %116 = load i32*, i32** @CmdPrompt, align 8
  %117 = bitcast i32* %116 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %119 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  store i32* %119, i32** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  %121 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %121, i32** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  store i32* null, i32** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 1
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %126 = load i32*, i32** @CmdPrompt, align 8
  %127 = bitcast i32* %126 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %125, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %129 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  store i32* %129, i32** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %131 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %131, i32** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds [12 x %struct.TYPE_15__], [12 x %struct.TYPE_15__]* %22, i64 0, i64 0
  %137 = call i32* @ParseCommandList(%struct.TYPE_16__* %133, i8* %134, i32* %135, %struct.TYPE_15__* %136, i32 12)
  store i32* %137, i32** %10, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %4
  %141 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %141, i64* %5, align 8
  br label %307

142:                                              ; preds = %4
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @GetParamStr(i32* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %145 = call i32 @IsEmptyStr(i32 %144)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %142
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @GetParamStr(i32* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %150 = call i32 @IsEmptyStr(i32 %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %147
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @GetParamUniStr(i32* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %155 = call i32* @FileToXW(i32 %154)
  store i32* %155, i32** %19, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @GetParamUniStr(i32* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %158 = call i32* @FileToKW(i32 %157, i32 1, i32* null)
  store i32* %158, i32** %20, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %152
  %162 = load i32*, i32** %20, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load i32*, i32** %19, align 8
  %166 = load i32*, i32** %20, align 8
  %167 = call i32 @CheckXandK(i32* %165, i32* %166)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164, %161, %152
  %170 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %170, i64* %11, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %176 = call i32 %173(%struct.TYPE_16__* %174, i32* %175)
  br label %177

177:                                              ; preds = %169, %164
  br label %178

178:                                              ; preds = %177, %147, %142
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* @ERR_NO_ERROR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %285

182:                                              ; preds = %178
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @GetParamStr(i32* %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %185 = call %struct.TYPE_18__* @StrToBin(i32 %184)
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %17, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %187 = icmp ne %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp sge i32 %191, 1
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32* @NewXSerial(i32 %196, i32 %199)
  store i32* %200, i32** %16, align 8
  br label %201

201:                                              ; preds = %193, %188, %182
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %203 = call i32 @FreeBuf(%struct.TYPE_18__* %202)
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @GetParamUniStr(i32* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @GetParamUniStr(i32* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i32*, i32** %10, align 8
  %209 = call i32 @GetParamUniStr(i32* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @GetParamUniStr(i32* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %212 = load i32*, i32** %10, align 8
  %213 = call i32 @GetParamUniStr(i32* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @GetParamUniStr(i32* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %216 = call i32* @NewName(i32 %205, i32 %207, i32 %209, i32 %211, i32 %213, i32 %215)
  store i32* %216, i32** %15, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = call i64 @GetParamInt(i32* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i64 %218, i64* %18, align 8
  %219 = load i64, i64* %18, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %201
  store i64 3650, i64* %18, align 8
  br label %222

222:                                              ; preds = %221, %201
  %223 = call i32 @RsaGen(i32** %14, i32** %13, i32 1024)
  %224 = load i32*, i32** %19, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32*, i32** %13, align 8
  %228 = load i32*, i32** %14, align 8
  %229 = load i32*, i32** %15, align 8
  %230 = load i64, i64* %18, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = call i32* @NewRootX(i32* %227, i32* %228, i32* %229, i64 %230, i32* %231)
  store i32* %232, i32** %12, align 8
  br label %241

233:                                              ; preds = %222
  %234 = load i32*, i32** %13, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = load i32*, i32** %19, align 8
  %237 = load i32*, i32** %15, align 8
  %238 = load i64, i64* %18, align 8
  %239 = load i32*, i32** %16, align 8
  %240 = call i32* @NewX(i32* %234, i32* %235, i32* %236, i32* %237, i64 %238, i32* %239)
  store i32* %240, i32** %12, align 8
  br label %241

241:                                              ; preds = %233, %226
  %242 = load i32*, i32** %16, align 8
  %243 = call i32 @FreeXSerial(i32* %242)
  %244 = load i32*, i32** %15, align 8
  %245 = call i32 @FreeName(i32* %244)
  %246 = load i32*, i32** %12, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %241
  %249 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %249, i64* %11, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %251, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %255 = call i32 %252(%struct.TYPE_16__* %253, i32* %254)
  br label %284

256:                                              ; preds = %241
  %257 = load i32*, i32** %12, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = call i32 @GetParamUniStr(i32* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %260 = call i32 @XToFileW(i32* %257, i32 %259, i32 1)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %256
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %264, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %268 = call i32 %265(%struct.TYPE_16__* %266, i32* %267)
  br label %283

269:                                              ; preds = %256
  %270 = load i32*, i32** %14, align 8
  %271 = load i32*, i32** %10, align 8
  %272 = call i32 @GetParamUniStr(i32* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %273 = call i32 @KToFileW(i32* %270, i32 %272, i32 1, i32* null)
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %269
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %277, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %280 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %281 = call i32 %278(%struct.TYPE_16__* %279, i32* %280)
  br label %282

282:                                              ; preds = %275, %269
  br label %283

283:                                              ; preds = %282, %262
  br label %284

284:                                              ; preds = %283, %248
  br label %285

285:                                              ; preds = %284, %178
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* @ERR_NO_ERROR, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %291 = load i64, i64* %11, align 8
  %292 = call i32 @CmdPrintError(%struct.TYPE_16__* %290, i64 %291)
  br label %293

293:                                              ; preds = %289, %285
  %294 = load i32*, i32** %10, align 8
  %295 = call i32 @FreeParamValueList(i32* %294)
  %296 = load i32*, i32** %19, align 8
  %297 = call i32 @FreeX(i32* %296)
  %298 = load i32*, i32** %20, align 8
  %299 = call i32 @FreeK(i32* %298)
  %300 = load i32*, i32** %12, align 8
  %301 = call i32 @FreeX(i32* %300)
  %302 = load i32*, i32** %14, align 8
  %303 = call i32 @FreeK(i32* %302)
  %304 = load i32*, i32** %13, align 8
  %305 = call i32 @FreeK(i32* %304)
  %306 = load i64, i64* %11, align 8
  store i64 %306, i64* %5, align 8
  br label %307

307:                                              ; preds = %293, %140
  %308 = load i64, i64* %5, align 8
  ret i64 %308
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @IsEmptyStr(i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

declare dso_local i32* @FileToXW(i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i32* @FileToKW(i32, i32, i32*) #2

declare dso_local i32 @CheckXandK(i32*, i32*) #2

declare dso_local %struct.TYPE_18__* @StrToBin(i32) #2

declare dso_local i32* @NewXSerial(i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_18__*) #2

declare dso_local i32* @NewName(i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @GetParamInt(i32*, i8*) #2

declare dso_local i32 @RsaGen(i32**, i32**, i32) #2

declare dso_local i32* @NewRootX(i32*, i32*, i32*, i64, i32*) #2

declare dso_local i32* @NewX(i32*, i32*, i32*, i32*, i64, i32*) #2

declare dso_local i32 @FreeXSerial(i32*) #2

declare dso_local i32 @FreeName(i32*) #2

declare dso_local i32 @XToFileW(i32*, i32, i32) #2

declare dso_local i32 @KToFileW(i32*, i32, i32, i32*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32 @FreeX(i32*) #2

declare dso_local i32 @FreeK(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
