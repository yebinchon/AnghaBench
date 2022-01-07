; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountDetailSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountDetailSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_16__*, i32*, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CMD_CascadeDetailSet_Eval_MaxTcp\00", align 1
@__const.PcAccountDetailSet.mm_maxtcp = private unnamed_addr constant %struct.TYPE_16__ { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 1, i32 32 }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_CascadeDetailSet_Eval_Interval\00", align 1
@__const.PcAccountDetailSet.mm_interval = private unnamed_addr constant %struct.TYPE_16__ { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 -1 }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"MAXTCP\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"CMD_AccountDetailSet_Prompt_MaxTcp\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"INTERVAL\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"CMD_AccountDetailSet_Prompt_Interval\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TTL\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"CMD_AccountDetailSet_Prompt_TTL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HALF\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CMD_AccountDetailSet_Prompt_HALF\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"BRIDGE\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"CMD_AccountDetailSet_Prompt_BRIDGE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"MONITOR\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"CMD_AccountDetailSet_Prompt_MONITOR\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"NOTRACK\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"CMD_AccountDetailSet_Prompt_NOTRACK\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"NOQOS\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"CMD_AccountDetailSet_Prompt_NOQOS\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DISABLEUDP\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"CMD_AccountDetailSet_Prompt_DISABLEUDP\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountDetailSet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca [10 x %struct.TYPE_15__], align 16
  %17 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %12, align 8
  %21 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_16__* @__const.PcAccountDetailSet.mm_maxtcp to i8*), i64 16, i1 false)
  %22 = bitcast %struct.TYPE_16__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_16__* @__const.PcAccountDetailSet.mm_interval to i8*), i64 16, i1 false)
  %23 = getelementptr inbounds [10 x %struct.TYPE_15__], [10 x %struct.TYPE_15__]* %16, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %29, align 16
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %34 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %35 = ptrtoint i32* %34 to i32
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i64 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %40 = load i32, i32* @CmdPrompt, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %39, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %44 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 16
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %48 = load i32*, i32** @CmdEvalMinMax, align 8
  %49 = ptrtoint i32* %48 to i32
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %51 = ptrtoint %struct.TYPE_16__* %14 to i32
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %55 = load i32, i32* @CmdPrompt, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %54, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %59 = call i32 @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %58, align 16
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %63 = load i32*, i32** @CmdEvalMinMax, align 8
  %64 = ptrtoint i32* %63 to i32
  store i32 %64, i32* %62, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %66 = ptrtoint %struct.TYPE_16__* %15 to i32
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %68, align 16
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %70 = load i32, i32* @CmdPrompt, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %69, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %74 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %73, align 16
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %80, align 16
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %82 = load i32, i32* @CmdPrompt, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %81, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %86 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %85, align 16
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  store i32 0, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %92, align 16
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %94 = load i32, i32* @CmdPrompt, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %93, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %98 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %97, align 16
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %104, align 16
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %106 = load i32, i32* @CmdPrompt, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %105, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %110 = call i32 @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %109, align 16
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  store i32 0, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %116, align 16
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %118 = load i32, i32* @CmdPrompt, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** %117, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %122 = call i32 @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %121, align 16
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %128, align 16
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %130 = load i32, i32* @CmdPrompt, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %129, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %134 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %133, align 16
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  store i32 0, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %140, align 16
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %142 = load i32, i32* @CmdPrompt, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %141, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %146 = call i32 @_UU(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** %145, align 16
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 4
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds [10 x %struct.TYPE_15__], [10 x %struct.TYPE_15__]* %16, i64 0, i64 0
  %155 = call i32* @ParseCommandList(i32* %151, i8* %152, i32* %153, %struct.TYPE_15__* %154, i32 10)
  store i32* %155, i32** %10, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %4
  %159 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %159, i64* %5, align 8
  br label %253

160:                                              ; preds = %4
  %161 = call i32 @Zero(%struct.TYPE_13__* %13, i32 32)
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @GetParamUniStr(i32* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %166 = call i32 @UniStrCpy(i32 %163, i32 4, i32 %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @CcGetAccount(i32 %169, %struct.TYPE_13__* %13)
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* @ERR_NO_ERROR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %240

174:                                              ; preds = %160
  %175 = load i32*, i32** %10, align 8
  %176 = call i8* @GetParamInt(i32* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 8
  store i8* %176, i8** %179, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = call i8* @GetParamInt(i32* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 7
  store i8* %181, i8** %184, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = call i8* @GetParamInt(i32* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 6
  store i8* %186, i8** %189, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = call i8* @GetParamYes(i32* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 5
  store i8* %191, i8** %194, align 8
  %195 = load i32*, i32** %10, align 8
  %196 = call i8* @GetParamYes(i32* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 4
  store i8* %196, i8** %199, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = call i8* @GetParamYes(i32* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 3
  store i8* %201, i8** %204, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = call i8* @GetParamYes(i32* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  store i8* %206, i8** %209, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = call i8* @GetParamYes(i32* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  store i8* %211, i8** %214, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = call i8* @GetParamYes(i32* %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  store i8* %216, i8** %219, align 8
  %220 = call i32 @Zero(%struct.TYPE_13__* %17, i32 32)
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store i32 %222, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  store i32 %225, i32* %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store %struct.TYPE_12__* %228, %struct.TYPE_12__** %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 %234, i32* %235, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @CcSetAccount(i32 %238, %struct.TYPE_13__* %17)
  store i64 %239, i64* %12, align 8
  br label %240

240:                                              ; preds = %174, %160
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* @ERR_NO_ERROR, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i32*, i32** %6, align 8
  %246 = load i64, i64* %12, align 8
  %247 = call i32 @CmdPrintError(i32* %245, i64 %246)
  br label %248

248:                                              ; preds = %244, %240
  %249 = call i32 @CiFreeClientGetAccount(%struct.TYPE_13__* %13)
  %250 = load i32*, i32** %10, align 8
  %251 = call i32 @FreeParamValueList(i32* %250)
  %252 = load i64, i64* %12, align 8
  store i64 %252, i64* %5, align 8
  br label %253

253:                                              ; preds = %248, %158
  %254 = load i64, i64* %5, align 8
  ret i64 %254
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_13__*) #2

declare dso_local i8* @GetParamInt(i32*, i8*) #2

declare dso_local i8* @GetParamYes(i32*, i8*) #2

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_13__*) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
