; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PortUDP\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NumRetry\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"RetryInterval\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"AdditionalConnectionInterval\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"ConnectionDisconnectSpan\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"HideStatusWindow\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"HideNicInfoWindow\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DisableQoS\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ProxyName\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"UseEncrypt\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"UseCompress\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"HalfConnection\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"NoRoutingTracking\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"RequireMonitorMode\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"RequireBridgeRoutingMode\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"FromAdminPack\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"NoUdpAcceleration\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"HostUniqueKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientOption(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %152

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 184)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 28
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PackGetUniStr(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 27
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PackGetStr(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @PackGetInt(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 26
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @PackGetInt(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 25
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @PackGetInt(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 24
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @PackGetInt(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 23
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @PackGetInt(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 22
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @PackGetInt(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 21
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @PackGetInt(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 20
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @PackGetInt(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 19
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @PackGetInt(i32* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 18
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* @PackGetBool(i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 17
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @PackGetBool(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 16
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @PackGetBool(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 15
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 14
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PackGetStr(i32* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %75, i32 4)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 13
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PackGetStr(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %80, i32 4)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PackGetStr(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %85, i32 4)
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PackGetStr(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %90, i32 4)
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PackGetStr(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %95, i32 4)
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PackGetStr(i32* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %100, i32 4)
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @PackGetInt(i32* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %104 = icmp ne i8* %103, null
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i8* @PackGetInt(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %111 = icmp ne i8* %110, null
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @PackGetInt(i32* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %118 = icmp ne i8* %117, null
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i8* @PackGetInt(i32* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %125 = icmp ne i8* %124, null
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = call i8* @PackGetBool(i32* %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = call i8* @PackGetBool(i32* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i8* @PackGetBool(i32* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i8* @PackGetBool(i32* %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SHA1_SIZE, align 4
  %151 = call i32 @PackGetData2(i32* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetUniStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
