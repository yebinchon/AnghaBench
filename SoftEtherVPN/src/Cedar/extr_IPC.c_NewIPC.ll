; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_NewIPC.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_NewIPC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_39__*, i32, i32, %struct.TYPE_37__*, i32, i32, i32, i32, %struct.TYPE_42__* }
%struct.TYPE_39__ = type { i64, i64, %struct.TYPE_38__, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_42__ = type { i64, i64, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_43__ = type { i32, i32 }

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"InProc VPN Connection\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IPC_LAYER_2 = common dso_local global i64 0, align 8
@ERR_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_AUTH_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"client_ver\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"client_build\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"max_connection\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"use_encrypt\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"use_compress\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"half_connection\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"adjust_mss\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"require_bridge_routing_mode\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"require_monitor_mode\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"qos\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"release_me_eap_client\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"unique_id\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"inproc_postfix\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"inproc_cryptname\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"inproc_layer\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"IpcMacAddress\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"IpcMsChapV2ServerResponse\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"IpcHubName\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"IPC Hub Name: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"IPC: Session = %s, Connection = %s, Mac = %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"NewIPC() Succeed.\0A\00", align 1
@IPCCmpArpTable = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"NewIPC() Failed: Err = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_40__* @NewIPC(%struct.TYPE_42__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64* %6, i32* %7, i64 %8, i32* %9, i64 %10, i8* %11, i8* %12, i32 %13, i64 %14, %struct.TYPE_41__* %15, i32* %16, i64 %17) #0 {
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca %struct.TYPE_42__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_41__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_40__*, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.TYPE_39__*, align 8
  %41 = alloca %struct.TYPE_39__*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i64, align 8
  %46 = alloca [30 x i8], align 16
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca %struct.TYPE_37__, align 8
  %51 = alloca %struct.TYPE_43__*, align 8
  %52 = alloca [20 x %struct.TYPE_37__], align 16
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %20, align 8
  store i8* %1, i8** %21, align 8
  store i8* %2, i8** %22, align 8
  store i8* %3, i8** %23, align 8
  store i8* %4, i8** %24, align 8
  store i8* %5, i8** %25, align 8
  store i64* %6, i64** %26, align 8
  store i32* %7, i32** %27, align 8
  store i64 %8, i64* %28, align 8
  store i32* %9, i32** %29, align 8
  store i64 %10, i64* %30, align 8
  store i8* %11, i8** %31, align 8
  store i8* %12, i8** %32, align 8
  store i32 %13, i32* %33, align 4
  store i64 %14, i64* %34, align 8
  store %struct.TYPE_41__* %15, %struct.TYPE_41__** %35, align 8
  store i32* %16, i32** %36, align 8
  store i64 %17, i64* %37, align 8
  store i64 0, i64* %39, align 8
  %55 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %55, i64* %43, align 8
  %56 = load i32, i32* @MAX_SIZE, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %44, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %45, align 8
  %60 = load i32, i32* @SHA1_SIZE, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca %struct.TYPE_37__, i64 %61, align 16
  store i64 %61, i64* %49, align 8
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %64 = icmp eq %struct.TYPE_42__* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %18
  %66 = load i8*, i8** %24, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %25, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %31, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68, %65, %18
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %19, align 8
  store i32 1, i32* %53, align 4
  br label %507

75:                                               ; preds = %71
  %76 = load i8*, i8** %21, align 8
  %77 = call i64 @IsEmptyStr(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i8*, i8** %32, align 8
  %82 = call i64 @IsEmptyStr(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i64*, i64** %26, align 8
  %87 = icmp eq i64* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i64* %39, i64** %26, align 8
  br label %89

89:                                               ; preds = %88, %85
  %90 = getelementptr inbounds [20 x %struct.TYPE_37__], [20 x %struct.TYPE_37__]* %52, i64 0, i64 0
  %91 = call i32 @Zero(%struct.TYPE_37__* %90, i32 2880)
  %92 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  %93 = load i64*, i64** %26, align 8
  store i64 %92, i64* %93, align 8
  store i64 %92, i64* %43, align 8
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %95 = call %struct.TYPE_39__* @GetInProcListeningSock(%struct.TYPE_42__* %94)
  store %struct.TYPE_39__* %95, %struct.TYPE_39__** %40, align 8
  %96 = load %struct.TYPE_39__*, %struct.TYPE_39__** %40, align 8
  %97 = icmp eq %struct.TYPE_39__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %19, align 8
  store i32 1, i32* %53, align 4
  br label %507

99:                                               ; preds = %89
  %100 = call %struct.TYPE_40__* @ZeroMalloc(i32 104)
  store %struct.TYPE_40__* %100, %struct.TYPE_40__** %38, align 8
  %101 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 16
  store %struct.TYPE_42__* %101, %struct.TYPE_42__** %103, align 8
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @AddRef(i32 %106)
  %108 = load i64, i64* %37, align 8
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %112 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %99
  %116 = load i64, i64* @IPC_LAYER_2, align 8
  %117 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %99
  %120 = call i32 (...) @NewTubeFlushList()
  %121 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %122 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %31, align 8
  %127 = call i32 @StrCpy(i8* %125, i32 8, i8* %126)
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %23, align 8
  %132 = call i32 @StrCpy(i8* %130, i32 8, i8* %131)
  %133 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %134 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %24, align 8
  %137 = call i32 @StrCpy(i8* %135, i32 8, i8* %136)
  %138 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %139 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** %25, align 8
  %142 = call i32 @StrCpy(i8* %140, i32 8, i8* %141)
  %143 = load %struct.TYPE_39__*, %struct.TYPE_39__** %40, align 8
  %144 = load i32*, i32** %27, align 8
  %145 = load i64, i64* %28, align 8
  %146 = load i32*, i32** %29, align 8
  %147 = load i64, i64* %30, align 8
  %148 = call %struct.TYPE_39__* @ConnectInProc(%struct.TYPE_39__* %143, i32* %144, i64 %145, i32* %146, i64 %147)
  store %struct.TYPE_39__* %148, %struct.TYPE_39__** %41, align 8
  %149 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %150 = icmp eq %struct.TYPE_39__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %119
  br label %494

152:                                              ; preds = %119
  %153 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %154 = call i32 @ClientUploadSignature(%struct.TYPE_39__* %153)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* @ERR_DISCONNECTED, align 8
  store i64 %157, i64* %43, align 8
  br label %494

158:                                              ; preds = %152
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %160 = call i32* @HttpClientRecv(%struct.TYPE_39__* %159)
  store i32* %160, i32** %42, align 8
  %161 = load i32*, i32** %42, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i64, i64* @ERR_DISCONNECTED, align 8
  store i64 %164, i64* %43, align 8
  br label %494

165:                                              ; preds = %158
  %166 = load i32*, i32** %42, align 8
  %167 = call i64 @GetErrorFromPack(i32* %166)
  store i64 %167, i64* %43, align 8
  %168 = load i64, i64* %43, align 8
  %169 = load i64, i64* @ERR_NO_ERROR, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32*, i32** %42, align 8
  %173 = call i32 @FreePack(i32* %172)
  br label %494

174:                                              ; preds = %165
  %175 = load i32*, i32** %42, align 8
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 8
  %179 = trunc i64 %57 to i32
  %180 = call i32 @GetHello(i32* %175, i32 %178, i64* %47, i64* %48, i8* %59, i32 %179)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load i32*, i32** %42, align 8
  %184 = call i32 @FreePack(i32* %183)
  %185 = load i64, i64* @ERR_DISCONNECTED, align 8
  store i64 %185, i64* %43, align 8
  br label %494

186:                                              ; preds = %174
  %187 = load i32*, i32** %42, align 8
  %188 = call i32 @FreePack(i32* %187)
  %189 = load i32*, i32** %36, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i8*, i8** %23, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = load i32*, i32** %36, align 8
  %195 = call i32* @PackLoginWithOpenVPNCertificate(i8* %192, i8* %193, i32* %194)
  store i32* %195, i32** %42, align 8
  br label %201

196:                                              ; preds = %186
  %197 = load i8*, i8** %23, align 8
  %198 = load i8*, i8** %24, align 8
  %199 = load i8*, i8** %25, align 8
  %200 = call i32* @PackLoginWithPlainPassword(i8* %197, i8* %198, i8* %199)
  store i32* %200, i32** %42, align 8
  br label %201

201:                                              ; preds = %196, %191
  %202 = load i32*, i32** %42, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i64, i64* @ERR_AUTH_FAILED, align 8
  store i64 %205, i64* %43, align 8
  br label %494

206:                                              ; preds = %201
  %207 = load i32*, i32** %42, align 8
  %208 = load i8*, i8** %21, align 8
  %209 = call i32 @PackAddStr(i32* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %208)
  %210 = load i32*, i32** %42, align 8
  %211 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @PackAddInt(i32* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %213)
  %215 = load i32*, i32** %42, align 8
  %216 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %217 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @PackAddInt(i32* %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %218)
  %220 = load i32*, i32** %42, align 8
  %221 = call i32 @PackAddInt(i32* %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %222 = load i32*, i32** %42, align 8
  %223 = call i32 @PackAddInt(i32* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 0)
  %224 = load i32*, i32** %42, align 8
  %225 = call i32 @PackAddInt(i32* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 0)
  %226 = load i32*, i32** %42, align 8
  %227 = call i32 @PackAddInt(i32* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 0)
  %228 = load i32*, i32** %42, align 8
  %229 = load i64, i64* %34, align 8
  %230 = call i32 @PackAddInt(i32* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 %229)
  %231 = load i32*, i32** %42, align 8
  %232 = load i32, i32* %33, align 4
  %233 = call i32 @PackAddBool(i32* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = load i32*, i32** %42, align 8
  %235 = call i32 @PackAddBool(i32* %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %236 = load i32*, i32** %42, align 8
  %237 = call i32 @PackAddBool(i32* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %239 = icmp ne %struct.TYPE_41__* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %206
  %241 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %242 = ptrtoint %struct.TYPE_41__* %241 to i32
  store i32 %242, i32* %54, align 4
  %243 = load i32*, i32** %42, align 8
  %244 = load i32, i32* %54, align 4
  %245 = call i32 @PackAddInt64(i32* %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %244)
  %246 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %247 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @AddRef(i32 %248)
  br label %250

250:                                              ; preds = %240, %206
  %251 = call %struct.TYPE_43__* (...) @NewBuf()
  store %struct.TYPE_43__* %251, %struct.TYPE_43__** %51, align 8
  %252 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %253 = load i32*, i32** %27, align 8
  %254 = call i32 @WriteBuf(%struct.TYPE_43__* %252, i32* %253, i32 4)
  %255 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %256 = load i8*, i8** %21, align 8
  %257 = call i32 @WriteBufStr(%struct.TYPE_43__* %255, i8* %256)
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %259 = load i8*, i8** %32, align 8
  %260 = call i32 @WriteBufStr(%struct.TYPE_43__* %258, i8* %259)
  %261 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %262 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %265 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @Sha1(%struct.TYPE_37__* %62, i32 %263, i32 %266)
  %268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %269 = call i32 @FreeBuf(%struct.TYPE_43__* %268)
  %270 = load i32*, i32** %42, align 8
  %271 = load i32, i32* @SHA1_SIZE, align 4
  %272 = call i32 @PackAddData(i32* %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_37__* %62, i32 %271)
  %273 = load i32*, i32** %42, align 8
  %274 = load i8*, i8** %22, align 8
  %275 = call i32 @PackAddStr(i32* %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %274)
  %276 = load i32*, i32** %42, align 8
  %277 = load i8*, i8** %32, align 8
  %278 = call i32 @PackAddStr(i32* %276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %277)
  %279 = load i32*, i32** %42, align 8
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %281 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @PackAddInt(i32* %279, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 %282)
  %284 = call i32 @Zero(%struct.TYPE_37__* %50, i32 144)
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load i8*, i8** %21, align 8
  %288 = call i32 @StrCpy(i8* %286, i32 8, i8* %287)
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i8* @Endian32(i64 %291)
  %293 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 18
  store i8* %292, i8** %293, align 8
  %294 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = call i8* @Endian32(i64 %296)
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 17
  store i8* %297, i8** %298, align 8
  %299 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @StrCpy(i8* %300, i32 8, i8* %59)
  %302 = load i64, i64* %47, align 8
  %303 = call i8* @Endian32(i64 %302)
  %304 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 16
  store i8* %303, i8** %304, align 8
  %305 = load i64, i64* %48, align 8
  %306 = call i8* @Endian32(i64 %305)
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 15
  store i8* %306, i8** %307, align 8
  %308 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = load i8*, i8** %21, align 8
  %311 = call i32 @StrCpy(i8* %309, i32 8, i8* %310)
  %312 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 3
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @StrCpy(i8* %313, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 4
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @StrCpy(i8* %316, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %318 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %319 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %318, i32 0, i32 3
  %320 = call i8* @IPToUINT(%struct.TYPE_38__* %319)
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 14
  store i8* %320, i8** %321, align 8
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %323 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = call i8* @Endian32(i64 %324)
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 13
  store i8* %325, i8** %326, align 8
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 5
  %328 = load i8*, i8** %327, align 8
  %329 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %330 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @StrCpy(i8* %328, i32 8, i8* %331)
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 12
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 2
  %337 = call i32 @IPToStr(i32 %334, i32 4, %struct.TYPE_38__* %336)
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 2
  %340 = call i8* @IPToUINT(%struct.TYPE_38__* %339)
  %341 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 11
  store i8* %340, i8** %341, align 8
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = call i8* @Endian32(i64 %344)
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 10
  store i8* %345, i8** %346, align 8
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 6
  %348 = load i8*, i8** %347, align 8
  %349 = load i8*, i8** %23, align 8
  %350 = call i32 @StrCpy(i8* %348, i32 8, i8* %349)
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @Copy(i32 %352, %struct.TYPE_37__* %62, i32 16)
  %354 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %355 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %354, i32 0, i32 3
  %356 = call i64 @IsIP6(%struct.TYPE_38__* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %250
  %359 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 8
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_37__*, %struct.TYPE_37__** %363, align 8
  %365 = call i32 @Copy(i32 %360, %struct.TYPE_37__* %364, i32 16)
  br label %366

366:                                              ; preds = %358, %250
  %367 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %368 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %367, i32 0, i32 2
  %369 = call i64 @IsIP6(%struct.TYPE_38__* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 7
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %375 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_37__*, %struct.TYPE_37__** %376, align 8
  %378 = call i32 @Copy(i32 %373, %struct.TYPE_37__* %377, i32 16)
  br label %379

379:                                              ; preds = %371, %366
  %380 = load i32*, i32** %42, align 8
  %381 = call i32 @OutRpcNodeInfo(i32* %380, %struct.TYPE_37__* %50)
  %382 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %383 = load i32*, i32** %42, align 8
  %384 = call i32 @HttpClientSend(%struct.TYPE_39__* %382, i32* %383)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load i32*, i32** %42, align 8
  %388 = call i32 @FreePack(i32* %387)
  %389 = load i64, i64* @ERR_DISCONNECTED, align 8
  store i64 %389, i64* %43, align 8
  br label %494

390:                                              ; preds = %379
  %391 = load i32*, i32** %42, align 8
  %392 = call i32 @FreePack(i32* %391)
  %393 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %394 = call i32* @HttpClientRecv(%struct.TYPE_39__* %393)
  store i32* %394, i32** %42, align 8
  %395 = load i32*, i32** %42, align 8
  %396 = icmp eq i32* %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %390
  %398 = load i64, i64* @ERR_DISCONNECTED, align 8
  store i64 %398, i64* %43, align 8
  br label %494

399:                                              ; preds = %390
  %400 = load i32*, i32** %42, align 8
  %401 = call i64 @GetErrorFromPack(i32* %400)
  store i64 %401, i64* %43, align 8
  %402 = load i64, i64* %43, align 8
  %403 = load i64, i64* @ERR_NO_ERROR, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %399
  %406 = load i32*, i32** %42, align 8
  %407 = call i32 @FreePack(i32* %406)
  br label %494

408:                                              ; preds = %399
  %409 = load i32*, i32** %42, align 8
  %410 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %411 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %410, i32 0, i32 10
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %414 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %413, i32 0, i32 9
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %417 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %416, i32 0, i32 13
  %418 = call i32 @ParseWelcomeFromPack(i32* %409, i32 %412, i32 4, i32 %415, i32 4, i32* %417)
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %408
  %421 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  store i64 %421, i64* %43, align 8
  %422 = load i32*, i32** %42, align 8
  %423 = call i32 @FreePack(i32* %422)
  br label %494

424:                                              ; preds = %408
  %425 = load i32*, i32** %42, align 8
  %426 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %427 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %426, i32 0, i32 11
  %428 = load %struct.TYPE_37__*, %struct.TYPE_37__** %427, align 8
  %429 = call i32 @PackGetData2(i32* %425, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_37__* %428, i32 6)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %437, label %431

431:                                              ; preds = %424
  %432 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %433 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %432, i32 0, i32 11
  %434 = load %struct.TYPE_37__*, %struct.TYPE_37__** %433, align 8
  %435 = call i64 @IsZero(%struct.TYPE_37__* %434, i32 6)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %431, %424
  %438 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  store i64 %438, i64* %43, align 8
  %439 = load i32*, i32** %42, align 8
  %440 = call i32 @FreePack(i32* %439)
  br label %494

441:                                              ; preds = %431
  %442 = load i32*, i32** %42, align 8
  %443 = getelementptr inbounds [20 x %struct.TYPE_37__], [20 x %struct.TYPE_37__]* %52, i64 0, i64 0
  %444 = call i32 @PackGetData2(i32* %442, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_37__* %443, i32 2880)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %441
  %447 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %448 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %447, i32 0, i32 12
  %449 = load i32, i32* %448, align 8
  %450 = getelementptr inbounds [20 x %struct.TYPE_37__], [20 x %struct.TYPE_37__]* %52, i64 0, i64 0
  %451 = call i32 @Copy(i32 %449, %struct.TYPE_37__* %450, i32 2880)
  br label %452

452:                                              ; preds = %446, %441
  %453 = load i32*, i32** %42, align 8
  %454 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %455 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %454, i32 0, i32 2
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 @PackGetStr(i32* %453, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %456, i32 8)
  %458 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %459 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %458, i32 0, i32 2
  %460 = load i8*, i8** %459, align 8
  %461 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* %460)
  %462 = getelementptr inbounds [30 x i8], [30 x i8]* %46, i64 0, i64 0
  %463 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %464 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %463, i32 0, i32 11
  %465 = load %struct.TYPE_37__*, %struct.TYPE_37__** %464, align 8
  %466 = call i32 @MacToStr(i8* %462, i32 30, %struct.TYPE_37__* %465)
  %467 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %468 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %467, i32 0, i32 10
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %471 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %470, i32 0, i32 9
  %472 = load i32, i32* %471, align 8
  %473 = getelementptr inbounds [30 x i8], [30 x i8]* %46, i64 0, i64 0
  %474 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %469, i32 %472, i8* %473)
  %475 = load i32*, i32** %42, align 8
  %476 = call i32 @FreePack(i32* %475)
  %477 = load %struct.TYPE_39__*, %struct.TYPE_39__** %40, align 8
  %478 = call i32 @ReleaseSock(%struct.TYPE_39__* %477)
  %479 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %480 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %481 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %480, i32 0, i32 8
  store %struct.TYPE_39__* %479, %struct.TYPE_39__** %481, align 8
  %482 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %483 = call i32 (...) @NewInterruptManager()
  %484 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %485 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %484, i32 0, i32 7
  store i32 %483, i32* %485, align 8
  %486 = load i32, i32* @IPCCmpArpTable, align 4
  %487 = call i32 @NewList(i32 %486)
  %488 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %489 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %488, i32 0, i32 6
  store i32 %487, i32* %489, align 4
  %490 = call i32 (...) @NewQueue()
  %491 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %492 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %491, i32 0, i32 5
  store i32 %490, i32* %492, align 8
  %493 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  store %struct.TYPE_40__* %493, %struct.TYPE_40__** %19, align 8
  store i32 1, i32* %53, align 4
  br label %507

494:                                              ; preds = %437, %420, %405, %397, %386, %204, %182, %171, %163, %156, %151
  %495 = load i64, i64* %43, align 8
  %496 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i64 %495)
  %497 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %498 = call i32 @Disconnect(%struct.TYPE_39__* %497)
  %499 = load %struct.TYPE_39__*, %struct.TYPE_39__** %41, align 8
  %500 = call i32 @ReleaseSock(%struct.TYPE_39__* %499)
  %501 = load %struct.TYPE_39__*, %struct.TYPE_39__** %40, align 8
  %502 = call i32 @ReleaseSock(%struct.TYPE_39__* %501)
  %503 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %504 = call i32 @FreeIPC(%struct.TYPE_40__* %503)
  %505 = load i64, i64* %43, align 8
  %506 = load i64*, i64** %26, align 8
  store i64 %505, i64* %506, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %19, align 8
  store i32 1, i32* %53, align 4
  br label %507

507:                                              ; preds = %494, %452, %98, %74
  %508 = load i8*, i8** %44, align 8
  call void @llvm.stackrestore(i8* %508)
  %509 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  ret %struct.TYPE_40__* %509
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_37__*, i32) #2

declare dso_local %struct.TYPE_39__* @GetInProcListeningSock(%struct.TYPE_42__*) #2

declare dso_local %struct.TYPE_40__* @ZeroMalloc(i32) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @NewTubeFlushList(...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_39__* @ConnectInProc(%struct.TYPE_39__*, i32*, i64, i32*, i64) #2

declare dso_local i32 @ClientUploadSignature(%struct.TYPE_39__*) #2

declare dso_local i32* @HttpClientRecv(%struct.TYPE_39__*) #2

declare dso_local i64 @GetErrorFromPack(i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @GetHello(i32*, i32, i64*, i64*, i8*, i32) #2

declare dso_local i32* @PackLoginWithOpenVPNCertificate(i8*, i8*, i32*) #2

declare dso_local i32* @PackLoginWithPlainPassword(i8*, i8*, i8*) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddInt(i32*, i8*, i64) #2

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #2

declare dso_local i32 @PackAddInt64(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_43__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_43__*, i32*, i32) #2

declare dso_local i32 @WriteBufStr(%struct.TYPE_43__*, i8*) #2

declare dso_local i32 @Sha1(%struct.TYPE_37__*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_43__*) #2

declare dso_local i32 @PackAddData(i32*, i8*, %struct.TYPE_37__*, i32) #2

declare dso_local i8* @Endian32(i64) #2

declare dso_local i8* @IPToUINT(%struct.TYPE_38__*) #2

declare dso_local i32 @IPToStr(i32, i32, %struct.TYPE_38__*) #2

declare dso_local i32 @Copy(i32, %struct.TYPE_37__*, i32) #2

declare dso_local i64 @IsIP6(%struct.TYPE_38__*) #2

declare dso_local i32 @OutRpcNodeInfo(i32*, %struct.TYPE_37__*) #2

declare dso_local i32 @HttpClientSend(%struct.TYPE_39__*, i32*) #2

declare dso_local i32 @ParseWelcomeFromPack(i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @PackGetData2(i32*, i8*, %struct.TYPE_37__*, i32) #2

declare dso_local i64 @IsZero(%struct.TYPE_37__*, i32) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @Debug(i8*, ...) #2

declare dso_local i32 @MacToStr(i8*, i32, %struct.TYPE_37__*) #2

declare dso_local i32 @ReleaseSock(%struct.TYPE_39__*) #2

declare dso_local i32 @NewInterruptManager(...) #2

declare dso_local i32 @NewList(i32) #2

declare dso_local i32 @NewQueue(...) #2

declare dso_local i32 @Disconnect(%struct.TYPE_39__*) #2

declare dso_local i32 @FreeIPC(%struct.TYPE_40__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
