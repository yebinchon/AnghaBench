; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiWriteVhOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiWriteVhOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@.str.19 = private unnamed_addr constant [8 x i8] c"SaveLog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NiWriteVhOption(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %11, align 4
  br label %110

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @CfgCreateFolder(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @CfgCreateFolder(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @CfgCreateFolder(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %5, align 8
  %31 = trunc i64 %13 to i32
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MacToStr(i8* %15, i32 %31, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @CfgAddStr(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 15
  %41 = call i32 @CfgAddIp(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 14
  %45 = call i32 @CfgAddIp(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @CfgAddBool(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CfgAddInt(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @CfgAddInt(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CfgAddInt(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @CfgAddBool(i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  %74 = call i32 @CfgAddIp(i32* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = call i32 @CfgAddIp(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = call i32 @CfgAddIp(i32* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CfgAddInt(i32* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = call i32 @CfgAddIp(i32* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = call i32 @CfgAddIp(i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = call i32 @CfgAddIp(i32* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @CfgAddStr(i32* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CfgAddBool(i32* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %108)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %22, %21
  %111 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %11, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 1, label %113
  ]

113:                                              ; preds = %110, %110
  ret void

114:                                              ; preds = %110
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
