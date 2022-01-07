; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_18__*, i32*, i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"CMD_NatSet_Eval_UDP\00", align 1
@NAT_UDP_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NAT_UDP_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CMD_DhcpSet_Prompt_START\00", align 1
@CmdEvalIp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CMD_DhcpSet_Prompt_END\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"CMD_DhcpSet_Prompt_MASK\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"EXPIRE\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"CMD_DhcpSet_Prompt_EXPIRE\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"GW\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"CMD_DhcpSet_Prompt_GW\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"CMD_DhcpSet_Prompt_DNS\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DNS2\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"CMD_DhcpSet_Prompt_DNS2\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"CMD_DhcpSet_Prompt_DOMAIN\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"LOG\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"CMD_NatSet_Prompt_LOG\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"PUSHROUTE\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"CMD_DhcpSet_PUSHROUTE\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"b_suppport_push_route\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"b_suppport_push_route_config\00", align 1
@ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsDhcpSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca [10 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %20 = load i32, i32* @NAT_UDP_MIN_TIMEOUT, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %23 = load i32, i32* @NAT_UDP_MAX_TIMEOUT, align 4
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds [10 x %struct.TYPE_16__], [10 x %struct.TYPE_16__]* %15, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %28 = load i32*, i32** @CmdPrompt, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %31 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %35 = load i32*, i32** @CmdEvalIp, align 8
  %36 = ptrtoint i32* %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 1
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %41 = load i32*, i32** @CmdPrompt, align 8
  %42 = bitcast i32* %41 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %40, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %44 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %48 = load i32*, i32** @CmdEvalIp, align 8
  %49 = ptrtoint i32* %48 to i32
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %54 = load i32*, i32** @CmdPrompt, align 8
  %55 = bitcast i32* %54 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %53, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %57 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %56, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %61 = load i32*, i32** @CmdEvalIp, align 8
  %62 = ptrtoint i32* %61 to i32
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %67 = load i32*, i32** @CmdPrompt, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %70 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %69, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %74 = load i32*, i32** @CmdEvalMinMax, align 8
  %75 = ptrtoint i32* %74 to i32
  store i32 %75, i32* %73, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %77 = bitcast %struct.TYPE_18__* %14 to i32*
  store i32* %77, i32** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 1
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %81 = load i32*, i32** @CmdPrompt, align 8
  %82 = bitcast i32* %81 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %80, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %84 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %83, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %88 = load i32*, i32** @CmdEvalIp, align 8
  %89 = ptrtoint i32* %88 to i32
  store i32 %89, i32* %87, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 4
  store i32* null, i32** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i64 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %94 = load i32*, i32** @CmdPrompt, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %93, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %97 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %96, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %101 = load i32*, i32** @CmdEvalIp, align 8
  %102 = ptrtoint i32* %101 to i32
  store i32 %102, i32* %100, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  store i32* null, i32** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 1
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %107 = load i32*, i32** @CmdPrompt, align 8
  %108 = bitcast i32* %107 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %106, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %110 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %109, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %114 = load i32*, i32** @CmdEvalIp, align 8
  %115 = ptrtoint i32* %114 to i32
  store i32 %115, i32* %113, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  store i32* null, i32** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %120 = load i32*, i32** @CmdPrompt, align 8
  %121 = bitcast i32* %120 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %121, %struct.TYPE_18__** %119, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %123 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %122, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  store i32* null, i32** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %131 = load i32*, i32** @CmdPrompt, align 8
  %132 = bitcast i32* %131 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %130, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %134 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %133, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  %138 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %139 = ptrtoint i32* %138 to i32
  store i32 %139, i32* %137, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  store i32* null, i32** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %145 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %144, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  store i32 0, i32* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 4
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %160 = call i32 %157(%struct.TYPE_17__* %158, i32 %159)
  %161 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %161, i64* %5, align 8
  br label %282

162:                                              ; preds = %4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds [10 x %struct.TYPE_16__], [10 x %struct.TYPE_16__]* %15, i64 0, i64 0
  %167 = call i32* @ParseCommandList(%struct.TYPE_17__* %163, i8* %164, i32* %165, %struct.TYPE_16__* %166, i32 10)
  store i32* %167, i32** %10, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %171, i64* %5, align 8
  br label %282

172:                                              ; preds = %162
  %173 = call i32 @Zero(%struct.TYPE_14__* %13, i32 48)
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @StrCpy(i32 %175, i32 4, i32* %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @ScGetSecureNATOption(i32 %182, %struct.TYPE_14__* %13)
  store i64 %183, i64* %12, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @ERR_NO_ERROR, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %172
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @CmdPrintError(%struct.TYPE_17__* %188, i64 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 @FreeParamValueList(i32* %191)
  %193 = load i64, i64* %12, align 8
  store i64 %193, i64* %5, align 8
  br label %282

194:                                              ; preds = %172
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 11
  %196 = load i32*, i32** %10, align 8
  %197 = call i32* @GetParamStr(i32* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %198 = call i32 @StrToIP(i32* %195, i32* %197)
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 10
  %200 = load i32*, i32** %10, align 8
  %201 = call i32* @GetParamStr(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %202 = call i32 @StrToIP(i32* %199, i32* %201)
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 9
  %204 = load i32*, i32** %10, align 8
  %205 = call i32* @GetParamStr(i32* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %206 = call i32 @StrToIP(i32* %203, i32* %205)
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @GetParamInt(i32* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 8
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  %211 = load i32*, i32** %10, align 8
  %212 = call i32* @GetParamStr(i32* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %213 = call i32 @StrToIP(i32* %210, i32* %212)
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  %215 = load i32*, i32** %10, align 8
  %216 = call i32* @GetParamStr(i32* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %217 = call i32 @StrToIP(i32* %214, i32* %216)
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  %219 = load i32*, i32** %10, align 8
  %220 = call i32* @GetParamStr(i32* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %221 = call i32 @StrToIP(i32* %218, i32* %220)
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %10, align 8
  %225 = call i32* @GetParamStr(i32* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %226 = call i32 @StrCpy(i32 %223, i32 4, i32* %225)
  %227 = load i32*, i32** %10, align 8
  %228 = call i32 @GetParamYes(i32* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store i32 %228, i32* %229, align 4
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %10, align 8
  %233 = call i32* @GetParamStr(i32* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %234 = call i32 @StrCpy(i32 %231, i32 4, i32* %233)
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 1, i32* %235, align 4
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @StrCpy(i32 %237, i32 4, i32* %240)
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @ScSetSecureNATOption(i32 %244, %struct.TYPE_14__* %13)
  store i64 %245, i64* %12, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* @ERR_NO_ERROR, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %194
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %251 = load i64, i64* %12, align 8
  %252 = call i32 @CmdPrintError(%struct.TYPE_17__* %250, i64 %251)
  %253 = load i32*, i32** %10, align 8
  %254 = call i32 @FreeParamValueList(i32* %253)
  %255 = load i64, i64* %12, align 8
  store i64 %255, i64* %5, align 8
  br label %282

256:                                              ; preds = %194
  %257 = load i32*, i32** %10, align 8
  %258 = call i32* @GetParamStr(i32* %257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %259 = call i32 @IsEmptyStr(i32* %258)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @GetCapsBool(i32 %264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %261
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @GetCapsBool(i32 %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %275 = load i64, i64* @ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE, align 8
  %276 = call i32 @CmdPrintError(%struct.TYPE_17__* %274, i64 %275)
  br label %277

277:                                              ; preds = %273, %267, %261
  br label %278

278:                                              ; preds = %277, %256
  br label %279

279:                                              ; preds = %278
  %280 = load i32*, i32** %10, align 8
  %281 = call i32 @FreeParamValueList(i32* %280)
  store i64 0, i64* %5, align 8
  br label %282

282:                                              ; preds = %279, %249, %187, %170, %154
  %283 = load i64, i64* %5, align 8
  ret i64 %283
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATOption(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @StrToIP(i32*, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @GetParamYes(i32*, i8*) #1

declare dso_local i64 @ScSetSecureNATOption(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @IsEmptyStr(i32*) #1

declare dso_local i32 @GetCapsBool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
