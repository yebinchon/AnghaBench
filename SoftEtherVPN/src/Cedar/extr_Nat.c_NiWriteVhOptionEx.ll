; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiWriteVhOptionEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiWriteVhOptionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"VirtualHost\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"VirtualRouter\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"VirtualDhcpServer\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"VirtualHostMacAddress\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"VirtualHostIp\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"VirtualHostIpSubnetMask\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"NatEnabled\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"NatMtu\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"NatTcpTimeout\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"NatUdpTimeout\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DhcpEnabled\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DhcpLeaseIPStart\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"DhcpLeaseIPEnd\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"DhcpSubnetMask\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"DhcpExpireTimeSpan\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"DhcpGatewayAddress\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"DhcpDnsServerAddress\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"DhcpDnsServerAddress2\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"DhcpDomainName\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"DhcpPushRoutes\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"SaveLog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NiWriteVhOptionEx(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MAX_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 1, i32* %10, align 4
  br label %112

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @CfgCreateFolder(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @CfgCreateFolder(i32* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @CfgCreateFolder(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = trunc i64 %12 to i32
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MacToStr(i8* %14, i32 %28, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @CfgAddStr(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 16
  %38 = call i32 @CfgAddIp(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 15
  %42 = call i32 @CfgAddIp(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CfgAddBool(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CfgAddInt(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @CfgAddInt(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CfgAddInt(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CfgAddBool(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 9
  %71 = call i32 @CfgAddIp(i32* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 8
  %75 = call i32 @CfgAddIp(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  %79 = call i32 @CfgAddIp(i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CfgAddInt(i32* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = call i32 @CfgAddIp(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = call i32 @CfgAddIp(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = call i32 @CfgAddIp(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @CfgAddStr(i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @CfgAddStr(i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @CfgAddBool(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %110)
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %21, %20
  %113 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %10, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #2

declare dso_local i32 @MacToStr(i8*, i32, i32) #2

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @CfgAddIp(i32*, i8*, i32*) #2

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #2

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
