; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientUploadAuth.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientUploadAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, i32*, i8*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_21__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i8*, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_SECURE_DEVICE_OPEN_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"authtype\00", align 1
@AUTHTYPE_TICKET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"ticket\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"client_id\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"max_connection\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"use_encrypt\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"use_compress\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"half_connection\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"require_bridge_routing_mode\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"require_monitor_mode\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"qos\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"support_bulk_on_rudp\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"support_hmac_on_bulk_of_rudp\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"support_udp_recovery\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"unique_id\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"use_udp_acceleration\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"udp_acceleration_client_ip\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"udp_acceleration_client_port\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"udp_acceleration_client_key\00", align 1
@UDP_ACCELERATION_COMMON_KEY_SIZE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [33 x i8] c"support_hmac_on_udp_acceleration\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"support_udp_accel_fast_disconnect_detect\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"BRANDED_C_TO_S\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"branded_ctos\00", align 1
@ERR_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientUploadAuth(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [512 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* null, i32** %4, align 8
  %18 = load i32, i32* @SHA1_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @SHA1_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = icmp eq %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %406

28:                                               ; preds = %1
  %29 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %30 = call i32 @Zero(i32* %29, i32 2048)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %5, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %6, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %191

45:                                               ; preds = %28
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %190 [
    i32 132, label %49
    i32 130, label %57
    i32 129, label %72
    i32 131, label %83
    i32 128, label %153
  ]

49:                                               ; preds = %45
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32* @PackLoginWithAnonymous(i8* %52, i8* %55)
  store i32* %56, i32** %4, align 8
  br label %190

57:                                               ; preds = %45
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SecurePassword(i32* %21, i32 %60, i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32* @PackLoginWithPassword(i8* %67, i8* %70, i32* %21)
  store i32* %71, i32** %4, align 8
  br label %190

72:                                               ; preds = %45
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @PackLoginWithPlainPassword(i8* %75, i8* %78, i32 %81)
  store i32* %82, i32** %4, align 8
  br label %190

83:                                               ; preds = %45
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = icmp ne %struct.TYPE_19__* %86, null
  br i1 %87, label %88, label %152

88:                                               ; preds = %83
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %152

95:                                               ; preds = %88
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %152

102:                                              ; preds = %95
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 8
  %109 = sext i32 %108 to i64
  %110 = icmp ule i64 %109, 2048
  br i1 %110, label %111, label %152

111:                                              ; preds = %102
  %112 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SHA1_SIZE, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @RsaSignEx(i32* %112, i32 %115, i32 %116, i32 %119, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %111
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 8
  %144 = call i32* @PackLoginWithCert(i8* %130, i8* %133, %struct.TYPE_19__* %136, i32* %137, i32 %143)
  store i32* %144, i32** %4, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = call i8* @CloneX(%struct.TYPE_19__* %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %127, %111
  br label %152

152:                                              ; preds = %151, %102, %95, %88, %83
  br label %190

153:                                              ; preds = %45
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ClientSecureSign(%struct.TYPE_20__* %154, i32* %155, i32 %158, %struct.TYPE_19__** %7)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %153
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %169 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sdiv i32 %172, 8
  %174 = call i32* @PackLoginWithCert(i8* %164, i8* %167, %struct.TYPE_19__* %168, i32* %169, i32 %173)
  store i32* %174, i32** %4, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = call i8* @CloneX(%struct.TYPE_19__* %175)
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 10
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = call i32 @FreeX(%struct.TYPE_19__* %179)
  br label %189

181:                                              ; preds = %153
  %182 = load i64, i64* @ERR_SECURE_DEVICE_OPEN_FAILED, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %181, %161
  br label %190

190:                                              ; preds = %45, %189, %152, %72, %57, %49
  br label %214

191:                                              ; preds = %28
  %192 = call i32* (...) @NewPack()
  store i32* %192, i32** %4, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @PackAddStr(i32* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @PackAddStr(i32* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %198)
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @PackAddStr(i32* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %203)
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* @AUTHTYPE_TICKET, align 4
  %207 = call i32 @PackAddInt(i32* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  %208 = load i32*, i32** %4, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 9
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* @SHA1_SIZE, align 4
  %213 = call i32 @PackAddData(i32* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %211, i32 %212)
  br label %214

214:                                              ; preds = %191, %190
  %215 = load i32*, i32** %4, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ERR_SECURE_DEVICE_OPEN_FAILED, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %223, %217
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %406

228:                                              ; preds = %214
  %229 = load i32*, i32** %4, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %231 = call i32 @PackAddClientVersion(i32* %229, %struct.TYPE_20__* %230)
  %232 = load i32*, i32** %4, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @PackAddInt(i32* %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %235)
  %237 = load i32*, i32** %4, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 3
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @PackAddStr(i32* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %240)
  %242 = load i32*, i32** %4, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @PackAddInt(i32* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %4, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @PackAddInt(i32* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %4, align 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @PackAddInt(i32* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %257)
  %259 = load i32*, i32** %4, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @PackAddInt(i32* %259, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %262)
  %264 = load i32*, i32** %4, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 0, i32 1
  %271 = call i32 @PackAddInt(i32* %264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %4, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 0
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i32 0, i32 1
  %279 = call i32 @PackAddInt(i32* %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %278)
  %280 = load i32*, i32** %4, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i32 0, i32 1
  %287 = call i32 @PackAddInt(i32* %280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %286)
  %288 = load i32*, i32** %4, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @PackAddBool(i32* %288, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %291)
  %293 = load i32*, i32** %4, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @PackAddBool(i32* %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %296)
  %298 = load i32*, i32** %4, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 8
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 0, i32 1
  %305 = call i32 @PackAddBool(i32* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %304)
  %306 = load i32*, i32** %4, align 8
  %307 = call i32 @PackAddBool(i32* %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @PackAddBool(i32* %308, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 1)
  %310 = load i32*, i32** %4, align 8
  %311 = call i32 @PackAddBool(i32* %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 1)
  %312 = call i32 @GenerateMachineUniqueHash(i32* %24)
  %313 = load i32*, i32** %4, align 8
  %314 = load i32, i32* @SHA1_SIZE, align 4
  %315 = call i32 @PackAddData(i32* %313, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32* %24, i32 %314)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %374

320:                                              ; preds = %228
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 7
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %324, align 8
  %326 = icmp ne %struct.TYPE_17__* %325, null
  br i1 %326, label %327, label %374

327:                                              ; preds = %320
  %328 = call i32 @Zero(i32* %16, i32 4)
  %329 = load i32*, i32** %4, align 8
  %330 = call i32 @PackAddBool(i32* %329, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 1)
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 7
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 2
  %337 = call i32 @Copy(i32* %16, i32* %336, i32 4)
  %338 = call i64 @IsLocalHostIP(i32* %16)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %327
  %341 = call i64 @IsIP4(i32* %16)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  %344 = call i32 @ZeroIP4(i32* %16)
  br label %347

345:                                              ; preds = %340
  %346 = call i32 @ZeroIP6(i32* %16)
  br label %347

347:                                              ; preds = %345, %343
  br label %348

348:                                              ; preds = %347, %327
  %349 = load i32*, i32** %4, align 8
  %350 = call i32 @PackAddIp(i32* %349, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32* %16)
  %351 = load i32*, i32** %4, align 8
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 7
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @PackAddInt(i32* %351, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %358)
  %360 = load i32*, i32** %4, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 7
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* @UDP_ACCELERATION_COMMON_KEY_SIZE, align 4
  %369 = call i32 @PackAddData(i32* %360, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32* %367, i32 %368)
  %370 = load i32*, i32** %4, align 8
  %371 = call i32 @PackAddBool(i32* %370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %372 = load i32*, i32** %4, align 8
  %373 = call i32 @PackAddBool(i32* %372, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i32 1)
  br label %374

374:                                              ; preds = %348, %320, %228
  %375 = call i8* @_SS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  store i8* %375, i8** %17, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = call i64 @StrLen(i8* %376)
  %378 = icmp sgt i64 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load i32*, i32** %4, align 8
  %381 = load i8*, i8** %17, align 8
  %382 = call i32 @PackAddStr(i32* %380, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* %381)
  br label %383

383:                                              ; preds = %379, %374
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %385 = call i32 @CreateNodeInfo(i32* %9, %struct.TYPE_20__* %384)
  %386 = load i32*, i32** %4, align 8
  %387 = call i32 @OutRpcNodeInfo(i32* %386, i32* %9)
  %388 = call i32 @GetWinVer(i32* %14)
  %389 = load i32*, i32** %4, align 8
  %390 = call i32 @OutRpcWinVer(i32* %389, i32* %14)
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 8
  %394 = load i32*, i32** %4, align 8
  %395 = call i32 @HttpClientSend(i32 %393, i32* %394)
  store i32 %395, i32* %8, align 4
  %396 = load i32, i32* %8, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %383
  %399 = load i64, i64* @ERR_DISCONNECTED, align 8
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 1
  store i64 %399, i64* %401, align 8
  br label %402

402:                                              ; preds = %398, %383
  %403 = load i32*, i32** %4, align 8
  %404 = call i32 @FreePack(i32* %403)
  %405 = load i32, i32* %8, align 4
  store i32 %405, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %406

406:                                              ; preds = %402, %227, %27
  %407 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %407)
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32* @PackLoginWithAnonymous(i8*, i8*) #2

declare dso_local i32 @SecurePassword(i32*, i32, i32) #2

declare dso_local i32* @PackLoginWithPassword(i8*, i8*, i32*) #2

declare dso_local i32* @PackLoginWithPlainPassword(i8*, i8*, i32) #2

declare dso_local i32 @RsaSignEx(i32*, i32, i32, i32, i32) #2

declare dso_local i32* @PackLoginWithCert(i8*, i8*, %struct.TYPE_19__*, i32*, i32) #2

declare dso_local i8* @CloneX(%struct.TYPE_19__*) #2

declare dso_local i32 @ClientSecureSign(%struct.TYPE_20__*, i32*, i32, %struct.TYPE_19__**) #2

declare dso_local i32 @FreeX(%struct.TYPE_19__*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #2

declare dso_local i32 @PackAddData(i32*, i8*, i32*, i32) #2

declare dso_local i32 @PackAddClientVersion(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #2

declare dso_local i32 @GenerateMachineUniqueHash(i32*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i64 @IsLocalHostIP(i32*) #2

declare dso_local i64 @IsIP4(i32*) #2

declare dso_local i32 @ZeroIP4(i32*) #2

declare dso_local i32 @ZeroIP6(i32*) #2

declare dso_local i32 @PackAddIp(i32*, i8*, i32*) #2

declare dso_local i8* @_SS(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @CreateNodeInfo(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @OutRpcNodeInfo(i32*, i32*) #2

declare dso_local i32 @GetWinVer(i32*) #2

declare dso_local i32 @OutRpcWinVer(i32*, i32*) #2

declare dso_local i32 @HttpClientSend(i32, i32*) #2

declare dso_local i32 @FreePack(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
