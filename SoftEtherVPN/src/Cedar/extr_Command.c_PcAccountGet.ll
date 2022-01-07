; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i64, i32*, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_10__ = type { i64, i32*, i32 }
%struct.TYPE_14__ = type { i8*, i32*, i32, i32*, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"CMD_ACCOUNT_COLUMN_NAME\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CMD_ACCOUNT_COLUMN_HOSTNAME\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"CMD_ACCOUNT_COLUMN_PORT\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"CMD_ACCOUNT_COLUMN_HUBNAME\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_TYPE\00", align 1
@PROXY_DIRECT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_HOSTNAME\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_PORT\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"CMD_ACCOUNT_COLUMN_PROXY_USERNAME\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"CMD_ACCOUNT_COLUMN_SERVER_CERT_USE\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"CMD_MSG_ENABLE\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"CMD_MSG_DISABLE\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"CMD_ACCOUNT_COLUMN_SERVER_CERT_NAME\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"CMD_ACCOUNT_COLUMN_RETRY_ON_SERVER_CERT\00", align 1
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
@.str.30 = private unnamed_addr constant [30 x i8] c"CMD_ACCOUNT_COLUMN_DISABLEUDP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca [1 x %struct.TYPE_14__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %11, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %28 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %31 = load i32, i32* @CmdEvalNotEmpty, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %39 = call i32* @ParseCommandList(i32* %35, i8* %36, i32* %37, %struct.TYPE_14__* %38, i32 1)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %403

44:                                               ; preds = %4
  %45 = call i32 @Zero(%struct.TYPE_12__* %13, i32 48)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32* @GetParamUniStr(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @UniStrCpy(i32* %47, i32 8, i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CcGetAccount(i32 %53, %struct.TYPE_12__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %390

58:                                               ; preds = %44
  %59 = load i32, i32* @MAX_SIZE, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %15, align 8
  %62 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %16, align 8
  %63 = call i32* (...) @CtNewStandard()
  store i32* %63, i32** %17, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 19
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @CtInsert(i32* %64, i32* %65, i32* %69)
  %71 = mul nuw i64 4, %60
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 18
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @StrToUni(i32* %62, i32 %72, i32 %76)
  %78 = load i32*, i32** %17, align 8
  %79 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @CtInsert(i32* %78, i32* %79, i32* %62)
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 17
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @UniToStru(i32* %62, i32 %84)
  %86 = load i32*, i32** %17, align 8
  %87 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @CtInsert(i32* %86, i32* %87, i32* %62)
  %89 = mul nuw i64 4, %60
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 16
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @StrToUni(i32* %62, i32 %90, i32 %94)
  %96 = load i32*, i32** %17, align 8
  %97 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %98 = call i32 @CtInsert(i32* %96, i32* %97, i32* %62)
  %99 = load i32*, i32** %17, align 8
  %100 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32* @GetProxyTypeStr(i64 %104)
  %106 = call i32 @CtInsert(i32* %99, i32* %100, i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PROXY_DIRECT, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %58
  %114 = mul nuw i64 4, %60
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @StrToUni(i32* %62, i32 %115, i32 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i32* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %123 = call i32 @CtInsert(i32* %121, i32* %122, i32* %62)
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 14
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @UniToStru(i32* %62, i32 %127)
  %129 = load i32*, i32** %17, align 8
  %130 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %131 = call i32 @CtInsert(i32* %129, i32* %130, i32* %62)
  %132 = mul nuw i64 4, %60
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @StrToUni(i32* %62, i32 %133, i32 %137)
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %141 = call i32 @CtInsert(i32* %139, i32* %140, i32* %62)
  br label %142

142:                                              ; preds = %113, %58
  %143 = load i32*, i32** %17, align 8
  %144 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %152

150:                                              ; preds = %142
  %151 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32* [ %149, %148 ], [ %151, %150 ]
  %154 = call i32 @CtInsert(i32* %143, i32* %144, i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = mul nuw i64 4, %60
  %160 = trunc i64 %159 to i32
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @GetAllNameFromX(i32* %62, i32 %160, i32* %162)
  %164 = load i32*, i32** %17, align 8
  %165 = call i32* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %166 = call i32 @CtInsert(i32* %164, i32* %165, i32* %62)
  br label %167

167:                                              ; preds = %158, %152
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load i32*, i32** %17, align 8
  %173 = call i32* @_UU(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %181

179:                                              ; preds = %171
  %180 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32* [ %178, %177 ], [ %180, %179 ]
  %183 = call i32 @CtInsert(i32* %172, i32* %173, i32* %182)
  br label %184

184:                                              ; preds = %181, %167
  %185 = mul nuw i64 4, %60
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @StrToUni(i32* %62, i32 %186, i32 %190)
  %192 = load i32*, i32** %17, align 8
  %193 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %194 = call i32 @CtInsert(i32* %192, i32* %193, i32* %62)
  %195 = load i32*, i32** %17, align 8
  %196 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32* @GetClientAuthTypeStr(i64 %200)
  %202 = call i32 @CtInsert(i32* %195, i32* %196, i32* %201)
  %203 = mul nuw i64 4, %60
  %204 = trunc i64 %203 to i32
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @StrToUni(i32* %62, i32 %204, i32 %208)
  %210 = load i32*, i32** %17, align 8
  %211 = call i32* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %212 = call i32 @CtInsert(i32* %210, i32* %211, i32* %62)
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %184
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %236

225:                                              ; preds = %219
  %226 = mul nuw i64 4, %60
  %227 = trunc i64 %226 to i32
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @GetAllNameFromX(i32* %62, i32 %227, i32* %231)
  %233 = load i32*, i32** %17, align 8
  %234 = call i32* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %235 = call i32 @CtInsert(i32* %233, i32* %234, i32* %62)
  br label %236

236:                                              ; preds = %225, %219
  br label %237

237:                                              ; preds = %236, %184
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 11
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @UniToStru(i32* %62, i32 %241)
  %243 = load i32*, i32** %17, align 8
  %244 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %245 = call i32 @CtInsert(i32* %243, i32* %244, i32* %62)
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @UniToStru(i32* %62, i32 %249)
  %251 = load i32*, i32** %17, align 8
  %252 = call i32* @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %253 = call i32 @CtInsert(i32* %251, i32* %252, i32* %62)
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %237
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @UniToStru(i32* %62, i32 %263)
  br label %270

265:                                              ; preds = %237
  %266 = mul nuw i64 4, %60
  %267 = trunc i64 %266 to i32
  %268 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %269 = call i32 @UniStrCpy(i32* %62, i32 %267, i32* %268)
  br label %270

270:                                              ; preds = %265, %259
  %271 = load i32*, i32** %17, align 8
  %272 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %273 = call i32 @CtInsert(i32* %271, i32* %272, i32* %62)
  %274 = load i32*, i32** %17, align 8
  %275 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 8
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %270
  %282 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %285

283:                                              ; preds = %270
  %284 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32* [ %282, %281 ], [ %284, %283 ]
  %287 = call i32 @CtInsert(i32* %274, i32* %275, i32* %286)
  %288 = load i32*, i32** %17, align 8
  %289 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %285
  %296 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %299

297:                                              ; preds = %285
  %298 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i32* [ %296, %295 ], [ %298, %297 ]
  %301 = call i32 @CtInsert(i32* %288, i32* %289, i32* %300)
  %302 = load i32*, i32** %17, align 8
  %303 = call i32* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %299
  %310 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %313

311:                                              ; preds = %299
  %312 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32* [ %310, %309 ], [ %312, %311 ]
  %315 = call i32 @CtInsert(i32* %302, i32* %303, i32* %314)
  %316 = load i32*, i32** %17, align 8
  %317 = call i32* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %313
  %324 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %327

325:                                              ; preds = %313
  %326 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32* [ %324, %323 ], [ %326, %325 ]
  %329 = call i32 @CtInsert(i32* %316, i32* %317, i32* %328)
  %330 = load i32*, i32** %17, align 8
  %331 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %327
  %338 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %341

339:                                              ; preds = %327
  %340 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32* [ %338, %337 ], [ %340, %339 ]
  %343 = call i32 @CtInsert(i32* %330, i32* %331, i32* %342)
  %344 = load i32*, i32** %17, align 8
  %345 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %341
  %352 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %355

353:                                              ; preds = %341
  %354 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %351
  %356 = phi i32* [ %352, %351 ], [ %354, %353 ]
  %357 = call i32 @CtInsert(i32* %344, i32* %345, i32* %356)
  %358 = load i32*, i32** %17, align 8
  %359 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %355
  %366 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %369

367:                                              ; preds = %355
  %368 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i32* [ %366, %365 ], [ %368, %367 ]
  %371 = call i32 @CtInsert(i32* %358, i32* %359, i32* %370)
  %372 = load i32*, i32** %17, align 8
  %373 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %369
  %380 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %383

381:                                              ; preds = %369
  %382 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi i32* [ %380, %379 ], [ %382, %381 ]
  %385 = call i32 @CtInsert(i32* %372, i32* %373, i32* %384)
  %386 = load i32*, i32** %17, align 8
  %387 = load i32*, i32** %6, align 8
  %388 = call i32 @CtFree(i32* %386, i32* %387)
  %389 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %389)
  br label %390

390:                                              ; preds = %383, %44
  %391 = load i64, i64* %12, align 8
  %392 = load i64, i64* @ERR_NO_ERROR, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %390
  %395 = load i32*, i32** %6, align 8
  %396 = load i64, i64* %12, align 8
  %397 = call i32 @CmdPrintError(i32* %395, i64 %396)
  br label %398

398:                                              ; preds = %394, %390
  %399 = call i32 @CiFreeClientGetAccount(%struct.TYPE_12__* %13)
  %400 = load i32*, i32** %10, align 8
  %401 = call i32 @FreeParamValueList(i32* %400)
  %402 = load i64, i64* %12, align 8
  store i64 %402, i64* %5, align 8
  br label %403

403:                                              ; preds = %398, %42
  %404 = load i64, i64* %5, align 8
  ret i64 %404
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32* @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32* @GetProxyTypeStr(i64) #1

declare dso_local i32 @GetAllNameFromX(i32*, i32, i32*) #1

declare dso_local i32* @GetClientAuthTypeStr(i64) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
