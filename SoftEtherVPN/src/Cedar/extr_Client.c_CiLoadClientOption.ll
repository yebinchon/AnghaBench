; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

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
@.str.26 = private unnamed_addr constant [14 x i8] c"FromAdminPack\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"NoUdpAcceleration\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"HostUniqueKey\00", align 1
@SHA1_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @CiLoadClientOption(i32* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %164

10:                                               ; preds = %1
  %11 = call %struct.TYPE_8__* @ZeroMalloc(i32 216)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 28
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CfgGetUniStr(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 4)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 27
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @CfgGetStr(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 4)
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @CfgGetInt(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 26
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @CfgGetInt(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 25
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @CfgGetInt(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 24
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 23
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @CfgGetStr(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32 4)
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @CfgGetInt(i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 22
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 21
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CfgGetStr(i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 4)
  %48 = load i32*, i32** %3, align 8
  %49 = call %struct.TYPE_9__* @CfgGetBuf(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = call i8* @DecryptPassword(%struct.TYPE_9__* %50)
  store i8* %51, i8** %5, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 20
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @StrCpy(i32 %54, i32 4, i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @Free(i8* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = call i32 @FreeBuf(%struct.TYPE_9__* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 19
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @CfgGetStr(i32* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %64, i32 4)
  %66 = load i32*, i32** %3, align 8
  %67 = call i8* @CfgGetInt(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 18
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i8* @CfgGetInt(i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 17
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 16
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @CfgGetStr(i32* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %77, i32 4)
  %79 = load i32*, i32** %3, align 8
  %80 = call i8* @CfgGetInt(i32* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @CfgGetBool(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i8* @CfgGetBool(i32* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 13
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i8* @CfgGetBool(i32* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = call i8* @CfgGetBool(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 11
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @CfgGetStr(i32* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %102, i32 4)
  %104 = load i32*, i32** %3, align 8
  %105 = call i8* @CfgGetInt(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = call i8* @CfgGetBool(i32* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 8
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i8* @CfgGetBool(i32* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = call i8* @CfgGetInt(i32* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i8* @CfgGetBool(i32* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = call i8* @CfgGetBool(i32* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = call i8* @CfgGetBool(i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = call i8* @CfgGetBool(i32* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = call i8* @CfgGetBool(i32* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = call %struct.TYPE_9__* @CfgGetBuf(i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %6, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %10
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SHA1_SIZE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* @SHA1_SIZE, align 8
  %158 = call i32 @Copy(i32 %153, i32 %156, i64 %157)
  br label %159

159:                                              ; preds = %150, %144
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = call i32 @FreeBuf(%struct.TYPE_9__* %160)
  br label %162

162:                                              ; preds = %159, %10
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %2, align 8
  br label %164

164:                                              ; preds = %162, %9
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %165
}

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i32 @CfgGetUniStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @CfgGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @CfgGetBuf(i32*, i8*) #1

declare dso_local i8* @DecryptPassword(%struct.TYPE_9__*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i32 @Copy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
