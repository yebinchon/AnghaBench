; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAdd6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessAdd6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i32, i64 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i32)* }
%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_23__*, i32*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Eval_PRIORITY\00", align 1
@__const.PsAccessAdd6.minmax = private unnamed_addr constant %struct.TYPE_23__ { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 1, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"[pass|discard]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd6_Prompt_TYPE\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"MEMO\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"CMD_AccessAdd6_Prompt_MEMO\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PRIORITY\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_PRIORITY\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"SRCUSERNAME\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"CMD_AccessAdd6_Prompt_SRCUSERNAME\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"DESTUSERNAME\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"CMD_AccessAdd6_Prompt_DESTUSERNAME\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SRCMAC\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Prompt_SRCMAC\00", align 1
@CmdEvalMacAddressAndMask = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"DESTMAC\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd6_Prompt_DESTMAC\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SRCIP\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"CMD_AccessAdd6_Prompt_SRCIP\00", align 1
@CmdEvalIpAndMask6 = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"DESTIP\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"CMD_AccessAdd6_Prompt_DESTIP\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_PROTOCOL\00", align 1
@CmdEvalProtocol = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"SRCPORT\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"CMD_AccessAdd6_Prompt_SRCPORT\00", align 1
@CmdEvalPortRange = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"DESTPORT\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_DESTPORT\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"TCPSTATE\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"CMD_AccessAdd6_Prompt_TCPSTATE\00", align 1
@CmdEvalTcpState = common dso_local global i32* null, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"b_support_ex_acl\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAccessAdd6(%struct.TYPE_22__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca %struct.TYPE_19__, align 4
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca [13 x %struct.TYPE_21__], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %11, align 8
  store i64 0, i64* %12, align 8
  %21 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_23__* @__const.PsAccessAdd6.minmax to i8*), i64 24, i1 false)
  %22 = getelementptr inbounds [13 x %struct.TYPE_21__], [13 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %25 = load i32, i32* @CmdPrompt, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %29 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 16
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %33 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 4
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i64 1
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %39 = load i32, i32* @CmdPrompt, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %38, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  %43 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %42, align 16
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 4
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 1
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %51 = load i32, i32* @CmdPrompt, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %50, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %55 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %54, align 16
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %59 = load i32*, i32** @CmdEvalMinMax, align 8
  %60 = ptrtoint i32* %59 to i32
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 4
  %62 = ptrtoint %struct.TYPE_23__* %17 to i32
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i64 1
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %66 = load i32, i32* @CmdPrompt, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %65, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %70 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %69, align 16
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 4
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i64 1
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %76, align 16
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %78 = load i32, i32* @CmdPrompt, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %77, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %82 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %81, align 16
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 3
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 4
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 1
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %88, align 16
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %90 = load i32, i32* @CmdPrompt, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %89, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %94 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %93, align 16
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %98 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  %99 = ptrtoint i32* %98 to i32
  store i32 %99, i32* %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i64 1
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %102, align 16
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %104 = load i32, i32* @CmdPrompt, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %103, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %108 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %107, align 16
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 3
  %112 = load i32*, i32** @CmdEvalMacAddressAndMask, align 8
  %113 = ptrtoint i32* %112 to i32
  store i32 %113, i32* %111, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i64 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %116, align 16
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %118 = load i32, i32* @CmdPrompt, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %120, %struct.TYPE_23__** %117, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %122 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %121, align 16
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %126 = load i32*, i32** @CmdEvalIpAndMask6, align 8
  %127 = ptrtoint i32* %126 to i32
  store i32 %127, i32* %125, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i64 1
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %130, align 16
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %132 = load i32, i32* @CmdPrompt, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %131, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %136 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i32*
  store i32* %138, i32** %135, align 16
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %140 = load i32*, i32** @CmdEvalIpAndMask6, align 8
  %141 = ptrtoint i32* %140 to i32
  store i32 %141, i32* %139, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 4
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i64 1
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %144, align 16
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %146 = load i32, i32* @CmdPrompt, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %148, %struct.TYPE_23__** %145, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %150 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %149, align 16
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  %154 = load i32*, i32** @CmdEvalProtocol, align 8
  %155 = ptrtoint i32* %154 to i32
  store i32 %155, i32* %153, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 4
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i64 1
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %158, align 16
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %160 = load i32, i32* @CmdPrompt, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %159, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %164 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %163, align 16
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 3
  %168 = load i32*, i32** @CmdEvalPortRange, align 8
  %169 = ptrtoint i32* %168 to i32
  store i32 %169, i32* %167, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i64 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %172, align 16
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %174 = load i32, i32* @CmdPrompt, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %173, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %178 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i32*
  store i32* %180, i32** %177, align 16
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %182 = load i32*, i32** @CmdEvalPortRange, align 8
  %183 = ptrtoint i32* %182 to i32
  store i32 %183, i32* %181, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 4
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i64 1
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %186, align 16
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %188 = load i32, i32* @CmdPrompt, align 4
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %190, %struct.TYPE_23__** %187, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %192 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %191, align 16
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %196 = load i32*, i32** @CmdEvalTcpState, align 8
  %197 = ptrtoint i32* %196 to i32
  store i32 %197, i32* %195, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 4
  store i32 0, i32* %198, align 4
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %205, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %208 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  %209 = call i32 %206(%struct.TYPE_22__* %207, i32 %208)
  %210 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %210, i64* %5, align 8
  br label %364

211:                                              ; preds = %4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @GetCapsBool(i32 %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %219, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %222 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  %223 = call i32 @_E(i64 %222)
  %224 = call i32 %220(%struct.TYPE_22__* %221, i32 %223)
  %225 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %225, i64* %5, align 8
  br label %364

226:                                              ; preds = %211
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %228 = load i8*, i8** %7, align 8
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds [13 x %struct.TYPE_21__], [13 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %231 = call i32* @ParseCommandList(%struct.TYPE_22__* %227, i8* %228, i32* %229, %struct.TYPE_21__* %230, i32 13)
  store i32* %231, i32** %10, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %235, i64* %5, align 8
  br label %364

236:                                              ; preds = %226
  %237 = call i32 @Zero(%struct.TYPE_19__* %13, i32 100)
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store %struct.TYPE_24__* %238, %struct.TYPE_24__** %14, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @StrCpy(i32 %242, i32 4, i32* %245)
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 23
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %10, align 8
  %251 = call i32 @GetParamUniStr(i32* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %252 = call i32 @UniStrCpy(i32 %249, i32 4, i32 %251)
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  %255 = load i32*, i32** %10, align 8
  %256 = call i32 @GetParamInt(i32* %255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 22
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %10, align 8
  %260 = call i32* @GetParamStr(i32* %259, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %261 = call i64 @StrToPassOrDiscard(i32* %260)
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 0, i32 1
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 21
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %10, align 8
  %271 = call i32* @GetParamStr(i32* %270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %272 = call i32 @StrCpy(i32 %269, i32 4, i32* %271)
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 20
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %10, align 8
  %277 = call i32* @GetParamStr(i32* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %278 = call i32 @StrCpy(i32 %275, i32 4, i32* %277)
  %279 = load i32*, i32** %10, align 8
  %280 = call i32* @GetParamStr(i32* %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 19
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 18
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 17
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ParseMacAddressAndMask(i32* %280, i32* %282, i32 %285, i32 %288)
  %290 = load i32*, i32** %10, align 8
  %291 = call i32* @GetParamStr(i32* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 16
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 15
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 14
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ParseMacAddressAndMask(i32* %291, i32* %293, i32 %296, i32 %299)
  %301 = call i32 @Zero(%struct.TYPE_19__* %15, i32 100)
  %302 = call i32 @Zero(%struct.TYPE_19__* %16, i32 100)
  %303 = load i32*, i32** %10, align 8
  %304 = call i32* @GetParamStr(i32* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %305 = call i32 @ParseIpAndMask6(i32* %304, %struct.TYPE_19__* %15, %struct.TYPE_19__* %16)
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 13
  %308 = call i32 @IPToIPv6Addr(i32* %307, %struct.TYPE_19__* %15)
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 12
  %311 = call i32 @IPToIPv6Addr(i32* %310, %struct.TYPE_19__* %16)
  %312 = load i32*, i32** %10, align 8
  %313 = call i32* @GetParamStr(i32* %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %314 = call i32 @ParseIpAndMask6(i32* %313, %struct.TYPE_19__* %15, %struct.TYPE_19__* %16)
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 11
  %317 = call i32 @IPToIPv6Addr(i32* %316, %struct.TYPE_19__* %15)
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 10
  %320 = call i32 @IPToIPv6Addr(i32* %319, %struct.TYPE_19__* %16)
  %321 = load i32*, i32** %10, align 8
  %322 = call i32* @GetParamStr(i32* %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %323 = call i32 @StrToProtocol(i32* %322)
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 9
  store i32 %323, i32* %325, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = call i32* @GetParamStr(i32* %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 7
  %332 = call i32 @ParsePortRange(i32* %327, i32* %329, i32* %331)
  %333 = load i32*, i32** %10, align 8
  %334 = call i32* @GetParamStr(i32* %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 6
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 5
  %339 = call i32 @ParsePortRange(i32* %334, i32* %336, i32* %338)
  %340 = load i32*, i32** %10, align 8
  %341 = call i32* @GetParamStr(i32* %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 3
  %346 = call i32 @ParseTcpState(i32* %341, i32* %343, i32* %345)
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i64 @ScAddAccess(i32 %349, %struct.TYPE_19__* %13)
  store i64 %350, i64* %12, align 8
  %351 = load i64, i64* %12, align 8
  %352 = load i64, i64* @ERR_NO_ERROR, align 8
  %353 = icmp ne i64 %351, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %236
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %356 = load i64, i64* %12, align 8
  %357 = call i32 @CmdPrintError(%struct.TYPE_22__* %355, i64 %356)
  %358 = load i32*, i32** %10, align 8
  %359 = call i32 @FreeParamValueList(i32* %358)
  %360 = load i64, i64* %12, align 8
  store i64 %360, i64* %5, align 8
  br label %364

361:                                              ; preds = %236
  %362 = load i32*, i32** %10, align 8
  %363 = call i32 @FreeParamValueList(i32* %362)
  store i64 0, i64* %5, align 8
  br label %364

364:                                              ; preds = %361, %354, %234, %217, %203
  %365 = load i64, i64* %5, align 8
  ret i64 %365
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @GetCapsBool(i32, i8*) #2

declare dso_local i32 @_E(i64) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i32 @GetParamInt(i32*, i8*) #2

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
