; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ProxyName\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PortUDP\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"NumRetry\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"RetryInterval\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"UseEncrypt\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"UseCompress\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"HalfConnection\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"NoRoutingTracking\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"AdditionalConnectionInterval\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"ConnectionDisconnectSpan\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"HideStatusWindow\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"HideNicInfoWindow\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"RequireMonitorMode\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"RequireBridgeRoutingMode\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"DisableQoS\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"FromAdminPack\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"NoUdpAcceleration\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"HostUniqueKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcClientOption(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %158

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 28
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PackAddUniStr(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 27
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PackAddStr(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 26
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PackAddStr(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 25
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PackAddStr(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 24
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PackAddStr(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 23
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PackAddStr(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 22
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PackAddStr(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 21
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PackAddStr(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 20
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PackAddInt(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 19
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PackAddInt(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 18
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PackAddInt(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 17
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PackAddInt(i32* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 16
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PackAddInt(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PackAddInt(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 14
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PackAddInt(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PackAddBool(i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 12
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PackAddBool(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PackAddBool(i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PackAddBool(i32* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PackAddInt(i32* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @PackAddInt(i32* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PackAddBool(i32* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @PackAddBool(i32* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @PackAddBool(i32* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %3, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @PackAddBool(i32* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @PackAddBool(i32* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @PackAddBool(i32* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @PackAddBool(i32* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SHA1_SIZE, align 4
  %157 = call i32 @PackAddData(i32* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
