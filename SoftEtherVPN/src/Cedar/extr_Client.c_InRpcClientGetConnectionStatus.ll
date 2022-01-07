; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientGetConnectionStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientGetConnectionStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ServerProductName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CipherName\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ConnectionName\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SessionKey\00", align 1
@SHA1_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"SessionStatus\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ServerPort\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ServerProductVer\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ServerProductBuild\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"NumConnectionsEstablished\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"MaxTcpConnections\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"NumTcpConnectionsUpload\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"NumTcpConnectionsDownload\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"StartTime\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"FirstConnectionEstablisiedTime\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"CurrentConnectionEstablishTime\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"TotalSendSize\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"TotalRecvSize\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"TotalSendSizeReal\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"TotalRecvSizeReal\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"HalfConnection\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"QoS\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"UseEncrypt\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"UseCompress\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"IsRUDPSession\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"UnderlayProtocol\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"IsUdpAccelerationEnabled\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"IsUsingUdpAcceleration\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"IsBridgeMode\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"IsMonitorMode\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ServerX\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ClientX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientGetConnectionStatus(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %232

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @Zero(%struct.TYPE_4__* %13, i32 256)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 39
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PackGetUniStr(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18, i32 4)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 38
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PackGetStr(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 37
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PackGetStr(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 4)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 36
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PackGetStr(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 4)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 35
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PackGetStr(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 4)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 34
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PackGetStr(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 4)
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @PackGetDataSize(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i64, i64* @SHA1_SIZE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %12
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 33
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PackGetData(i32* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %12
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @PackGetInt(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 32
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* @PackGetInt(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 31
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @PackGetInt(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 30
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @PackGetInt(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 29
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @PackGetInt(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 28
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @PackGetInt(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 27
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @PackGetInt(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 26
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i8* @PackGetInt(i32* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 25
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i8* @PackGetInt(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 24
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i8* @PackGetInt64(i32* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 23
  store i8* %93, i8** %95, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i8* @PackGetInt64(i32* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 22
  store i8* %97, i8** %99, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i8* @PackGetInt64(i32* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 21
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i8* @PackGetInt64(i32* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 20
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i8* @PackGetInt64(i32* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 19
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @PackGetInt64(i32* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 18
  store i8* %113, i8** %115, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @PackGetInt64(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 17
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i8* @PackGetInt(i32* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = call i8* @PackGetInt(i32* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %129 = icmp ne i8* %128, null
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = call i8* @PackGetInt(i32* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %136 = icmp ne i8* %135, null
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i8* @PackGetInt(i32* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %143 = icmp ne i8* %142, null
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32*, i32** %4, align 8
  %149 = call i8* @PackGetInt(i32* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %150 = icmp ne i8* %149, null
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i8* @PackGetInt(i32* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %157 = icmp ne i8* %156, null
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = call i8* @PackGetInt(i32* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %164 = icmp ne i8* %163, null
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 16
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @PackGetStr(i32* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %172, i32 4)
  %174 = load i32*, i32** %4, align 8
  %175 = call i8* @PackGetInt(i32* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  %176 = icmp ne i8* %175, null
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = call i8* @PackGetInt(i32* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0))
  %183 = icmp ne i8* %182, null
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 8
  %188 = load i32*, i32** %4, align 8
  %189 = call i8* @PackGetBool(i32* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 15
  store i8* %189, i8** %191, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = call i8* @PackGetBool(i32* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 14
  store i8* %193, i8** %195, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = call i8* @PackGetInt(i32* %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 13
  store i8* %197, i8** %199, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = call i32* @PackGetBuf(i32* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  store i32* %201, i32** %5, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %55
  %205 = load i32*, i32** %5, align 8
  %206 = call i8* @BufToX(i32* %205, i32 0)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 12
  store i8* %206, i8** %208, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @FreeBuf(i32* %209)
  br label %211

211:                                              ; preds = %204, %55
  %212 = load i32*, i32** %4, align 8
  %213 = call i32* @PackGetBuf(i32* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  store i32* %213, i32** %5, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load i32*, i32** %5, align 8
  %218 = call i8* @BufToX(i32* %217, i32 0)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 11
  store i8* %218, i8** %220, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @FreeBuf(i32* %221)
  br label %223

223:                                              ; preds = %216, %211
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 10
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @InRpcPolicy(i32* %225, i32* %226)
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 9
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @InRpcTraffic(i32* %229, i32* %230)
  br label %232

232:                                              ; preds = %223, %11
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetUniStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i64 @PackGetDataSize(i32*, i8*) #1

declare dso_local i32 @PackGetData(i32*, i8*, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i8* @PackGetInt64(i32*, i8*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i32* @PackGetBuf(i32*, i8*) #1

declare dso_local i8* @BufToX(i32*, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @InRpcPolicy(i32*, i32*) #1

declare dso_local i32 @InRpcTraffic(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
