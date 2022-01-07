; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackWelcome.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackWelcome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64, i64, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"session_name\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"connection_name\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"max_connection\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"use_encrypt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"use_compress\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"half_connection\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"qos\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"is_azure_session\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"session_key\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"session_key_32\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"vlan_id\00", align 1
@CONNECTION_UDP = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"udp_send_key\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"udp_recv_key\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"no_send_signature\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"IpcMacAddress\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"IpcHubName\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"use_udp_acceleration\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"udp_acceleration_server_ip\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"udp_acceleration_server_port\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"udp_acceleration_server_key\00", align 1
@UDP_ACCELERATION_COMMON_KEY_SIZE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [31 x i8] c"udp_acceleration_server_cookie\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"udp_acceleration_client_cookie\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"udp_acceleration_use_encryption\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"use_hmac_on_udp_acceleration\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"udp_accel_fast_disconnect_detect\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"enable_bulk_on_rudp\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"enable_hmac_on_bulk_of_rudp\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"bulk_on_rudp_send_key\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"bulk_on_rudp_recv_key\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"azure_real_server_global_ip\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"enable_udp_recovery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackWelcome(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = icmp eq %struct.TYPE_15__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %280

9:                                                ; preds = %1
  %10 = call i32* (...) @NewPack()
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 23
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @PackAddStr(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 11
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PackAddStr(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PackAddInt(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = call i32 @PackAddInt(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = call i32 @PackAddInt(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = call i32 @PackAddInt(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PackAddInt(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 22
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = call i32 @PackAddInt(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PackAddInt(i32* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 21
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SHA1_SIZE, align 4
  %75 = call i32 @PackAddData(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PackAddInt(i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PackAddPolicy(i32* %81, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PackAddInt(i32* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 11
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CONNECTION_UDP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %9
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 18
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @Rand(i32 %101, i32 4)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 19
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @Rand(i32 %105, i32 4)
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 19
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PackAddData(i32* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %110, i32 4)
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 18
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PackAddData(i32* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %115, i32 4)
  br label %117

117:                                              ; preds = %98, %9
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 17
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @PackAddBool(i32* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 1)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 16
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @PackAddData(i32* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %134, i32 6)
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 14
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @PackAddStr(i32* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %130, %125
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 13
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %148, label %208

148:                                              ; preds = %143
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @PackAddBool(i32* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 13
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 6
  %156 = call i32 @PackAddIp(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32* %155)
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 13
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PackAddInt(i32* %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %4, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 13
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @UDP_ACCELERATION_COMMON_KEY_SIZE, align 4
  %171 = call i32 @PackAddData(i32* %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 13
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @PackAddInt(i32* %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 13
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @PackAddInt(i32* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %184)
  %186 = load i32*, i32** %4, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 13
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 @PackAddBool(i32* %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %194)
  %196 = load i32*, i32** %4, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 13
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @PackAddBool(i32* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %4, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @PackAddBool(i32* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %148, %143
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %208
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @PackAddBool(i32* %214, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @PackAddBool(i32* %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %219)
  %221 = load i32*, i32** %4, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 11
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SHA1_SIZE, align 4
  %232 = call i32 @PackAddData(i32* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32*, i32** %4, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 11
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SHA1_SIZE, align 4
  %244 = call i32 @PackAddData(i32* %233, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %213, %208
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %273

250:                                              ; preds = %245
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 11
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = icmp ne %struct.TYPE_13__* %253, null
  br i1 %254, label %255, label %272

255:                                              ; preds = %250
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 11
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = icmp ne %struct.TYPE_14__* %260, null
  br i1 %261, label %262, label %272

262:                                              ; preds = %255
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 11
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  store %struct.TYPE_14__* %267, %struct.TYPE_14__** %5, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = call i32 @PackAddIp(i32* %268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32* %270)
  br label %272

272:                                              ; preds = %262, %255, %250
  br label %273

273:                                              ; preds = %272, %245
  %274 = load i32*, i32** %4, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @PackAddBool(i32* %274, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %277)
  %279 = load i32*, i32** %4, align 8
  store i32* %279, i32** %2, align 8
  br label %280

280:                                              ; preds = %273, %8
  %281 = load i32*, i32** %2, align 8
  ret i32* %281
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackAddPolicy(i32*, i32) #1

declare dso_local i32 @Rand(i32, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #1

declare dso_local i32 @PackAddIp(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
