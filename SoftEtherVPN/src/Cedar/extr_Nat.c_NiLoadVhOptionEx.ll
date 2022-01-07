; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadVhOptionEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadVhOptionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

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
define dso_local void @NiLoadVhOptionEx(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %10, align 4
  br label %151

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @CfgGetFolder(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @CfgGetFolder(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @CfgGetFolder(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @Zero(%struct.TYPE_7__* %29, i32 128)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 18
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GenMacAddress(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = trunc i64 %13 to i32
  %37 = call i64 @CfgGetStr(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %22
  %40 = call %struct.TYPE_8__* @StrToBin(i8* %15)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 18
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Copy(i32 %51, i32 %54, i32 6)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = call i32 @FreeBuf(%struct.TYPE_8__* %58)
  br label %60

60:                                               ; preds = %57, %22
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 17
  %64 = call i32 @CfgGetIp(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 16
  %68 = call i32 @CfgGetIp(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @CfgGetBool(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 15
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @CfgGetInt(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 14
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i8* @CfgGetInt(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 13
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @CfgGetInt(i32* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 12
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i8* @CfgGetBool(i32* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 11
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 10
  %92 = call i32 @CfgGetIp(i32* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 9
  %96 = call i32 @CfgGetIp(i32* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 8
  %100 = call i32 @CfgGetIp(i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i8* @CfgGetInt(i32* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = call i32 @CfgGetIp(i32* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = call i32 @CfgGetIp(i32* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  %116 = call i32 @CfgGetIp(i32* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32* %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @CfgGetStr(i32* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %120, i32 8)
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @CfgGetStr(i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %125, i32 8)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @NormalizeClasslessRouteTableStr(i8* %129, i32 8, i8* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @Trim(i8* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @StrLen(i8* %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %60
  br label %146

146:                                              ; preds = %145, %60
  %147 = load i32*, i32** %4, align 8
  %148 = call i8* @CfgGetBool(i32* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %146, %21
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %10, align 4
  switch i32 %153, label %155 [
    i32 0, label %154
    i32 1, label %154
  ]

154:                                              ; preds = %151, %151
  ret void

155:                                              ; preds = %151
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @GenMacAddress(i32) #2

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_8__* @StrToBin(i8*) #2

declare dso_local i32 @Copy(i32, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_8__*) #2

declare dso_local i32 @CfgGetIp(i32*, i8*, i32*) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i8* @CfgGetInt(i32*, i8*) #2

declare dso_local i32 @NormalizeClasslessRouteTableStr(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
