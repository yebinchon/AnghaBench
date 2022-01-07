; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i8*)* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_19__*, i32*, i64, i32 }
%struct.TYPE_24__ = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32*, i32 }
%struct.TYPE_22__ = type { i8*, i8*, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"CMD_ACCOUNT_COLUMN_NAME\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"CMD_ACCOUNT_COLUMN_HOSTNAME\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CMD_ACCOUNT_COLUMN_PORT\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CMD_ACCOUNT_COLUMN_HUBNAME\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_TYPE\00", align 1
@PROXY_DIRECT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_HOSTNAME\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_PORT\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_USERNAME\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"CMD_ACCOUNT_COLUMN_SERVER_CERT_USE\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"CMD_MSG_ENABLE\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"CMD_MSG_DISABLE\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"CMD_ACCOUNT_COLUMN_SERVER_CERT_NAME\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"CMD_ACCOUNT_COLUMN_DEVICE_NAME\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"CMD_ACCOUNT_COLUMN_AUTH_TYPE\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"CMD_ACCOUNT_COLUMN_AUTH_USERNAME\00", align 1
@CLIENT_AUTHTYPE_CERT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"CMD_ACCOUNT_COLUMN_AUTH_CERT_NAME\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"CMD_ACCOUNT_COLUMN_NUMTCP\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"CMD_ACCOUNT_COLUMN_TCP_INTERVAL\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"CMD_MSG_INFINITE\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"CMD_ACCOUNT_COLUMN_TCP_TTL\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"CMD_ACCOUNT_COLUMN_TCP_HALF\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"CMD_ACCOUNT_COLUMN_ENCRYPT\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"CMD_ACCOUNT_COLUMN_COMPRESS\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"CMD_ACCOUNT_COLUMN_BRIDGE_ROUTER\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"CMD_ACCOUNT_COLUMN_MONITOR\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"CMD_ACCOUNT_COLUMN_NO_TRACKING\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"CMD_ACCOUNT_COLUMN_QOS_DISABLE\00", align 1
@.str.30 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [22 x i8] c"CMD_CascadeGet_Policy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeGet(%struct.TYPE_23__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca [1 x %struct.TYPE_22__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds [1 x %struct.TYPE_22__], [1 x %struct.TYPE_22__]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %27 = call i8* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %26, align 16
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  %30 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_23__*, i8*)*, i32 (%struct.TYPE_23__*, i8*)** %38, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_23__* %40, i8* %41)
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %395

44:                                               ; preds = %4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds [1 x %struct.TYPE_22__], [1 x %struct.TYPE_22__]* %14, i64 0, i64 0
  %49 = call i32* @ParseCommandList(%struct.TYPE_23__* %45, i8* %46, i8* %47, %struct.TYPE_22__* %48, i32 1)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %53, i64* %5, align 8
  br label %395

