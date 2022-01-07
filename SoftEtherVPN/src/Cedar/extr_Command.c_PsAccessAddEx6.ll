; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAddEx6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAddEx6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i32, i64 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i32*)* }
%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_23__*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Eval_PRIORITY\00", align 1
@__const.PsAccessAddEx6.minmax = private unnamed_addr constant %struct.TYPE_23__ { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 1, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"CMD_AccessAddEx6_Eval_DELAY\00", align 1
@HUB_ACCESSLIST_DELAY_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"CMD_AccessAddEx6_Eval_JITTER\00", align 1
@HUB_ACCESSLIST_JITTER_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"CMD_AccessAddEx6_Eval_LOSS\00", align 1
@HUB_ACCESSLIST_LOSS_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"[pass|discard]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd6_Prompt_TYPE\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"MEMO\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd6_Prompt_MEMO\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"PRIORITY\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_PRIORITY\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"SRCUSERNAME\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"CMD_AccessAdd6_Prompt_SRCUSERNAME\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"DESTUSERNAME\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"CMD_AccessAdd6_Prompt_DESTUSERNAME\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SRCMAC\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Prompt_SRCMAC\00", align 1
@CmdEvalMacAddressAndMask = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"DESTMAC\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd6_Prompt_DESTMAC\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SRCIP\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd6_Prompt_SRCIP\00", align 1
@CmdEvalIpAndMask6 = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"DESTIP\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Prompt_DESTIP\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_PROTOCOL\00", align 1
@CmdEvalProtocol = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"SRCPORT\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd6_Prompt_SRCPORT\00", align 1
@CmdEvalPortRange = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"DESTPORT\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_DESTPORT\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"TCPSTATE\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_TCPSTATE\00", align 1
@CmdEvalTcpState = common dso_local global i32* null, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"DELAY\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"CMD_AccessAddEx6_Prompt_DELAY\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"JITTER\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"CMD_AccessAddEx6_Prompt_JITTER\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LOSS\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"CMD_AccessAddEx6_Prompt_LOSS\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"REDIRECTURL\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"b_support_ex_acl\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAccessAddEx6(%struct.TYPE_22__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca %struct.TYPE_23__, align 8
  %21 = alloca [17 x %struct.TYPE_21__], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %11, align 8
  store i64 0, i64* %12, align 8
  %24 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_23__* @__const.PsAccessAddEx6.minmax to i8*), i64 24, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %28 = load i64, i64* @HUB_ACCESSLIST_DELAY_MAX, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %32 = load i64, i64* @HUB_ACCESSLIST_JITTER_MAX, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %36 = load i64, i64* @HUB_ACCESSLIST_LOSS_MAX, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds [17 x %struct.TYPE_21__], [17 x %struct.TYPE_21__]* %21, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %40 = load i32*, i32** @CmdPrompt, align 8
  %41 = bitcast i32* %40 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %43 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32* %43, i32** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 3
  %45 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i64 1
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %50 = load i32*, i32** @CmdPrompt, align 8
  %51 = bitcast i32* %50 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %53 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32* %53, i32** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 1
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %59 = load i32*, i32** @CmdPrompt, align 8
  %60 = bitcast i32* %59 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %58, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %62 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 3
  %64 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 4
  %66 = bitcast %struct.TYPE_23__* %17 to i32*
  store i32* %66, i32** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i64 1
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %70 = load i32*, i32** @CmdPrompt, align 8
  %71 = bitcast i32* %70 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %69, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %73 = call i32* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32* %73, i32** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i64 1
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %79 = load i32*, i32** @CmdPrompt, align 8
  %80 = bitcast i32* %79 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %78, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %82 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  store i32* %82, i32** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 1
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %88 = load i32*, i32** @CmdPrompt, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %87, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %91 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  store i32* %91, i32** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 3
  %93 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  store i32* %93, i32** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 4
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %98 = load i32*, i32** @CmdPrompt, align 8
  %99 = bitcast i32* %98 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %101 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 3
  %103 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  store i32* %103, i32** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  store i32* null, i32** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i64 1
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %108 = load i32*, i32** @CmdPrompt, align 8
  %109 = bitcast i32* %108 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %109, %struct.TYPE_23__** %107, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %111 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  store i32* %111, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %113 = load i32*, i32** @CmdEvalIpAndMask6, align 8
  store i32* %113, i32** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  store i32* null, i32** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i64 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %118 = load i32*, i32** @CmdPrompt, align 8
  %119 = bitcast i32* %118 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %117, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %121 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  store i32* %121, i32** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %123 = load i32*, i32** @CmdEvalIpAndMask6, align 8
  store i32* %123, i32** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  store i32* null, i32** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i64 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %128 = load i32*, i32** @CmdPrompt, align 8
  %129 = bitcast i32* %128 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %127, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %131 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  store i32* %131, i32** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %133 = load i32*, i32** @CmdEvalProtocol, align 8
  store i32* %133, i32** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 4
  store i32* null, i32** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 1
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %138 = load i32*, i32** @CmdPrompt, align 8
  %139 = bitcast i32* %138 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %137, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %141 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  store i32* %141, i32** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 3
  %143 = load i32*, i32** @CmdEvalPortRange, align 8
  store i32* %143, i32** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 4
  store i32* null, i32** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 1
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %148 = load i32*, i32** @CmdPrompt, align 8
  %149 = bitcast i32* %148 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %147, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  %151 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  store i32* %151, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 3
  %153 = load i32*, i32** @CmdEvalPortRange, align 8
  store i32* %153, i32** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 4
  store i32* null, i32** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i64 1
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %158 = load i32*, i32** @CmdPrompt, align 8
  %159 = bitcast i32* %158 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %157, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 2
  %161 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  store i32* %161, i32** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 3
  %163 = load i32*, i32** @CmdEvalTcpState, align 8
  store i32* %163, i32** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  store i32* null, i32** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i64 1
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %168 = load i32*, i32** @CmdPrompt, align 8
  %169 = bitcast i32* %168 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %169, %struct.TYPE_23__** %167, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %171 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  store i32* %171, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %173 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %173, i32** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 4
  %175 = bitcast %struct.TYPE_23__* %18 to i32*
  store i32* %175, i32** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i64 1
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %179 = load i32*, i32** @CmdPrompt, align 8
  %180 = bitcast i32* %179 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %180, %struct.TYPE_23__** %178, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %182 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0))
  store i32* %182, i32** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 3
  %184 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %184, i32** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 4
  %186 = bitcast %struct.TYPE_23__* %19 to i32*
  store i32* %186, i32** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i64 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %190 = load i32*, i32** @CmdPrompt, align 8
  %191 = bitcast i32* %190 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %191, %struct.TYPE_23__** %189, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %193 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0))
  store i32* %193, i32** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 3
  %195 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %195, i32** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 4
  %197 = bitcast %struct.TYPE_23__* %20 to i32*
  store i32* %197, i32** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i64 1
  %199 = bitcast %struct.TYPE_21__* %198 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %199, i8 0, i64 40, i1 false)
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8** %200, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %207, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %210 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %211 = call i32 %208(%struct.TYPE_22__* %209, i32* %210)
  %212 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %212, i64* %5, align 8
  br label %384

