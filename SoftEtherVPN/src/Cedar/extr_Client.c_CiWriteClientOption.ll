; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteClientOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteClientOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PortUDP\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ProxyName\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NumRetry\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"RetryInterval\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"UseEncrypt\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"UseCompress\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"HalfConnection\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"NoRoutingTracking\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"AdditionalConnectionInterval\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"HideStatusWindow\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"HideNicInfoWindow\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"ConnectionDisconnectSpan\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"RequireMonitorMode\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"RequireBridgeRoutingMode\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"DisableQoS\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"NoUdpAcceleration\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"FromAdminPack\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"HostUniqueKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiWriteClientOption(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %186

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 28
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CfgAddUniStr(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 27
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CfgAddStr(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 26
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CfgAddInt(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 25
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CfgAddInt(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 24
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CfgAddInt(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 23
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @CfgAddStr(i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 22
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CfgAddInt(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 21
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @CfgAddStr(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 20
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_9__* @EncryptPassword(i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CfgAddByte(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call i32 @FreeBuf(%struct.TYPE_9__* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @CfgAddStr(i32* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 18
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CfgAddInt(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @CfgAddInt(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 16
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CfgAddStr(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 15
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @CfgAddInt(i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 14
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @CfgAddBool(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 13
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @CfgAddBool(i32* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 12
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @CfgAddBool(i32* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 11
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @CfgAddBool(i32* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CfgAddStr(i32* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @CfgAddInt(i32* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @CfgAddBool(i32* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i64 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @CfgAddBool(i32* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i64 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @CfgAddInt(i32* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @CfgAddBool(i32* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i64 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @CfgAddBool(i32* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i64 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @CfgAddBool(i32* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i64 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @CfgAddBool(i32* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i64 %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %13
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @CfgAddBool(i32* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %162, %13
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SHA1_SIZE, align 4
  %173 = call i32 @IsZero(i32 %171, i32 %172)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %168
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SHA1_SIZE, align 4
  %180 = call %struct.TYPE_9__* @MemToBuf(i32 %178, i32 %179)
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %6, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = call i32 @CfgAddBuf(i32* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), %struct.TYPE_9__* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = call i32 @FreeBuf(%struct.TYPE_9__* %184)
  br label %186

186:                                              ; preds = %12, %175, %168
  ret void
}

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @EncryptPassword(i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i64) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local %struct.TYPE_9__* @MemToBuf(i32, i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
