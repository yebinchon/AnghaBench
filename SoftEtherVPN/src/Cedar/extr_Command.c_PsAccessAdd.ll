; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, i64 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_18__*, i32*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Eval_PRIORITY\00", align 1
@__const.PsAccessAdd.minmax = private unnamed_addr constant %struct.TYPE_18__ { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 1, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"[pass|discard]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CMD_AccessAdd_Prompt_TYPE\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"MEMO\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CMD_AccessAdd_Prompt_MEMO\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PRIORITY\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_PRIORITY\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"SRCUSERNAME\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"CMD_AccessAdd_Prompt_SRCUSERNAME\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"DESTUSERNAME\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"CMD_AccessAdd_Prompt_DESTUSERNAME\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SRCMAC\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Prompt_SRCMAC\00", align 1
@CmdEvalMacAddressAndMask = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"DESTMAC\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd_Prompt_DESTMAC\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SRCIP\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd_Prompt_SRCIP\00", align 1
@CmdEvalIpAndMask4 = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"DESTIP\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd_Prompt_DESTIP\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_PROTOCOL\00", align 1
@CmdEvalProtocol = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"SRCPORT\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd_Prompt_SRCPORT\00", align 1
@CmdEvalPortRange = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"DESTPORT\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_DESTPORT\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"TCPSTATE\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd_Prompt_TCPSTATE\00", align 1
@CmdEvalTcpState = common dso_local global i32* null, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAccessAdd(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca [13 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = bitcast %struct.TYPE_18__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_18__* @__const.PsAccessAdd.minmax to i8*), i64 24, i1 false)
  %20 = getelementptr inbounds [13 x %struct.TYPE_16__], [13 x %struct.TYPE_16__]* %16, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 16
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %31 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i64 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 16
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i64 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %49 = load i32, i32* @CmdPrompt, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %48, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %53 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %52, align 16
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %57 = load i32*, i32** @CmdEvalMinMax, align 8
  %58 = ptrtoint i32* %57 to i32
  store i32 %58, i32* %56, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %60 = ptrtoint %struct.TYPE_18__* %15 to i32
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %64 = load i32, i32* @CmdPrompt, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %63, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %68 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %67, align 16
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %76 = load i32, i32* @CmdPrompt, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %75, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %80 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %79, align 16
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %86, align 16
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %88 = load i32, i32* @CmdPrompt, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %87, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %92 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %91, align 16
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %96 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  %97 = ptrtoint i32* %96 to i32
  store i32 %97, i32* %95, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %100, align 16
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %102 = load i32, i32* @CmdPrompt, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %101, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %106 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i32*
  store i32* %108, i32** %105, align 16
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %110 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  %111 = ptrtoint i32* %110 to i32
  store i32 %111, i32* %109, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 4
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %114, align 16
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %116 = load i32, i32* @CmdPrompt, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %115, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %120 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %119, align 16
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %124 = load i32*, i32** @CmdEvalIpAndMask4, align 8
  %125 = ptrtoint i32* %124 to i32
  store i32 %125, i32* %123, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 1
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %128, align 16
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %130 = load i32, i32* @CmdPrompt, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %129, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %134 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %133, align 16
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %138 = load i32*, i32** @CmdEvalIpAndMask4, align 8
  %139 = ptrtoint i32* %138 to i32
  store i32 %139, i32* %137, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %142, align 16
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %144 = load i32, i32* @CmdPrompt, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %146, %struct.TYPE_18__** %143, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %148 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** %147, align 16
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  %152 = load i32*, i32** @CmdEvalProtocol, align 8
  %153 = ptrtoint i32* %152 to i32
  store i32 %153, i32* %151, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 4
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 1
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %156, align 16
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %158 = load i32, i32* @CmdPrompt, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %160, %struct.TYPE_18__** %157, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %162 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %161, align 16
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 3
  %166 = load i32*, i32** @CmdEvalPortRange, align 8
  %167 = ptrtoint i32* %166 to i32
  store i32 %167, i32* %165, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 4
  store i32 0, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 1
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %170, align 16
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %172 = load i32, i32* @CmdPrompt, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %171, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %176 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %175, align 16
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 3
  %180 = load i32*, i32** @CmdEvalPortRange, align 8
  %181 = ptrtoint i32* %180 to i32
  store i32 %181, i32* %179, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 4
  store i32 0, i32* %182, align 4
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 1
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %184, align 16
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %186 = load i32, i32* @CmdPrompt, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %188, %struct.TYPE_18__** %185, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %190 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i32*
  store i32* %192, i32** %189, align 16
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  %194 = load i32*, i32** @CmdEvalTcpState, align 8
  %195 = ptrtoint i32* %194 to i32
  store i32 %195, i32* %193, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  store i32 0, i32* %196, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %203, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %206 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  %207 = call i32 %204(%struct.TYPE_17__* %205, i32 %206)
  %208 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %208, i64* %5, align 8
  br label %339

209:                                              ; preds = %4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds [13 x %struct.TYPE_16__], [13 x %struct.TYPE_16__]* %16, i64 0, i64 0
  %214 = call i32* @ParseCommandList(%struct.TYPE_17__* %210, i8* %211, i32* %212, %struct.TYPE_16__* %213, i32 13)
  store i32* %214, i32** %10, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %218, i64* %5, align 8
  br label %339

219:                                              ; preds = %209
  %220 = call i32 @Zero(%struct.TYPE_14__* %13, i32 96)
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store %struct.TYPE_19__* %221, %struct.TYPE_19__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @StrCpy(i32 %223, i32 4, i32* %226)
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 22
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = call i32 @GetParamUniStr(i32* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %233 = call i32 @UniStrCpy(i32 %230, i32 4, i32 %232)
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  store i32 1, i32* %235, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @GetParamInt(i32* %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 21
  store i32 %237, i32* %239, align 4
  %240 = load i32*, i32** %10, align 8
  %241 = call i32* @GetParamStr(i32* %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %242 = call i64 @StrToPassOrDiscard(i32* %241)
  %243 = icmp ne i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 0, i32 1
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 20
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %10, align 8
  %252 = call i32* @GetParamStr(i32* %251, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %253 = call i32 @StrCpy(i32 %250, i32 4, i32* %252)
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 19
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = call i32* @GetParamStr(i32* %257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %259 = call i32 @StrCpy(i32 %256, i32 4, i32* %258)
  %260 = load i32*, i32** %10, align 8
  %261 = call i32* @GetParamStr(i32* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 18
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 17
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 16
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @ParseMacAddressAndMask(i32* %261, i32* %263, i32 %266, i32 %269)
  %271 = load i32*, i32** %10, align 8
  %272 = call i32* @GetParamStr(i32* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 15
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 14
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 13
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ParseMacAddressAndMask(i32* %272, i32* %274, i32 %277, i32 %280)
  %282 = load i32*, i32** %10, align 8
  %283 = call i32* @GetParamStr(i32* %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 12
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 11
  %288 = call i32 @ParseIpAndMask4(i32* %283, i32* %285, i32* %287)
  %289 = load i32*, i32** %10, align 8
  %290 = call i32* @GetParamStr(i32* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 10
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 9
  %295 = call i32 @ParseIpAndMask4(i32* %290, i32* %292, i32* %294)
  %296 = load i32*, i32** %10, align 8
  %297 = call i32* @GetParamStr(i32* %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %298 = call i32 @StrToProtocol(i32* %297)
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 8
  store i32 %298, i32* %300, align 4
  %301 = load i32*, i32** %10, align 8
  %302 = call i32* @GetParamStr(i32* %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 7
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 6
  %307 = call i32 @ParsePortRange(i32* %302, i32* %304, i32* %306)
  %308 = load i32*, i32** %10, align 8
  %309 = call i32* @GetParamStr(i32* %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 4
  %314 = call i32 @ParsePortRange(i32* %309, i32* %311, i32* %313)
  %315 = load i32*, i32** %10, align 8
  %316 = call i32* @GetParamStr(i32* %315, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 3
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 2
  %321 = call i32 @ParseTcpState(i32* %316, i32* %318, i32* %320)
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i64 @ScAddAccess(i32 %324, %struct.TYPE_14__* %13)
  store i64 %325, i64* %12, align 8
  %326 = load i64, i64* %12, align 8
  %327 = load i64, i64* @ERR_NO_ERROR, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %219
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %331 = load i64, i64* %12, align 8
  %332 = call i32 @CmdPrintError(%struct.TYPE_17__* %330, i64 %331)
  %333 = load i32*, i32** %10, align 8
  %334 = call i32 @FreeParamValueList(i32* %333)
  %335 = load i64, i64* %12, align 8
  store i64 %335, i64* %5, align 8
  br label %339

336:                                              ; preds = %219
  %337 = load i32*, i32** %10, align 8
  %338 = call i32 @FreeParamValueList(i32* %337)
  store i64 0, i64* %5, align 8
  br label %339

339:                                              ; preds = %336, %329, %217, %201
  %340 = load i64, i64* %5, align 8
  ret i64 %340
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i32 @GetParamInt(i32*, i8*) #2

declare dso_local i64 @StrToPassOrDiscard(i32*) #2

declare dso_local i32* @GetParamStr(i32*, i8*) #2

declare dso_local i32 @ParseMacAddressAndMask(i32*, i32*, i32, i32) #2

declare dso_local i32 @ParseIpAndMask4(i32*, i32*, i32*) #2

declare dso_local i32 @StrToProtocol(i32*) #2

declare dso_local i32 @ParsePortRange(i32*, i32*, i32*) #2

declare dso_local i32 @ParseTcpState(i32*, i32*, i32*) #2

declare dso_local i64 @ScAddAccess(i32, %struct.TYPE_14__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
