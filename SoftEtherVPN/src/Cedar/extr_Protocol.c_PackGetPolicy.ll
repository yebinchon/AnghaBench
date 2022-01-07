; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackGetPolicy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackGetPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Access\00", align 1
@Access = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DHCPFilter\00", align 1
@DHCPFilter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"DHCPNoServer\00", align 1
@DHCPNoServer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"DHCPForce\00", align 1
@DHCPForce = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"NoBridge\00", align 1
@NoBridge = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"NoRouting\00", align 1
@NoRouting = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"PrivacyFilter\00", align 1
@PrivacyFilter = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"NoServer\00", align 1
@NoServer = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"CheckMac\00", align 1
@CheckMac = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"CheckIP\00", align 1
@CheckIP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"ArpDhcpOnly\00", align 1
@ArpDhcpOnly = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"MonitorPort\00", align 1
@MonitorPort = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"NoBroadcastLimiter\00", align 1
@NoBroadcastLimiter = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"FixPassword\00", align 1
@FixPassword = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"NoQoS\00", align 1
@NoQoS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"RSandRAFilter\00", align 1
@RSandRAFilter = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"RAFilter\00", align 1
@RAFilter = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"DHCPv6Filter\00", align 1
@DHCPv6Filter = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"DHCPv6NoServer\00", align 1
@DHCPv6NoServer = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"NoRoutingV6\00", align 1
@NoRoutingV6 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"CheckIPv6\00", align 1
@CheckIPv6 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"NoServerV6\00", align 1
@NoServerV6 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"NoSavePassword\00", align 1
@NoSavePassword = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"FilterIPv4\00", align 1
@FilterIPv4 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"FilterIPv6\00", align 1
@FilterIPv6 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"FilterNonIP\00", align 1
@FilterNonIP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [24 x i8] c"NoIPv6DefaultRouterInRA\00", align 1
@NoIPv6DefaultRouterInRA = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [32 x i8] c"NoIPv6DefaultRouterInRAWhenIPv6\00", align 1
@NoIPv6DefaultRouterInRAWhenIPv6 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@MaxConnection = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"TimeOut\00", align 1
@TimeOut = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"MaxMac\00", align 1
@MaxMac = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"MaxIP\00", align 1
@MaxIP = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"MaxUpload\00", align 1
@MaxUpload = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"MaxDownload\00", align 1
@MaxDownload = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"MultiLogins\00", align 1
@MultiLogins = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [8 x i8] c"MaxIPv6\00", align 1
@MaxIPv6 = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [15 x i8] c"AutoDisconnect\00", align 1
@AutoDisconnect = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1
@VLanId = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"Ver3\00", align 1
@Ver3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackGetPolicy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %89

8:                                                ; preds = %1
  %9 = call i32* @ZeroMalloc(i32 4)
  store i32* %9, i32** %4, align 8
  %10 = load i32, i32* @Access, align 4
  %11 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @DHCPFilter, align 4
  %13 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @DHCPNoServer, align 4
  %15 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @DHCPForce, align 4
  %17 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @NoBridge, align 4
  %19 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @NoRouting, align 4
  %21 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @PrivacyFilter, align 4
  %23 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @NoServer, align 4
  %25 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @CheckMac, align 4
  %27 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @CheckIP, align 4
  %29 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ArpDhcpOnly, align 4
  %31 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @MonitorPort, align 4
  %33 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @NoBroadcastLimiter, align 4
  %35 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @FixPassword, align 4
  %37 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @NoQoS, align 4
  %39 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @RSandRAFilter, align 4
  %41 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @RAFilter, align 4
  %43 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @DHCPv6Filter, align 4
  %45 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @DHCPv6NoServer, align 4
  %47 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @NoRoutingV6, align 4
  %49 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @CheckIPv6, align 4
  %51 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @NoServerV6, align 4
  %53 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @NoSavePassword, align 4
  %55 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @FilterIPv4, align 4
  %57 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @FilterIPv6, align 4
  %59 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @FilterNonIP, align 4
  %61 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @NoIPv6DefaultRouterInRA, align 4
  %63 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @NoIPv6DefaultRouterInRAWhenIPv6, align 4
  %65 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @MaxConnection, align 4
  %67 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @TimeOut, align 4
  %69 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @MaxMac, align 4
  %71 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @MaxIP, align 4
  %73 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @MaxUpload, align 4
  %75 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @MaxDownload, align 4
  %77 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @MultiLogins, align 4
  %79 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @MaxIPv6, align 4
  %81 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @AutoDisconnect, align 4
  %83 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @VLanId, align 4
  %85 = call i32 @PACK_GET_POLICY_UINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @Ver3, align 4
  %87 = call i32 @PACK_GET_POLICY_BOOL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %4, align 8
  store i32* %88, i32** %2, align 8
  br label %89

89:                                               ; preds = %8, %7
  %90 = load i32*, i32** %2, align 8
  ret i32* %90
}

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i32 @PACK_GET_POLICY_BOOL(i8*, i32) #1

declare dso_local i32 @PACK_GET_POLICY_UINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
