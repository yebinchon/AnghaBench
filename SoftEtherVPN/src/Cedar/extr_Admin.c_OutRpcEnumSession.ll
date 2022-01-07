; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcEnumSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcEnumSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SessionList\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ClientIP\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MaxNumTcp\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"CurrentNumTcp\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PacketSize\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"PacketNum\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"RemoteSession\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RemoteHostname\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"LinkMode\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"SecureNATMode\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"BridgeMode\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Layer3Mode\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Client_BridgeMode\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Client_MonitorMode\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"UniqueId\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"IsDormantEnabled\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"IsDormant\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"LastCommDormant\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcEnumSession(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %254

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PackAddStr(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PackSetCurrentJsonGroupName(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %248, %13
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %251

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %6, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 23
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PackAddStrEx(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %37, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 22
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @PackAddStrEx(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %45, i64 %46, i64 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 21
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PackAddIp32Ex(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %54, i64 %55, i64 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 20
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @PackAddIpEx(i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %62, i64 %63, i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @PackAddStrEx(i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %71, i64 %72, i64 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @PackAddIntEx(i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %80, i64 %81, i64 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @PackAddIntEx(i32* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %89, i64 %90, i64 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 16
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @PackAddInt64Ex(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %98, i64 %99, i64 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @PackAddInt64Ex(i32* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %107, i64 %108, i64 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 14
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @PackAddBoolEx(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %116, i64 %117, i64 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @PackAddStrEx(i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %125, i64 %126, i64 %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @PackAddBoolEx(i32* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %134, i64 %135, i64 %138)
  %140 = load i32*, i32** %3, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %5, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @PackAddBoolEx(i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %143, i64 %144, i64 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %5, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @PackAddBoolEx(i32* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %152, i64 %153, i64 %156)
  %158 = load i32*, i32** %3, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %5, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @PackAddBoolEx(i32* %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %161, i64 %162, i64 %165)
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %5, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @PackAddBoolEx(i32* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %170, i64 %171, i64 %174)
  %176 = load i32*, i32** %3, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %5, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @PackAddBoolEx(i32* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %179, i64 %180, i64 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %5, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @PackAddIntEx(i32* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %188, i64 %189, i64 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @PackAddDataEx(i32* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %197, i32 4, i64 %198, i64 %201)
  %203 = load i32*, i32** %3, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i64, i64* %5, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @PackAddBoolEx(i32* %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %206, i64 %207, i64 %210)
  %212 = load i32*, i32** %3, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i64, i64* %5, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @PackAddBoolEx(i32* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %215, i64 %216, i64 %219)
  %221 = load i32*, i32** %3, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i64, i64* %5, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @PackAddTime64Ex(i32* %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %224, i64 %225, i64 %228)
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* %5, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @PackAddTime64Ex(i32* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %233, i64 %234, i64 %237)
  %239 = load i32*, i32** %3, align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i64, i64* %5, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @PackAddTime64Ex(i32* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %242, i64 %243, i64 %246)
  br label %248

248:                                              ; preds = %27
  %249 = load i64, i64* %5, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %5, align 8
  br label %21

251:                                              ; preds = %21
  %252 = load i32*, i32** %3, align 8
  %253 = call i32 @PackSetCurrentJsonGroupName(i32* %252, i8* null)
  br label %254

254:                                              ; preds = %251, %12
  ret void
}

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddIp32Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddIpEx(i32*, i8*, i32*, i64, i64) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddInt64Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddBoolEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddDataEx(i32*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @PackAddTime64Ex(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