54:                                               ; preds = %44
  %55 = call i32 @Zero(%struct.TYPE_20__* %13, i32 48)
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @StrCpy(i32 %57, i32 4, i32* %60)
  %62 = call %struct.TYPE_24__* @ZeroMalloc(i32 4)
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i8* @GetParamUniStr(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @UniStrCpy(i8* %67, i32 8, i8* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @ScGetLink(i32 %73, %struct.TYPE_20__* %13)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @ERR_NO_ERROR, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %54
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @CmdPrintError(%struct.TYPE_23__* %79, i64 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @FreeParamValueList(i32* %82)
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %5, align 8
  br label %395

85:                                               ; preds = %54
  %86 = load i32, i32* @MAX_SIZE, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %15, align 8
  %89 = alloca i8, i64 %87, align 16
  store i64 %87, i64* %16, align 8
  %90 = call i32* (...) @CtNewStandard()
  store i32* %90, i32** %17, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @CtInsert(i32* %91, i8* %92, i8* %96)
  %98 = trunc i64 %87 to i32
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @StrToUni(i8* %89, i32 %98, i32 %102)
  %104 = load i32*, i32** %17, align 8
  %105 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 @CtInsert(i32* %104, i8* %105, i8* %89)
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 17
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @UniToStru(i8* %89, i32 %110)
  %112 = load i32*, i32** %17, align 8
  %113 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %114 = call i32 @CtInsert(i32* %112, i8* %113, i8* %89)
  %115 = trunc i64 %87 to i32
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 16
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @StrToUni(i8* %89, i32 %115, i32 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %123 = call i32 @CtInsert(i32* %121, i8* %122, i8* %89)
  %124 = load i32*, i32** %17, align 8
  %125 = call i8* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @GetProxyTypeStr(i64 %129)
  %131 = call i32 @CtInsert(i32* %124, i8* %125, i8* %130)
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PROXY_DIRECT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %85
  %139 = trunc i64 %87 to i32
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @StrToUni(i8* %89, i32 %139, i32 %143)
  %145 = load i32*, i32** %17, align 8
  %146 = call i8* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %147 = call i32 @CtInsert(i32* %145, i8* %146, i8* %89)
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @UniToStru(i8* %89, i32 %151)
  %153 = load i32*, i32** %17, align 8
  %154 = call i8* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %155 = call i32 @CtInsert(i32* %153, i8* %154, i8* %89)
  %156 = trunc i64 %87 to i32
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @StrToUni(i8* %89, i32 %156, i32 %160)
  %162 = load i32*, i32** %17, align 8
  %163 = call i8* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %164 = call i32 @CtInsert(i32* %162, i8* %163, i8* %89)
  br label %165

165:                                              ; preds = %138, %85
  %166 = load i32*, i32** %17, align 8
  %167 = call i8* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %175

173:                                              ; preds = %165
  %174 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i8* [ %172, %171 ], [ %174, %173 ]
  %177 = call i32 @CtInsert(i32* %166, i8* %167, i8* %176)
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = trunc i64 %87 to i32
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @GetAllNameFromX(i8* %89, i32 %182, i32* %184)
  %186 = load i32*, i32** %17, align 8
  %187 = call i8* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %188 = call i32 @CtInsert(i32* %186, i8* %187, i8* %89)
  br label %189

189:                                              ; preds = %181, %175
  %190 = trunc i64 %87 to i32
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 12
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @StrToUni(i8* %89, i32 %190, i32 %194)
  %196 = load i32*, i32** %17, align 8
  %197 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %198 = call i32 @CtInsert(i32* %196, i8* %197, i8* %89)
  %199 = load i32*, i32** %17, align 8
  %200 = call i8* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @GetClientAuthTypeStr(i64 %204)
  %206 = call i32 @CtInsert(i32* %199, i8* %200, i8* %205)
  %207 = trunc i64 %87 to i32
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @StrToUni(i8* %89, i32 %207, i32 %211)
  %213 = load i32*, i32** %17, align 8
  %214 = call i8* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %215 = call i32 @CtInsert(i32* %213, i8* %214, i8* %89)
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %189
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %222
  %229 = trunc i64 %87 to i32
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @GetAllNameFromX(i8* %89, i32 %229, i32* %233)
  %235 = load i32*, i32** %17, align 8
  %236 = call i8* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %237 = call i32 @CtInsert(i32* %235, i8* %236, i8* %89)
  br label %238

238:                                              ; preds = %228, %222
  br label %239

239:                                              ; preds = %238, %189
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 11
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @UniToStru(i8* %89, i32 %243)
  %245 = load i32*, i32** %17, align 8
  %246 = call i8* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %247 = call i32 @CtInsert(i32* %245, i8* %246, i8* %89)
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @UniToStru(i8* %89, i32 %251)
  %253 = load i32*, i32** %17, align 8
  %254 = call i8* @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %255 = call i32 @CtInsert(i32* %253, i8* %254, i8* %89)
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %239
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @UniToStru(i8* %89, i32 %265)
  br label %271

267:                                              ; preds = %239
  %268 = trunc i64 %87 to i32
  %269 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %270 = call i32 @UniStrCpy(i8* %89, i32 %268, i8* %269)
  br label %271

271:                                              ; preds = %267, %261
  %272 = load i32*, i32** %17, align 8
  %273 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %274 = call i32 @CtInsert(i32* %272, i8* %273, i8* %89)
  %275 = load i32*, i32** %17, align 8
  %276 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %271
  %283 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %286

284:                                              ; preds = %271
  %285 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i8* [ %283, %282 ], [ %285, %284 ]
  %288 = call i32 @CtInsert(i32* %275, i8* %276, i8* %287)
  %289 = load i32*, i32** %17, align 8
  %290 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %286
  %297 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %300

298:                                              ; preds = %286
  %299 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i8* [ %297, %296 ], [ %299, %298 ]
  %302 = call i32 @CtInsert(i32* %289, i8* %290, i8* %301)
  %303 = load i32*, i32** %17, align 8
  %304 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %300
  %311 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %314

312:                                              ; preds = %300
  %313 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i8* [ %311, %310 ], [ %313, %312 ]
  %316 = call i32 @CtInsert(i32* %303, i8* %304, i8* %315)
  %317 = load i32*, i32** %17, align 8
  %318 = call i8* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %314
  %325 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %328

326:                                              ; preds = %314
  %327 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i8* [ %325, %324 ], [ %327, %326 ]
  %330 = call i32 @CtInsert(i32* %317, i8* %318, i8* %329)
  %331 = load i32*, i32** %17, align 8
  %332 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %328
  %339 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %342

340:                                              ; preds = %328
  %341 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i8* [ %339, %338 ], [ %341, %340 ]
  %344 = call i32 @CtInsert(i32* %331, i8* %332, i8* %343)
  %345 = load i32*, i32** %17, align 8
  %346 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %342
  %353 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %356

354:                                              ; preds = %342
  %355 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %352
  %357 = phi i8* [ %353, %352 ], [ %355, %354 ]
  %358 = call i32 @CtInsert(i32* %345, i8* %346, i8* %357)
  %359 = load i32*, i32** %17, align 8
  %360 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %356
  %367 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %370

368:                                              ; preds = %356
  %369 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i8* [ %367, %366 ], [ %369, %368 ]
  %372 = call i32 @CtInsert(i32* %359, i8* %360, i8* %371)
  %373 = load i32*, i32** %17, align 8
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %375 = call i32 @CtFree(i32* %373, %struct.TYPE_23__* %374)
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 0
  %378 = load i32 (%struct.TYPE_23__*, i8*)*, i32 (%struct.TYPE_23__*, i8*)** %377, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %380 = call i32 %378(%struct.TYPE_23__* %379, i8* bitcast ([1 x i32]* @.str.30 to i8*))
  %381 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 0
  %383 = load i32 (%struct.TYPE_23__*, i8*)*, i32 (%struct.TYPE_23__*, i8*)** %382, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %385 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %386 = call i32 %383(%struct.TYPE_23__* %384, i8* %385)
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %389 = call i32 @PrintPolicy(%struct.TYPE_23__* %387, i32* %388, i32 1)
  %390 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %390)
  br label %391

391:                                              ; preds = %370
  %392 = call i32 @FreeRpcCreateLink(%struct.TYPE_20__* %13)
  %393 = load i32*, i32** %10, align 8
  %394 = call i32 @FreeParamValueList(i32* %393)
  store i64 0, i64* %5, align 8
  br label %395

395:                                              ; preds = %391, %78, %52, %36
  %396 = load i64, i64* %5, align 8
  ret i64 %396
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_23__*, i8*, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i8*, i32, i8*) #1

declare dso_local i8* @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i32 @StrToUni(i8*, i32, i32) #1

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i8* @GetProxyTypeStr(i64) #1

declare dso_local i32 @GetAllNameFromX(i8*, i32, i32*) #1

declare dso_local i8* @GetClientAuthTypeStr(i64) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @PrintPolicy(%struct.TYPE_23__*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
