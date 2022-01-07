; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCRegister.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i64, i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@DDNS_URL_V4_GLOBAL = common dso_local global i8* null, align 8
@DDNS_URL_V4_ALT = common dso_local global i8* null, align 8
@DDNS_URL_V6_GLOBAL = common dso_local global i8* null, align 8
@DDNS_URL_V6_ALT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"osinfo\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"is_64bit\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"is_softether\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"is_packetix\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"machine_key\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"machine_name\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lasterror_ipv4\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"lasterror_ipv6\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"use_azure\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"product_str\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"SoftEther OSS\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"ddns_protocol_version\00", align 1
@DDNS_VERSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"ddns_oss\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"current_azure_ip = %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"current_azure_ip\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"new_hostname\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%s?v=%I64u\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c".servers\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c".open.servers\00", align 1
@DDNS_CERT_HASH = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"WpcCall: %s\0A\00", align 1
@DDNS_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@DDNS_COMM_TIMEOUT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@DDNS_RPC_MAX_RECV_SIZE = common dso_local global i32 0, align 4
@DDNS_SNI_VER_STRING = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"WpcCall Ret: %u\0A\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"current_hostname\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"current_fqdn\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"current_ipv4\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"current_ipv6\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"dns_suffix\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"current_region\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"snat_t\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"current_azure_timestamp\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"current_azure_signature\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"azure_cert_hash\00", align 1
@.str.36 = private unnamed_addr constant [161 x i8] c"current_hostname=%s, current_fqdn=%s, current_ipv4=%s, current_ipv6=%s, current_azure_ip=%s, CurrentAzureTimestamp=%I64u, CurrentAzureSignature=%s, CertHash=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i32] [i32 68, i32 67, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@ERR_DUPLICATE_DDNS_KEY = common dso_local global i64 0, align 8
@ERR_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_DDNS_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_CONNECT_FAILED = common dso_local global i64 0, align 8
@FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL_FOR_EAST_BFLETS = common dso_local global i8* null, align 8
@FLETS_DETECT_TYPE_EAST_NGN_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL_FOR_EAST_NGN = common dso_local global i8* null, align 8
@FLETS_DETECT_TYPE_WEST_NGN_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL_FOR_WEST_NGN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DCRegister(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  %28 = alloca [64 x i8], align 16
  %29 = alloca [64 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_15__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca [128 x i8], align 16
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i8* %3, i8** %9, align 8
  %38 = load i32, i32* @MAX_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %11, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %42 = load i32, i32* @MAX_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %45 = load i32, i32* @MAX_SIZE, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %16, align 8
  %48 = load i32, i32* @SHA1_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %17, align 8
  %51 = load i32, i32* @MAX_SIZE, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %18, align 8
  %54 = load i32, i32* @MAX_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %19, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %20, align 8
  %57 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %57, i64* %21, align 8
  %58 = load i32, i32* @SHA1_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %22, align 8
  %61 = load i32, i32* @MAX_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %64 = load i32, i32* @MAX_SIZE, align 4
  %65 = zext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %25, align 8
  store i64 0, i64* %27, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = icmp eq %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %4
  %70 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %70, i64* %5, align 8
  store i32 1, i32* %30, align 4
  br label %539

71:                                               ; preds = %4
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %73 = call i32 @Zero(i8* %72, i32 64)
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %29, i64 0, i64 0
  %75 = call i32 @Zero(i8* %74, i32 64)
  %76 = trunc i64 %65 to i32
  %77 = call i32 @Zero(i8* %66, i32 %76)
  %78 = call i32 @GetCurrentMachineIpProcessHash(i32* %50)
  %79 = trunc i64 %52 to i32
  %80 = mul nuw i64 4, %49
  %81 = trunc i64 %80 to i32
  %82 = call i32 @BinToStr(i8* %53, i32 %79, i32* %50, i32 %81)
  %83 = trunc i64 %55 to i32
  %84 = call i32 @GetMachineHostName(i8* %56, i32 %83)
  %85 = call i32 @StrLower(i8* %56)
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %71
  %89 = load i8*, i8** @DDNS_URL_V4_GLOBAL, align 8
  store i8* %89, i8** %10, align 8
  %90 = call i32 (...) @IsUseAlternativeHostname()
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8*, i8** @DDNS_URL_V4_ALT, align 8
  store i8* %93, i8** %10, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %107

95:                                               ; preds = %71
  %96 = load i8*, i8** @DDNS_URL_V6_GLOBAL, align 8
  store i8* %96, i8** %10, align 8
  %97 = call i32 (...) @IsUseAlternativeHostname()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** @DDNS_URL_V6_ALT, align 8
  store i8* %100, i8** %10, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %104, %101
  br label %107

107:                                              ; preds = %106, %94
  %108 = call i32 @Zero(i8* %26, i32 1)
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 15
  %114 = call i32 @Copy(i8* %26, i32* %113, i32 1)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 13
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  br i1 %124, label %125, label %160

125:                                              ; preds = %118
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 13
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %31, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %134 = icmp ne %struct.TYPE_15__* %133, null
  br i1 %134, label %135, label %159

135:                                              ; preds = %125
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 13
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = call i32 @SiIsAzureEnabled(%struct.TYPE_17__* %140)
  store i32 %141, i32* %24, align 4
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %135
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Lock(i32 %147)
  %149 = trunc i64 %65 to i32
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @StrCpy(i8* %66, i32 %149, i8* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @Unlock(i32 %156)
  br label %158

158:                                              ; preds = %144, %135
  br label %159

159:                                              ; preds = %158, %125
  br label %160

160:                                              ; preds = %159, %118
  br label %161

161:                                              ; preds = %160, %115
  %162 = call i32* (...) @NewPack()
  store i32* %162, i32** %14, align 8
  %163 = trunc i64 %46 to i32
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 11
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @BinToStr(i8* %47, i32 %163, i32* %166, i32 8)
  %168 = call i32 @StrUpper(i8* %47)
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @PackAddStr(i32* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 13
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %27, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = load i64, i64* %27, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @PackAddInt(i32* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load i32*, i32** %14, align 8
  %181 = call %struct.TYPE_18__* (...) @GetOsInfo()
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @PackAddInt(i32* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 (...) @Is64()
  %187 = call i32 @PackAddInt(i32* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @PackAddBool(i32* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @PackAddBool(i32* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @PackAddStr(i32* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 @PackAddStr(i32* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %196 = load i32*, i32** %14, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @PackAddInt(i32* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  %201 = load i32*, i32** %14, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @PackAddInt(i32* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %14, align 8
  %207 = load i32, i32* %24, align 4
  %208 = call i32 @PackAddBool(i32* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %207)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @PackAddStr(i32* %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* @DDNS_VERSION, align 4
  %213 = call i32 @PackAddInt(i32* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %212)
  %214 = load i32*, i32** %14, align 8
  %215 = call i32 @PackAddInt(i32* %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %216 = load i32, i32* %24, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %161
  %219 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %66)
  %220 = load i32*, i32** %14, align 8
  %221 = call i32 @PackAddStr(i32* %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %66)
  br label %222

222:                                              ; preds = %218, %161
  %223 = call i32 @StrLen(i8* %47)
  %224 = call i32 @Sha1(i32* %60, i8* %47, i32 %223)
  %225 = trunc i64 %62 to i32
  %226 = mul nuw i64 4, %59
  %227 = trunc i64 %226 to i32
  %228 = call i32 @BinToStr(i8* %63, i32 %225, i32* %60, i32 %227)
  %229 = call i32 @StrLower(i8* %63)
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %231 = icmp ne %struct.TYPE_12__* %230, null
  br i1 %231, label %232, label %245

232:                                              ; preds = %222
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @IsEmptyStr(i8* %235)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %232
  %239 = load i32*, i32** %14, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @PackAddStr(i32* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %238, %232
  br label %245

245:                                              ; preds = %244, %222
  %246 = trunc i64 %39 to i32
  %247 = load i8*, i8** %10, align 8
  %248 = call i32 (...) @Rand64()
  %249 = call i32 (i8*, i32, i8*, ...) @Format(i8* %41, i32 %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %247, i32 %248)
  %250 = trunc i64 %43 to i32
  %251 = getelementptr inbounds i8, i8* %63, i64 2
  %252 = load i8, i8* %251, align 2
  %253 = sext i8 %252 to i32
  %254 = getelementptr inbounds i8, i8* %63, i64 3
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = call i32 (i8*, i32, i8*, ...) @Format(i8* %44, i32 %250, i8* %41, i32 %253, i32 %256)
  %258 = trunc i64 %43 to i32
  %259 = call i32 @ReplaceStr(i8* %44, i32 %258, i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %260 = trunc i64 %43 to i32
  %261 = call i32 @ReplaceStr(i8* %44, i32 %260, i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %262 = load i32, i32* @DDNS_CERT_HASH, align 4
  %263 = call %struct.TYPE_14__* @StrToBin(i32 %262)
  store %struct.TYPE_14__* %263, %struct.TYPE_14__** %20, align 8
  %264 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %44)
  %265 = load i32, i32* @DDNS_CONNECT_TIMEOUT, align 4
  %266 = load i32, i32* @DDNS_COMM_TIMEOUT, align 4
  %267 = load i32*, i32** %14, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %269 = icmp ne %struct.TYPE_14__* %268, null
  br i1 %269, label %270, label %281

270:                                              ; preds = %245
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @SHA1_SIZE, align 4
  %275 = srem i32 %273, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  br label %282

281:                                              ; preds = %270, %245
  br label %282

282:                                              ; preds = %281, %277
  %283 = phi i32* [ %280, %277 ], [ null, %281 ]
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %285 = icmp ne %struct.TYPE_14__* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @SHA1_SIZE, align 4
  %291 = sdiv i32 %289, %290
  br label %293

292:                                              ; preds = %282
  br label %293

293:                                              ; preds = %292, %286
  %294 = phi i32 [ %291, %286 ], [ 0, %292 ]
  %295 = load i32, i32* @DDNS_RPC_MAX_RECV_SIZE, align 4
  %296 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %297 = getelementptr inbounds [64 x i8], [64 x i8]* %29, i64 0, i64 0
  %298 = load i32, i32* @DDNS_SNI_VER_STRING, align 4
  %299 = call i32* @WpcCallEx2(i8* %44, i8* %26, i32 %265, i32 %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32* %267, i32* null, i32* null, i32* %283, i32 %294, i32* null, i32 %295, i8* %296, i8* %297, i32 %298)
  store i32* %299, i32** %15, align 8
  %300 = load i32*, i32** %15, align 8
  %301 = bitcast i32* %300 to i8*
  %302 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* %301)
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %304 = call i32 @FreeBuf(%struct.TYPE_14__* %303)
  %305 = load i32*, i32** %14, align 8
  %306 = call i32 @FreePack(i32* %305)
  %307 = load i32*, i32** %15, align 8
  %308 = call i64 @GetErrorFromPack(i32* %307)
  store i64 %308, i64* %21, align 8
  %309 = load i32*, i32** %15, align 8
  %310 = call i32 @ExtractAndApplyDynList(i32* %309)
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @Lock(i32 %313)
  %315 = load i64, i64* %21, align 8
  %316 = load i64, i64* @ERR_NO_ERROR, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %438

318:                                              ; preds = %293
  %319 = load i32, i32* @MAX_SIZE, align 4
  %320 = zext i32 %319 to i64
  %321 = call i8* @llvm.stacksave()
  store i8* %321, i8** %32, align 8
  %322 = alloca i8, i64 %320, align 16
  store i64 %320, i64* %33, align 8
  %323 = load i32*, i32** %15, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 2
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @PackGetStr(i32* %323, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %326, i32 8)
  %328 = load i32*, i32** %15, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 3
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @PackGetStr(i32* %328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* %331, i32 8)
  %333 = load i32*, i32** %15, align 8
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 4
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @PackGetStr(i32* %333, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* %336, i32 8)
  %338 = load i32*, i32** %15, align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @PackGetStr(i32* %338, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* %341, i32 8)
  %343 = load i32*, i32** %15, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 6
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @PackGetStr(i32* %343, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* %346, i32 8)
  %348 = load i32*, i32** %15, align 8
  %349 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %350 = call i32 @PackGetStr(i32* %348, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* %349, i32 128)
  %351 = trunc i64 %320 to i32
  %352 = call i32 @Zero(i8* %322, i32 %351)
  %353 = load i32*, i32** %15, align 8
  %354 = trunc i64 %320 to i32
  %355 = call i32 @PackGetStr(i32* %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %322, i32 %354)
  %356 = call i32 @NnSetSecureNatTargetHostname(i8* %322)
  %357 = load i32, i32* %7, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %392

359:                                              ; preds = %318
  %360 = load i32, i32* @MAX_SIZE, align 4
  %361 = zext i32 %360 to i64
  %362 = call i8* @llvm.stacksave()
  store i8* %362, i8** %35, align 8
  %363 = alloca i8, i64 %361, align 16
  store i64 %361, i64* %36, align 8
  %364 = load i32*, i32** %15, align 8
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 7
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @PackGetStr(i32* %364, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %367, i32 8)
  %369 = load i32*, i32** %15, align 8
  %370 = call i32 @PackGetInt64(i32* %369, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0))
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 14
  store i32 %370, i32* %372, align 8
  %373 = load i32*, i32** %15, align 8
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 8
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @PackGetStr(i32* %373, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i8* %376, i32 8)
  %378 = trunc i64 %361 to i32
  %379 = call i32 @Zero(i8* %363, i32 %378)
  %380 = load i32*, i32** %15, align 8
  %381 = trunc i64 %361 to i32
  %382 = call i32 @PackGetStr(i32* %380, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* %363, i32 %381)
  %383 = call i32 @IsEmptyStr(i8* %363)
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %359
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 9
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @StrCpy(i8* %388, i32 8, i8* %363)
  br label %390

390:                                              ; preds = %385, %359
  %391 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %391)
  br label %392

392:                                              ; preds = %390, %318
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 13
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 1
  %397 = load i8*, i8** %396, align 8
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 3
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @StrCpy(i8* %397, i32 8, i8* %400)
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 2
  %404 = load i8*, i8** %403, align 8
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 3
  %407 = load i8*, i8** %406, align 8
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 4
  %410 = load i8*, i8** %409, align 8
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 5
  %413 = load i8*, i8** %412, align 8
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 7
  %416 = load i8*, i8** %415, align 8
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 14
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 8
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 9
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.36, i64 0, i64 0), i8* %404, i8* %407, i8* %410, i8* %413, i8* %416, i32 %419, i8* %422, i8* %425)
  %427 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %428 = call i32 @IsEmptyStr(i8* %427)
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %392
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 13
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %432, align 8
  %434 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %435 = call i32 @SiUpdateCurrentRegion(%struct.TYPE_16__* %433, i8* %434, i32 0)
  br label %436

436:                                              ; preds = %430, %392
  %437 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %437)
  br label %438

438:                                              ; preds = %436, %293
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 12
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @Unlock(i32 %441)
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 3
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @IsEmptyStr(i8* %445)
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %438
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 3
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @SetCurrentDDnsFqdn(i8* %451)
  br label %453

453:                                              ; preds = %448, %438
  %454 = load i32*, i32** %15, align 8
  %455 = call i32 @FreePack(i32* %454)
  %456 = load i64, i64* %21, align 8
  %457 = call i32 @_E(i64 %456)
  %458 = call i32 @UniDebug(i8* bitcast ([22 x i32]* @.str.37 to i8*), i32 %457)
  %459 = load i64, i64* %21, align 8
  %460 = load i64, i64* @ERR_DUPLICATE_DDNS_KEY, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %469

462:                                              ; preds = %453
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 11
  %465 = load i32*, i32** %464, align 8
  %466 = call i32 @DCGenNewKey(i32* %465)
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 10
  store i32 1, i32* %468, align 8
  br label %469

469:                                              ; preds = %462, %453
  %470 = load i64, i64* %21, align 8
  %471 = load i64, i64* @ERR_DISCONNECTED, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load i64, i64* @ERR_DDNS_DISCONNECTED, align 8
  store i64 %474, i64* %21, align 8
  br label %475

475:                                              ; preds = %473, %469
  %476 = call i32 (...) @IsUseAlternativeHostname()
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %537

478:                                              ; preds = %475
  %479 = load i64, i64* %21, align 8
  %480 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %536

482:                                              ; preds = %478
  %483 = load i32, i32* %7, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %535

485:                                              ; preds = %482
  %486 = load i8*, i8** %9, align 8
  %487 = icmp eq i8* %486, null
  br i1 %487, label %488, label %535

488:                                              ; preds = %485
  %489 = call i64 (...) @DetectFletsType()
  store i64 %489, i64* %37, align 8
  %490 = load i64, i64* %37, align 8
  %491 = load i64, i64* @FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE, align 8
  %492 = and i64 %490, %491
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %504

494:                                              ; preds = %488
  %495 = load i64, i64* %21, align 8
  %496 = load i64, i64* @ERR_NO_ERROR, align 8
  %497 = icmp ne i64 %495, %496
  br i1 %497, label %498, label %504

498:                                              ; preds = %494
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %500 = load i32, i32* %7, align 4
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %502 = load i8*, i8** @DDNS_REPLACE_URL_FOR_EAST_BFLETS, align 8
  %503 = call i64 @DCRegister(%struct.TYPE_13__* %499, i32 %500, %struct.TYPE_12__* %501, i8* %502)
  store i64 %503, i64* %21, align 8
  br label %504

504:                                              ; preds = %498, %494, %488
  %505 = load i64, i64* %37, align 8
  %506 = load i64, i64* @FLETS_DETECT_TYPE_EAST_NGN_PRIVATE, align 8
  %507 = and i64 %505, %506
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %519

509:                                              ; preds = %504
  %510 = load i64, i64* %21, align 8
  %511 = load i64, i64* @ERR_NO_ERROR, align 8
  %512 = icmp ne i64 %510, %511
  br i1 %512, label %513, label %519

513:                                              ; preds = %509
  %514 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %515 = load i32, i32* %7, align 4
  %516 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %517 = load i8*, i8** @DDNS_REPLACE_URL_FOR_EAST_NGN, align 8
  %518 = call i64 @DCRegister(%struct.TYPE_13__* %514, i32 %515, %struct.TYPE_12__* %516, i8* %517)
  store i64 %518, i64* %21, align 8
  br label %519

519:                                              ; preds = %513, %509, %504
  %520 = load i64, i64* %37, align 8
  %521 = load i64, i64* @FLETS_DETECT_TYPE_WEST_NGN_PRIVATE, align 8
  %522 = and i64 %520, %521
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %534

524:                                              ; preds = %519
  %525 = load i64, i64* %21, align 8
  %526 = load i64, i64* @ERR_NO_ERROR, align 8
  %527 = icmp ne i64 %525, %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %524
  %529 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %530 = load i32, i32* %7, align 4
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %532 = load i8*, i8** @DDNS_REPLACE_URL_FOR_WEST_NGN, align 8
  %533 = call i64 @DCRegister(%struct.TYPE_13__* %529, i32 %530, %struct.TYPE_12__* %531, i8* %532)
  store i64 %533, i64* %21, align 8
  br label %534

534:                                              ; preds = %528, %524, %519
  br label %535

535:                                              ; preds = %534, %485, %482
  br label %536

536:                                              ; preds = %535, %478
  br label %537

537:                                              ; preds = %536, %475
  %538 = load i64, i64* %21, align 8
  store i64 %538, i64* %5, align 8
  store i32 1, i32* %30, align 4
  br label %539

539:                                              ; preds = %537, %69
  %540 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %540)
  %541 = load i64, i64* %5, align 8
  ret i64 %541
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @GetCurrentMachineIpProcessHash(i32*) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @GetMachineHostName(i8*, i32) #2

declare dso_local i32 @StrLower(i8*) #2

declare dso_local i32 @IsUseAlternativeHostname(...) #2

declare dso_local i32 @Copy(i8*, i32*, i32) #2

declare dso_local i32 @SiIsAzureEnabled(%struct.TYPE_17__*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_18__* @GetOsInfo(...) #2

declare dso_local i32 @Is64(...) #2

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #2

declare dso_local i32 @Debug(i8*, i8*, ...) #2

declare dso_local i32 @Sha1(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, ...) #2

declare dso_local i32 @Rand64(...) #2

declare dso_local i32 @ReplaceStr(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_14__* @StrToBin(i32) #2

declare dso_local i32* @WpcCallEx2(i8*, i8*, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32*, i32, i8*, i8*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_14__*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i64 @GetErrorFromPack(i32*) #2

declare dso_local i32 @ExtractAndApplyDynList(i32*) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @NnSetSecureNatTargetHostname(i8*) #2

declare dso_local i32 @PackGetInt64(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @SiUpdateCurrentRegion(%struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @SetCurrentDDnsFqdn(i8*) #2

declare dso_local i32 @UniDebug(i8*, i32) #2

declare dso_local i32 @_E(i64) #2

declare dso_local i32 @DCGenNewKey(i32*) #2

declare dso_local i64 @DetectFletsType(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
