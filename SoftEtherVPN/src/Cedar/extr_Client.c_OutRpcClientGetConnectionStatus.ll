; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientGetConnectionStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientGetConnectionStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ServerProductName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CipherName\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ConnectionName\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SessionKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"SessionStatus\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ServerPort\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"ServerProductVer\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ServerProductBuild\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"NumConnectionsEstablished\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"HalfConnection\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"QoS\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"MaxTcpConnections\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"NumTcpConnectionsUpload\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"NumTcpConnectionsDownload\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"UseEncrypt\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"UseCompress\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"IsRUDPSession\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"UnderlayProtocol\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"IsUdpAccelerationEnabled\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"IsUsingUdpAcceleration\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"IsBridgeMode\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"IsMonitorMode\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"StartTime\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"FirstConnectionEstablisiedTime\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"CurrentConnectionEstablishTime\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"TotalSendSize\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"TotalRecvSize\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"TotalSendSizeReal\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"TotalRecvSizeReal\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ServerX\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ClientX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcClientGetConnectionStatus(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %231

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 39
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PackAddUniStr(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 38
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PackAddStr(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 37
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PackAddStr(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 36
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PackAddStr(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 35
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PackAddStr(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 34
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PackAddStr(i32* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 33
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SHA1_SIZE, align 4
  %48 = call i32 @PackAddData(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 32
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PackAddBool(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 31
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PackAddBool(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 30
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PackAddInt(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 29
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PackAddInt(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 28
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PackAddInt(i32* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 27
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PackAddInt(i32* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 26
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PackAddInt(i32* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 25
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PackAddBool(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 24
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PackAddBool(i32* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 23
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PackAddInt(i32* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 22
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PackAddInt(i32* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 21
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PackAddInt(i32* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @PackAddInt(i32* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 19
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PackAddBool(i32* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 18
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @PackAddBool(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 17
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @PackAddBool(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 16
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @PackAddStr(i32* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 15
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PackAddBool(i32* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @PackAddBool(i32* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @PackAddBool(i32* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @PackAddBool(i32* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @PackAddTime64(i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @PackAddTime64(i32* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %3, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @PackAddTime64(i32* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @PackAddInt64(i32* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** %3, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @PackAddInt64(i32* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %177)
  %179 = load i32*, i32** %3, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @PackAddInt64(i32* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %3, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @PackAddInt64(i32* %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @PackAddInt(i32* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = call i32 @OutRpcPolicy(i32* %194, i32* %196)
  %198 = load i32*, i32** %3, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = call i32 @OutRpcTraffic(i32* %198, i32* %200)
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %12
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i32* @XToBuf(i32* %209, i32 0)
  store i32* %210, i32** %5, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = load i32*, i32** %5, align 8
  %213 = call i32 @PackAddBuf(i32* %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32* %212)
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 @FreeBuf(i32* %214)
  br label %216

216:                                              ; preds = %206, %12
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = call i32* @XToBuf(i32* %224, i32 0)
  store i32* %225, i32** %5, align 8
  %226 = load i32*, i32** %3, align 8
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @PackAddBuf(i32* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32* %227)
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @FreeBuf(i32* %229)
  br label %231

231:                                              ; preds = %11, %221, %216
  ret void
}

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddTime64(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @OutRpcPolicy(i32*, i32*) #1

declare dso_local i32 @OutRpcTraffic(i32*, i32*) #1

declare dso_local i32* @XToBuf(i32*, i32) #1

declare dso_local i32 @PackAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
