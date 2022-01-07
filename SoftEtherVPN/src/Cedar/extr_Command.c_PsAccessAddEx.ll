; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAddEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAddEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32*)* }
%struct.TYPE_16__ = type { i32, i32*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_19__*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Eval_PRIORITY\00", align 1
@__const.PsAccessAddEx.minmax = private unnamed_addr constant %struct.TYPE_19__ { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 1, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_AccessAddEx_Eval_DELAY\00", align 1
@HUB_ACCESSLIST_DELAY_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"CMD_AccessAddEx_Eval_JITTER\00", align 1
@HUB_ACCESSLIST_JITTER_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"CMD_AccessAddEx_Eval_LOSS\00", align 1
@HUB_ACCESSLIST_LOSS_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"[pass|discard]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"CMD_AccessAdd_Prompt_TYPE\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"MEMO\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"CMD_AccessAdd_Prompt_MEMO\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"PRIORITY\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_PRIORITY\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"SRCUSERNAME\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CMD_AccessAdd_Prompt_SRCUSERNAME\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"DESTUSERNAME\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"CMD_AccessAdd_Prompt_DESTUSERNAME\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SRCMAC\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Prompt_SRCMAC\00", align 1
@CmdEvalMacAddressAndMask = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"DESTMAC\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd_Prompt_DESTMAC\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SRCIP\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd_Prompt_SRCIP\00", align 1
@CmdEvalIpAndMask4 = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"DESTIP\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Prompt_DESTIP\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_PROTOCOL\00", align 1
@CmdEvalProtocol = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"SRCPORT\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd_Prompt_SRCPORT\00", align 1
@CmdEvalPortRange = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"DESTPORT\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_DESTPORT\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"TCPSTATE\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_TCPSTATE\00", align 1
@CmdEvalTcpState = common dso_local global i32* null, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"DELAY\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"CMD_AccessAddEx_Prompt_DELAY\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"JITTER\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"CMD_AccessAddEx_Prompt_JITTER\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LOSS\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"CMD_AccessAddEx_Prompt_LOSS\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"REDIRECTURL\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"b_support_ex_acl\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAccessAddEx(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca [17 x %struct.TYPE_17__], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_19__* @__const.PsAccessAddEx.minmax to i8*), i64 24, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %26 = load i64, i64* @HUB_ACCESSLIST_DELAY_MAX, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %30 = load i64, i64* @HUB_ACCESSLIST_JITTER_MAX, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %34 = load i64, i64* @HUB_ACCESSLIST_LOSS_MAX, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds [17 x %struct.TYPE_17__], [17 x %struct.TYPE_17__]* %19, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %38 = load i32*, i32** @CmdPrompt, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %37, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %41 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32* %41, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %43 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %43, i32** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 1
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %48 = load i32*, i32** @CmdPrompt, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %51 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32* %51, i32** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i64 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %57 = load i32*, i32** @CmdPrompt, align 8
  %58 = bitcast i32* %57 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %56, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %60 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32* %60, i32** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %62 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %64 = bitcast %struct.TYPE_19__* %15 to i32*
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %68 = load i32*, i32** @CmdPrompt, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %67, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %71 = call i32* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  store i32* %71, i32** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %77 = load i32*, i32** @CmdPrompt, align 8
  %78 = bitcast i32* %77 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %76, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %80 = call i32* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  store i32* %80, i32** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i64 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %86 = load i32*, i32** @CmdPrompt, align 8
  %87 = bitcast i32* %86 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %85, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %89 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  store i32* %89, i32** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %91 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  store i32* %91, i32** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i64 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %96 = load i32*, i32** @CmdPrompt, align 8
  %97 = bitcast i32* %96 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %97, %struct.TYPE_19__** %95, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %99 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  store i32* %99, i32** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %101 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 4
  store i32* null, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i64 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %106 = load i32*, i32** @CmdPrompt, align 8
  %107 = bitcast i32* %106 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %105, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %109 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  store i32* %109, i32** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  %111 = load i32*, i32** @CmdEvalIpAndMask4, align 8
  store i32* %111, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  store i32* null, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i64 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %116 = load i32*, i32** @CmdPrompt, align 8
  %117 = bitcast i32* %116 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %117, %struct.TYPE_19__** %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %119 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  store i32* %119, i32** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %121 = load i32*, i32** @CmdEvalIpAndMask4, align 8
  store i32* %121, i32** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 4
  store i32* null, i32** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 1
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %126 = load i32*, i32** @CmdPrompt, align 8
  %127 = bitcast i32* %126 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %125, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %129 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  store i32* %129, i32** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %131 = load i32*, i32** @CmdEvalProtocol, align 8
  store i32* %131, i32** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 4
  store i32* null, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %136 = load i32*, i32** @CmdPrompt, align 8
  %137 = bitcast i32* %136 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %135, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  %139 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  store i32* %139, i32** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %141 = load i32*, i32** @CmdEvalPortRange, align 8
  store i32* %141, i32** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 4
  store i32* null, i32** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i64 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %146 = load i32*, i32** @CmdPrompt, align 8
  %147 = bitcast i32* %146 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %147, %struct.TYPE_19__** %145, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %149 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  store i32* %149, i32** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %151 = load i32*, i32** @CmdEvalPortRange, align 8
  store i32* %151, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 4
  store i32* null, i32** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 1
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %156 = load i32*, i32** @CmdPrompt, align 8
  %157 = bitcast i32* %156 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %157, %struct.TYPE_19__** %155, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %159 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  store i32* %159, i32** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %161 = load i32*, i32** @CmdEvalTcpState, align 8
  store i32* %161, i32** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  store i32* null, i32** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %166 = load i32*, i32** @CmdPrompt, align 8
  %167 = bitcast i32* %166 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %167, %struct.TYPE_19__** %165, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %169 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  store i32* %169, i32** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %171 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %171, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %173 = bitcast %struct.TYPE_19__* %16 to i32*
  store i32* %173, i32** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i64 1
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %177 = load i32*, i32** @CmdPrompt, align 8
  %178 = bitcast i32* %177 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %178, %struct.TYPE_19__** %176, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %180 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0))
  store i32* %180, i32** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 3
  %182 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %182, i32** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  %184 = bitcast %struct.TYPE_19__* %17 to i32*
  store i32* %184, i32** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 1
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %188 = load i32*, i32** @CmdPrompt, align 8
  %189 = bitcast i32* %188 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %189, %struct.TYPE_19__** %187, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %191 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0))
  store i32* %191, i32** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %193 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %193, i32** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 4
  %195 = bitcast %struct.TYPE_19__* %18 to i32*
  store i32* %195, i32** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i64 1
  %197 = bitcast %struct.TYPE_17__* %196 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %197, i8 0, i64 40, i1 false)
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8** %198, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %205, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %208 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %209 = call i32 %206(%struct.TYPE_18__* %207, i32* %208)
  %210 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %210, i64* %5, align 8
  br label %374

