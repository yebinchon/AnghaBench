; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubOptionCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubOptionCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

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
@.str.10 = private unnamed_addr constant [11 x i8] c"FilterBPDU\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"NoIPv4PacketLog\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"NoIPv6PacketLog\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"NoIPv6DefaultRouterInRAWhenIPv6\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"DisableIPParsing\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"YieldAfterStorePacket\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"NoSpinLockForPacketDelay\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"BroadcastStormDetectionThreshold\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"ClientMinimumRequiredBuild\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"RequiredClientId\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"NoManageVlanId\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"VlanTypeId\00", align 1
@MAC_PROTO_TAGVLAN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"FixForDLinkBPDU\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"BroadcastLimiterStrictMode\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"MaxLoggedPacketsPerMinute\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"FloodingSendQueueBufferQuota\00", align 1
@DEFAULT_FLOODING_QUEUE_LENGTH = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [27 x i8] c"DoNotSaveHeavySecurityLogs\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"DropBroadcastsInPrivacyFilterMode\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"DropArpInPrivacyFilterMode\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"NoLookBPDUBridgeId\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"AdjustTcpMssValue\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"DisableAdjustTcpMss\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"NoDhcpPacketLogOutsideHub\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"DisableHttpParsing\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"DisableUdpAcceleration\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"DisableUdpFilterForLocalBridgeNic\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"ApplyIPv4AccessListOnArpPacket\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"RemoveDefGwOnDhcpForLocalhost\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxTcpSessionsPerIp\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"SecureNAT_MaxTcpSynSentPerIp\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxUdpSessionsPerIp\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"SecureNAT_MaxDnsSessionsPerIp\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"SecureNAT_MaxIcmpSessionsPerIp\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"AccessListIncludeFileCacheLifetime\00", align 1
@ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [27 x i8] c"DisableKernelModeSecureNAT\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"DisableIpRawModeSecureNAT\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"DisableUserModeSecureNAT\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"DisableCheckMacOnLocalBridge\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"DisableCorrectIpOffloadChecksum\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"SuppressClientUpdateNotification\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"AssignVLanIdByRadiusAttribute\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"DenyAllRadiusLoginWithNoVlanAssign\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"SecureNAT_RandomizeAssignIp\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"DetectDormantSessionInterval\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"NoPhysicalIPOnPacketLog\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"UseHubNameAsDhcpUserClassOption\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"UseHubNameAsRadiusNasId\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"ManageOnlyPrivateIP\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"ManageOnlyLocalUnicastIPv6\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"NoMacAddressLog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubOptionCfg(i32* %0, %struct.TYPE_3__* %1) #0 {
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
  br label %357

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @CfgGetInt(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 59
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @CfgGetBool(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 58
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @CfgGetBool(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 57
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @CfgGetBool(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 56
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @CfgGetBool(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 55
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @CfgGetBool(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 54
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @CfgGetBool(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 53
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @CfgGetBool(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 52
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i8* @CfgGetBool(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 51
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @CfgGetBool(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 50
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i8* @CfgGetBool(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 49
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i8* @CfgGetBool(i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 48
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i8* @CfgGetBool(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 47
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = call i8* @CfgGetBool(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 46
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i8* @CfgGetBool(i32* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 45
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i8* @CfgGetBool(i32* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 44
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @CfgGetBool(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 43
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i8* @CfgGetInt(i32* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 42
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i8* @CfgGetInt(i32* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 41
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = call i8* @CfgGetInt(i32* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 40
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = call i8* @CfgGetBool(i32* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 39
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 38
  store i32 0, i32* %104, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = trunc i64 %9 to i32
  %107 = call i64 @CfgGetStr(i32* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %11, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %18
  %110 = call i32 @HexToInt(i8* %11)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 38
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %18
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 38
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @MAC_PROTO_TAGVLAN, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 38
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32*, i32** %3, align 8
  %124 = call i8* @CfgGetBool(i32* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 37
  store i8* %124, i8** %126, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = call i8* @CfgGetBool(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 36
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = call i8* @CfgGetInt(i32* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 35
  store i8* %132, i8** %134, align 8
  %135 = load i32*, i32** %3, align 8
  %136 = call i64 @CfgIsItem(i32* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %122
  %139 = load i32*, i32** %3, align 8
  %140 = call i8* @CfgGetInt(i32* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 34
  store i8* %140, i8** %142, align 8
  br label %147

143:                                              ; preds = %122
  %144 = load i8*, i8** @DEFAULT_FLOODING_QUEUE_LENGTH, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 34
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32*, i32** %3, align 8
  %149 = call i8* @CfgGetBool(i32* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 33
  store i8* %149, i8** %151, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = call i64 @CfgIsItem(i32* %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load i32*, i32** %3, align 8
  %157 = call i8* @CfgGetBool(i32* %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %164

161:                                              ; preds = %147
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32*, i32** %3, align 8
  %166 = call i64 @CfgIsItem(i32* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32*, i32** %3, align 8
  %170 = call i8* @CfgGetBool(i32* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %177

174:                                              ; preds = %164
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %168
  %178 = load i32*, i32** %3, align 8
  %179 = call i8* @CfgGetBool(i32* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 32
  store i8* %179, i8** %181, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = call i8* @CfgGetInt(i32* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 31
  store i8* %183, i8** %185, align 8
  %186 = load i32*, i32** %3, align 8
  %187 = call i8* @CfgGetBool(i32* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0))
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 30
  store i8* %187, i8** %189, align 8
  %190 = load i32*, i32** %3, align 8
  %191 = call i64 @CfgIsItem(i32* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %177
  %194 = load i32*, i32** %3, align 8
  %195 = call i8* @CfgGetBool(i32* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0))
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  br label %202

199:                                              ; preds = %177
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %193
  %203 = load i32*, i32** %3, align 8
  %204 = call i8* @CfgGetBool(i32* %203, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 29
  store i8* %204, i8** %206, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = call i8* @CfgGetBool(i32* %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 28
  store i8* %208, i8** %210, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = call i8* @CfgGetBool(i32* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0))
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 27
  store i8* %212, i8** %214, align 8
  %215 = load i32*, i32** %3, align 8
  %216 = call i8* @CfgGetBool(i32* %215, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0))
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 26
  store i8* %216, i8** %218, align 8
  %219 = load i32*, i32** %3, align 8
  %220 = call i64 @CfgIsItem(i32* %219, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %202
  %223 = load i32*, i32** %3, align 8
  %224 = call i8* @CfgGetBool(i32* %223, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  br label %231

228:                                              ; preds = %202
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %222
  %232 = load i32*, i32** %3, align 8
  %233 = call i8* @CfgGetInt(i32* %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 25
  store i8* %233, i8** %235, align 8
  %236 = load i32*, i32** %3, align 8
  %237 = call i8* @CfgGetInt(i32* %236, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0))
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 24
  store i8* %237, i8** %239, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = call i8* @CfgGetInt(i32* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0))
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 23
  store i8* %241, i8** %243, align 8
  %244 = load i32*, i32** %3, align 8
  %245 = call i8* @CfgGetInt(i32* %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 22
  store i8* %245, i8** %247, align 8
  %248 = load i32*, i32** %3, align 8
  %249 = call i8* @CfgGetInt(i32* %248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0))
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 21
  store i8* %249, i8** %251, align 8
  %252 = load i32*, i32** %3, align 8
  %253 = call i8* @CfgGetInt(i32* %252, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0))
  %254 = ptrtoint i8* %253 to i64
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 4
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %231
  %262 = load i64, i64* @ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME, align 8
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %261, %231
  %266 = load i32*, i32** %3, align 8
  %267 = call i8* @CfgGetBool(i32* %266, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0))
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 20
  store i8* %267, i8** %269, align 8
  %270 = load i32*, i32** %3, align 8
  %271 = call i8* @CfgGetBool(i32* %270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0))
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 19
  store i8* %271, i8** %273, align 8
  %274 = load i32*, i32** %3, align 8
  %275 = call i8* @CfgGetBool(i32* %274, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 18
  store i8* %275, i8** %277, align 8
  %278 = load i32*, i32** %3, align 8
  %279 = call i8* @CfgGetBool(i32* %278, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0))
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 17
  store i8* %279, i8** %281, align 8
  %282 = load i32*, i32** %3, align 8
  %283 = call i8* @CfgGetBool(i32* %282, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0))
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 16
  store i8* %283, i8** %285, align 8
  %286 = load i32*, i32** %3, align 8
  %287 = call i8* @CfgGetBool(i32* %286, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i64 0, i64 0))
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 15
  store i8* %287, i8** %289, align 8
  %290 = load i32*, i32** %3, align 8
  %291 = call i8* @CfgGetBool(i32* %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0))
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 14
  store i8* %291, i8** %293, align 8
  %294 = load i32*, i32** %3, align 8
  %295 = call i8* @CfgGetBool(i32* %294, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0))
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 13
  store i8* %295, i8** %297, align 8
  %298 = load i32*, i32** %3, align 8
  %299 = call i8* @CfgGetBool(i32* %298, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0))
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 12
  store i8* %299, i8** %301, align 8
  %302 = load i32*, i32** %3, align 8
  %303 = call i8* @CfgGetInt(i32* %302, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0))
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 11
  store i8* %303, i8** %305, align 8
  %306 = load i32*, i32** %3, align 8
  %307 = call i8* @CfgGetBool(i32* %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0))
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 10
  store i8* %307, i8** %309, align 8
  %310 = load i32*, i32** %3, align 8
  %311 = call i8* @CfgGetBool(i32* %310, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0))
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 9
  store i8* %311, i8** %313, align 8
  %314 = load i32*, i32** %3, align 8
  %315 = call i8* @CfgGetBool(i32* %314, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0))
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 8
  store i8* %315, i8** %317, align 8
  %318 = load i32*, i32** %3, align 8
  %319 = call i64 @CfgIsItem(i32* %318, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0))
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %265
  %322 = load i32*, i32** %3, align 8
  %323 = call i8* @CfgGetBool(i32* %322, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0))
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 5
  store i32 %324, i32* %326, align 8
  br label %330

327:                                              ; preds = %265
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 5
  store i32 1, i32* %329, align 8
  br label %330

330:                                              ; preds = %327, %321
  %331 = load i32*, i32** %3, align 8
  %332 = call i64 @CfgIsItem(i32* %331, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load i32*, i32** %3, align 8
  %336 = call i8* @CfgGetBool(i32* %335, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0))
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 6
  store i32 %337, i32* %339, align 4
  br label %343

340:                                              ; preds = %330
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 6
  store i32 1, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %334
  %344 = load i32*, i32** %3, align 8
  %345 = call i64 @CfgIsItem(i32* %344, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %343
  %348 = load i32*, i32** %3, align 8
  %349 = call i8* @CfgGetBool(i32* %348, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0))
  %350 = ptrtoint i8* %349 to i32
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 7
  store i32 %350, i32* %352, align 8
  br label %356

353:                                              ; preds = %343
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 7
  store i32 1, i32* %355, align 8
  br label %356

356:                                              ; preds = %353, %347
  store i32 0, i32* %7, align 4
  br label %357

357:                                              ; preds = %356, %17
  %358 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %358)
  %359 = load i32, i32* %7, align 4
  switch i32 %359, label %361 [
    i32 0, label %360
    i32 1, label %360
  ]

360:                                              ; preds = %357, %357
  ret void

361:                                              ; preds = %357
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @HexToInt(i8*) #2

declare dso_local i64 @CfgIsItem(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
