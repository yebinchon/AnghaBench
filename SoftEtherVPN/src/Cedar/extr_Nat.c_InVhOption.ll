; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InVhOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InVhOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"MacAddress\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"UseNat\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Mtu\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"NatTcpTimeout\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NatUdpTimeout\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UseDhcp\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"DhcpLeaseIPStart\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DhcpLeaseIPEnd\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"DhcpSubnetMask\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"DhcpExpireTimeSpan\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"DhcpGatewayAddress\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DhcpDnsServerAddress\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"DhcpDnsServerAddress2\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"DhcpDomainName\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SaveLog\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"RpcHubName\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"ApplyDhcpPushRoutes\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"DhcpPushRoutes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InVhOption(%struct.TYPE_4__* %0, i32* %1) #0 {
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
  br label %98

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 128)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 19
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PackGetData2(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, i32 6)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 18
  %22 = call i32 @PackGetIp(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 17
  %26 = call i32 @PackGetIp(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @PackGetBool(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 16
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @PackGetInt(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 15
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @PackGetInt(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 14
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @PackGetInt(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @PackGetBool(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 12
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 11
  %50 = call i32 @PackGetIp(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 10
  %54 = call i32 @PackGetIp(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  %58 = call i32 @PackGetIp(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @PackGetInt(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = call i32 @PackGetIp(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = call i32 @PackGetIp(i32* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = call i32 @PackGetIp(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PackGetStr(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %78, i32 4)
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @PackGetBool(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PackGetStr(i32* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %87, i32 4)
  %89 = load i32*, i32** %4, align 8
  %90 = call i8* @PackGetBool(i32* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PackGetStr(i32* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %96, i32 4)
  br label %98

98:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetIp(i32*, i8*, i32*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