211:                                              ; preds = %4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @GetCapsBool(i32 %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %219, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  %223 = call i32* @_E(i64 %222)
  %224 = call i32 %220(%struct.TYPE_18__* %221, i32* %223)
  %225 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %225, i64* %5, align 8
  br label %374

226:                                              ; preds = %211
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %228 = load i8*, i8** %7, align 8
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds [17 x %struct.TYPE_17__], [17 x %struct.TYPE_17__]* %19, i64 0, i64 0
  %231 = call i32* @ParseCommandList(%struct.TYPE_18__* %227, i8* %228, i32* %229, %struct.TYPE_17__* %230, i32 17)
  store i32* %231, i32** %10, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %235, i64* %5, align 8
  br label %374

236:                                              ; preds = %226
  %237 = call i32 @Zero(%struct.TYPE_15__* %13, i32 144)
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store %struct.TYPE_20__* %238, %struct.TYPE_20__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @StrCpy(i32 %240, i32 4, i32* %243)
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 26
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @GetParamUniStr(i32* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %250 = call i32 @UniStrCpy(i32 %247, i32 4, i32 %249)
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = call i8* @GetParamInt(i32* %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 25
  store i8* %254, i8** %256, align 8
  %257 = load i32*, i32** %10, align 8
  %258 = call i32* @GetParamStr(i32* %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %259 = call i64 @StrToPassOrDiscard(i32* %258)
  %260 = icmp ne i64 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 0, i32 1
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 24
  %267 = load i32, i32* %266, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = call i32* @GetParamStr(i32* %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %270 = call i32 @StrCpy(i32 %267, i32 4, i32* %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 23
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = call i32* @GetParamStr(i32* %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %276 = call i32 @StrCpy(i32 %273, i32 4, i32* %275)
  %277 = load i32*, i32** %10, align 8
  %278 = call i32* @GetParamStr(i32* %277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 22
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 21
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 20
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @ParseMacAddressAndMask(i32* %278, i32* %280, i32 %283, i32 %286)
  %288 = load i32*, i32** %10, align 8
  %289 = call i32* @GetParamStr(i32* %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 19
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 18
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 17
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ParseMacAddressAndMask(i32* %289, i32* %291, i32 %294, i32 %297)
  %299 = load i32*, i32** %10, align 8
  %300 = call i32* @GetParamStr(i32* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 16
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 15
  %305 = call i32 @ParseIpAndMask4(i32* %300, i32* %302, i32* %304)
  %306 = load i32*, i32** %10, align 8
  %307 = call i32* @GetParamStr(i32* %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 14
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 13
  %312 = call i32 @ParseIpAndMask4(i32* %307, i32* %309, i32* %311)
  %313 = load i32*, i32** %10, align 8
  %314 = call i32* @GetParamStr(i32* %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %315 = call i32 @StrToProtocol(i32* %314)
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 12
  store i32 %315, i32* %317, align 8
  %318 = load i32*, i32** %10, align 8
  %319 = call i32* @GetParamStr(i32* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 11
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 10
  %324 = call i32 @ParsePortRange(i32* %319, i32* %321, i32* %323)
  %325 = load i32*, i32** %10, align 8
  %326 = call i32* @GetParamStr(i32* %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 9
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 8
  %331 = call i32 @ParsePortRange(i32* %326, i32* %328, i32* %330)
  %332 = load i32*, i32** %10, align 8
  %333 = call i32* @GetParamStr(i32* %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 7
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 6
  %338 = call i32 @ParseTcpState(i32* %333, i32* %335, i32* %337)
  %339 = load i32*, i32** %10, align 8
  %340 = call i8* @GetParamInt(i32* %339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 5
  store i8* %340, i8** %342, align 8
  %343 = load i32*, i32** %10, align 8
  %344 = call i8* @GetParamInt(i32* %343, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 4
  store i8* %344, i8** %346, align 8
  %347 = load i32*, i32** %10, align 8
  %348 = call i8* @GetParamInt(i32* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32*, i32** %10, align 8
  %355 = call i32* @GetParamStr(i32* %354, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  %356 = call i32 @StrCpy(i32 %353, i32 4, i32* %355)
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i64 @ScAddAccess(i32 %359, %struct.TYPE_15__* %13)
  store i64 %360, i64* %12, align 8
  %361 = load i64, i64* %12, align 8
  %362 = load i64, i64* @ERR_NO_ERROR, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %236
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %366 = load i64, i64* %12, align 8
  %367 = call i32 @CmdPrintError(%struct.TYPE_18__* %365, i64 %366)
  %368 = load i32*, i32** %10, align 8
  %369 = call i32 @FreeParamValueList(i32* %368)
  %370 = load i64, i64* %12, align 8
  store i64 %370, i64* %5, align 8
  br label %374

371:                                              ; preds = %236
  %372 = load i32*, i32** %10, align 8
  %373 = call i32 @FreeParamValueList(i32* %372)
  store i64 0, i64* %5, align 8
  br label %374

374:                                              ; preds = %371, %364, %234, %217, %203
  %375 = load i64, i64* %5, align 8
  ret i64 %375
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @_UU(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetCapsBool(i32, i8*) #2

declare dso_local i32* @_E(i64) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i8* @GetParamInt(i32*, i8*) #2

declare dso_local i64 @StrToPassOrDiscard(i32*) #2

declare dso_local i32* @GetParamStr(i32*, i8*) #2

declare dso_local i32 @ParseMacAddressAndMask(i32*, i32*, i32, i32) #2

declare dso_local i32 @ParseIpAndMask4(i32*, i32*, i32*) #2

declare dso_local i32 @StrToProtocol(i32*) #2

declare dso_local i32 @ParsePortRange(i32*, i32*, i32*) #2

declare dso_local i32 @ParseTcpState(i32*, i32*, i32*) #2

declare dso_local i64 @ScAddAccess(i32, %struct.TYPE_15__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
