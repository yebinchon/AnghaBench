; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadVhOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadVhOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

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
define dso_local void @NiLoadVhOption(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 1, i32* %11, align 4
  br label %129

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @CfgGetFolder(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @CfgGetFolder(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @CfgGetFolder(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %5, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @Zero(%struct.TYPE_8__* %32, i32 112)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @GenMacAddress(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = trunc i64 %14 to i32
  %40 = call i64 @CfgGetStr(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %16, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %23
  %43 = call %struct.TYPE_10__* @StrToBin(i8* %16)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %12, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 16
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Copy(i32 %54, i32 %57, i32 6)
  br label %59

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = call i32 @FreeBuf(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %60, %23
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 15
  %67 = call i32 @CfgGetIp(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 14
  %71 = call i32 @CfgGetIp(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @CfgGetBool(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 13
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @CfgGetInt(i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 12
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i8* @CfgGetInt(i32* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i8* @CfgGetInt(i32* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i8* @CfgGetBool(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 8
  %95 = call i32 @CfgGetIp(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = call i32 @CfgGetIp(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  %103 = call i32 @CfgGetIp(i32* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i8* @CfgGetInt(i32* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = call i32 @CfgGetIp(i32* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = call i32 @CfgGetIp(i32* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = call i32 @CfgGetIp(i32* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @CfgGetStr(i32* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %123, i32 8)
  %125 = load i32*, i32** %4, align 8
  %126 = call i8* @CfgGetBool(i32* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %63, %22
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %11, align 4
  switch i32 %131, label %133 [
    i32 0, label %132
    i32 1, label %132
  ]

132:                                              ; preds = %129, %129
  ret void

133:                                              ; preds = %129
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @GenMacAddress(i32) #2

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_10__* @StrToBin(i8*) #2

declare dso_local i32 @Copy(i32, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

declare dso_local i32 @CfgGetIp(i32*, i8*, i32*) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i8* @CfgGetInt(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
