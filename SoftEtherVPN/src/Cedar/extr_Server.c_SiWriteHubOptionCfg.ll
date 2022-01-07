; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubOptionCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubOptionCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MaxSession\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"NoArpPolling\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"NoIPv6AddrPolling\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NoIpTable\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NoEnum\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FilterPPPoE\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"FilterOSPF\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"FilterIPv4\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FilterIPv6\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"FilterNonIP\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"NoIPv4PacketLog\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"NoIPv6PacketLog\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"FilterBPDU\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"NoIPv6DefaultRouterInRAWhenIPv6\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"NoMacAddressLog\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"ManageOnlyPrivateIP\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ManageOnlyLocalUnicastIPv6\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"DisableIPParsing\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"YieldAfterStorePacket\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"NoSpinLockForPacketDelay\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"BroadcastStormDetectionThreshold\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"ClientMinimumRequiredBuild\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"RequiredClientId\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"NoManageVlanId\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"VlanTypeId\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"FixForDLinkBPDU\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"BroadcastLimiterStrictMode\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"MaxLoggedPacketsPerMinute\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"FloodingSendQueueBufferQuota\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"DoNotSaveHeavySecurityLogs\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"DropBroadcastsInPrivacyFilterMode\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"DropArpInPrivacyFilterMode\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"SuppressClientUpdateNotification\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"AssignVLanIdByRadiusAttribute\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"DenyAllRadiusLoginWithNoVlanAssign\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"SecureNAT_RandomizeAssignIp\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"NoPhysicalIPOnPacketLog\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"DetectDormantSessionInterval\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"NoLookBPDUBridgeId\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"AdjustTcpMssValue\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"DisableAdjustTcpMss\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"NoDhcpPacketLogOutsideHub\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"DisableHttpParsing\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"DisableUdpAcceleration\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"DisableUdpFilterForLocalBridgeNic\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"ApplyIPv4AccessListOnArpPacket\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"RemoveDefGwOnDhcpForLocalhost\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxTcpSessionsPerIp\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"SecureNAT_MaxTcpSynSentPerIp\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxUdpSessionsPerIp\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxDnsSessionsPerIp\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"SecureNAT_MaxIcmpSessionsPerIp\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"AccessListIncludeFileCacheLifetime\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"DisableKernelModeSecureNAT\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"DisableIpRawModeSecureNAT\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"DisableUserModeSecureNAT\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"DisableCheckMacOnLocalBridge\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"DisableCorrectIpOffloadChecksum\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"UseHubNameAsDhcpUserClassOption\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"UseHubNameAsRadiusNasId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteHubOptionCfg(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 1, i32* %7, align 4
  br label %327

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 59
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CfgAddInt(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 58
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @CfgAddBool(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 57
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @CfgAddBool(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 56
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @CfgAddBool(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 55
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CfgAddBool(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 54
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @CfgAddBool(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 53
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @CfgAddBool(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 52
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @CfgAddBool(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 51
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @CfgAddBool(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 50
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @CfgAddBool(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 49
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @CfgAddBool(i32* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 48
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @CfgAddBool(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 47
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @CfgAddBool(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 46
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @CfgAddBool(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 45
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @CfgAddBool(i32* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 44
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @CfgAddBool(i32* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 43
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @CfgAddBool(i32* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 42
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @CfgAddBool(i32* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 41
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @CfgAddBool(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 40
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @CfgAddBool(i32* %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i64 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 39
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CfgAddInt(i32* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 38
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @CfgAddInt(i32* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 37
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @CfgAddInt(i32* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 36
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @CfgAddBool(i32* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i64 %137)
  %139 = trunc i64 %9 to i32
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 35
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @Format(i8* %11, i32 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @CfgAddStr(i32* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %11)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 34
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %18
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 34
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @CfgAddBool(i32* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i64 %154)
  br label %156

156:                                              ; preds = %150, %18
  %157 = load i32*, i32** %3, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 33
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @CfgAddBool(i32* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 32
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @CfgAddInt(i32* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 31
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @CfgAddInt(i32* %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %3, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 30
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @CfgAddBool(i32* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i64 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 29
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @CfgAddBool(i32* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i64 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 28
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @CfgAddBool(i32* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i64 %185)
  %187 = load i32*, i32** %3, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 27
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @CfgAddBool(i32* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i64 %190)
  %192 = load i32*, i32** %3, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 26
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @CfgAddBool(i32* %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0), i64 %195)
  %197 = load i32*, i32** %3, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 25
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @CfgAddBool(i32* %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0), i64 %200)
  %202 = load i32*, i32** %3, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 24
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @CfgAddBool(i32* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i64 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 23
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @CfgAddBool(i32* %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i64 %210)
  %212 = load i32*, i32** %3, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 22
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @CfgAddInt(i32* %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %215)
  %217 = load i32*, i32** %3, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 21
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @CfgAddBool(i32* %217, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0), i64 %220)
  %222 = load i32*, i32** %3, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 20
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @CfgAddInt(i32* %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i32 %225)
  %227 = load i32*, i32** %3, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 19
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @CfgAddBool(i32* %227, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i64 %230)
  %232 = load i32*, i32** %3, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 18
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @CfgAddBool(i32* %232, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i64 %235)
  %237 = load i32*, i32** %3, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 17
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @CfgAddBool(i32* %237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i64 %240)
  %242 = load i32*, i32** %3, align 8
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 16
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @CfgAddBool(i32* %242, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i64 %245)
  %247 = load i32*, i32** %3, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 15
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @CfgAddBool(i32* %247, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i64 %250)
  %252 = load i32*, i32** %3, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 14
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @CfgAddBool(i32* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i64 %255)
  %257 = load i32*, i32** %3, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 13
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @CfgAddBool(i32* %257, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i64 %260)
  %262 = load i32*, i32** %3, align 8
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @CfgAddInt(i32* %262, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0), i32 %265)
  %267 = load i32*, i32** %3, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @CfgAddInt(i32* %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %3, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @CfgAddInt(i32* %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 %275)
  %277 = load i32*, i32** %3, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @CfgAddInt(i32* %277, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i32 %280)
  %282 = load i32*, i32** %3, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @CfgAddInt(i32* %282, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i64 0, i64 0), i32 %285)
  %287 = load i32*, i32** %3, align 8
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @CfgAddInt(i32* %287, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i64 0, i64 0), i32 %290)
  %292 = load i32*, i32** %3, align 8
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @CfgAddBool(i32* %292, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i64 %295)
  %297 = load i32*, i32** %3, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @CfgAddBool(i32* %297, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i64 %300)
  %302 = load i32*, i32** %3, align 8
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @CfgAddBool(i32* %302, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i64 %305)
  %307 = load i32*, i32** %3, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @CfgAddBool(i32* %307, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i64 0, i64 0), i64 %310)
  %312 = load i32*, i32** %3, align 8
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @CfgAddBool(i32* %312, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0), i64 %315)
  %317 = load i32*, i32** %3, align 8
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @CfgAddBool(i32* %317, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0), i64 %320)
  %322 = load i32*, i32** %3, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @CfgAddBool(i32* %322, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0), i64 %325)
  store i32 0, i32* %7, align 4
  br label %327

327:                                              ; preds = %156, %17
  %328 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %328)
  %329 = load i32, i32* %7, align 4
  switch i32 %329, label %331 [
    i32 0, label %330
    i32 1, label %330
  ]

330:                                              ; preds = %327, %327
  ret void

331:                                              ; preds = %327
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #2

declare dso_local i32 @CfgAddBool(i32*, i8*, i64) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32) #2

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