213:                                              ; preds = %4
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @GetCapsBool(i32 %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %224 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  %225 = call i32* @_E(i64 %224)
  %226 = call i32 %222(%struct.TYPE_22__* %223, i32* %225)
  %227 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %227, i64* %5, align 8
  br label %384

228:                                              ; preds = %213
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = load i32*, i32** %8, align 8
  %232 = getelementptr inbounds [17 x %struct.TYPE_21__], [17 x %struct.TYPE_21__]* %21, i64 0, i64 0
  %233 = call i32* @ParseCommandList(%struct.TYPE_22__* %229, i8* %230, i32* %231, %struct.TYPE_21__* %232, i32 17)
  store i32* %233, i32** %10, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %237, i64* %5, align 8
  br label %384

238:                                              ; preds = %228
  %239 = call i32 @Zero(%struct.TYPE_19__* %13, i32 144)
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store %struct.TYPE_24__* %240, %struct.TYPE_24__** %14, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @StrCpy(i32 %244, i32 4, i32* %247)
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 27
  %251 = load i32, i32* %250, align 8
  %252 = load i32*, i32** %10, align 8
  %253 = call i32 @GetParamUniStr(i32* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %254 = call i32 @UniStrCpy(i32 %251, i32 4, i32 %253)
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 1
  store i32 1, i32* %256, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = call i8* @GetParamInt(i32* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 26
  store i8* %258, i8** %260, align 8
  %261 = load i32*, i32** %10, align 8
  %262 = call i32* @GetParamStr(i32* %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %263 = call i64 @StrToPassOrDiscard(i32* %262)
  %264 = icmp ne i64 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i32 0, i32 1
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 25
  %271 = load i32, i32* %270, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = call i32* @GetParamStr(i32* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %274 = call i32 @StrCpy(i32 %271, i32 4, i32* %273)
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 24
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %10, align 8
  %279 = call i32* @GetParamStr(i32* %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %280 = call i32 @StrCpy(i32 %277, i32 4, i32* %279)
  %281 = load i32*, i32** %10, align 8
  %282 = call i32* @GetParamStr(i32* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 23
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 22
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 21
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @ParseMacAddressAndMask(i32* %282, i32* %284, i32 %287, i32 %290)
  %292 = load i32*, i32** %10, align 8
  %293 = call i32* @GetParamStr(i32* %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 20
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 19
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 18
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @ParseMacAddressAndMask(i32* %293, i32* %295, i32 %298, i32 %301)
  %303 = call i32 @Zero(%struct.TYPE_19__* %15, i32 144)
  %304 = call i32 @Zero(%struct.TYPE_19__* %16, i32 144)
  %305 = load i32*, i32** %10, align 8
  %306 = call i32* @GetParamStr(i32* %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %307 = call i32 @ParseIpAndMask6(i32* %306, %struct.TYPE_19__* %15, %struct.TYPE_19__* %16)
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 17
  %310 = call i32 @IPToIPv6Addr(i32* %309, %struct.TYPE_19__* %15)
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 16
  %313 = call i32 @IPToIPv6Addr(i32* %312, %struct.TYPE_19__* %16)
  %314 = load i32*, i32** %10, align 8
  %315 = call i32* @GetParamStr(i32* %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %316 = call i32 @ParseIpAndMask6(i32* %315, %struct.TYPE_19__* %15, %struct.TYPE_19__* %16)
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 15
  %319 = call i32 @IPToIPv6Addr(i32* %318, %struct.TYPE_19__* %15)
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 14
  %322 = call i32 @IPToIPv6Addr(i32* %321, %struct.TYPE_19__* %16)
  %323 = load i32*, i32** %10, align 8
  %324 = call i32* @GetParamStr(i32* %323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %325 = call i32 @StrToProtocol(i32* %324)
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 13
  store i32 %325, i32* %327, align 8
  %328 = load i32*, i32** %10, align 8
  %329 = call i32* @GetParamStr(i32* %328, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 12
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 11
  %334 = call i32 @ParsePortRange(i32* %329, i32* %331, i32* %333)
  %335 = load i32*, i32** %10, align 8
  %336 = call i32* @GetParamStr(i32* %335, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 10
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 9
  %341 = call i32 @ParsePortRange(i32* %336, i32* %338, i32* %340)
  %342 = load i32*, i32** %10, align 8
  %343 = call i32* @GetParamStr(i32* %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 8
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 7
  %348 = call i32 @ParseTcpState(i32* %343, i32* %345, i32* %347)
  %349 = load i32*, i32** %10, align 8
  %350 = call i8* @GetParamInt(i32* %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 6
  store i8* %350, i8** %352, align 8
  %353 = load i32*, i32** %10, align 8
  %354 = call i8* @GetParamInt(i32* %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 5
  store i8* %354, i8** %356, align 8
  %357 = load i32*, i32** %10, align 8
  %358 = call i8* @GetParamInt(i32* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 4
  store i8* %358, i8** %360, align 8
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %10, align 8
  %365 = call i32* @GetParamStr(i32* %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  %366 = call i32 @StrCpy(i32 %363, i32 4, i32* %365)
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = call i64 @ScAddAccess(i32 %369, %struct.TYPE_19__* %13)
  store i64 %370, i64* %12, align 8
  %371 = load i64, i64* %12, align 8
  %372 = load i64, i64* @ERR_NO_ERROR, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %381

374:                                              ; preds = %238
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %376 = load i64, i64* %12, align 8
  %377 = call i32 @CmdPrintError(%struct.TYPE_22__* %375, i64 %376)
  %378 = load i32*, i32** %10, align 8
  %379 = call i32 @FreeParamValueList(i32* %378)
  %380 = load i64, i64* %12, align 8
  store i64 %380, i64* %5, align 8
  br label %384

381:                                              ; preds = %238
  %382 = load i32*, i32** %10, align 8
  %383 = call i32 @FreeParamValueList(i32* %382)
  store i64 0, i64* %5, align 8
  br label %384

384:                                              ; preds = %381, %374, %236, %219, %205
  %385 = load i64, i64* %5, align 8
  ret i64 %385
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @_UU(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetCapsBool(i32, i8*) #2

declare dso_local i32* @_E(i64) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i8* @GetParamInt(i32*, i8*) #2

declare dso_local i64 @StrToPassOrDiscard(i32*) #2

declare dso_local i32* @GetParamStr(i32*, i8*) #2

declare dso_local i32 @ParseMacAddressAndMask(i32*, i32*, i32, i32) #2

declare dso_local i32 @ParseIpAndMask6(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*) #2

declare dso_local i32 @IPToIPv6Addr(i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @StrToProtocol(i32*) #2

declare dso_local i32 @ParsePortRange(i32*, i32*, i32*) #2

declare dso_local i32 @ParseTcpState(i32*, i32*, i32*) #2

declare dso_local i64 @ScAddAccess(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_22__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
