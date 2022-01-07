; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadServerCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadServerCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i64, i8*, i8*, i8*, i32*, i32, i32, %struct.TYPE_25__*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, %struct.TYPE_24__*, i32, i8* }
%struct.TYPE_25__ = type { i8*, i32, i32, i8, i32, i32, %struct.TYPE_20__, i32, i32, i8* }
%struct.TYPE_20__ = type { i8*, i8*, i8* }
%struct.TYPE_24__ = type { i32, i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_22__ = type { i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i32, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"AutoSaveConfigSpan\00", align 1
@SERVER_FILE_SAVE_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@SERVER_FILE_SAVE_INTERVAL_MIN = common dso_local global i32 0, align 4
@SERVER_FILE_SAVE_INTERVAL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MaxConcurrentDnsClientThreads\00", align 1
@DEFAULT_GETIP_THREAD_MAX_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"DontBackupConfig\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ListenIP\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"BackupConfigOnlyWhenModified\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ServerLogSwitchType\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"LoggerMaxLogSize\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"GlobalParams\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"UseKeepConnect\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"KeepConnectHost\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"KeepConnectPort\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"KeepConnectProtocol\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"KeepConnectInterval\00", align 1
@CLIENT_DEFAULT_KEEPALIVE_HOST = common dso_local global i8* null, align 8
@KEEP_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"SyslogSettings\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"b_support_syslog\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"SaveType\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"HostName\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"DisableIPv6Listener\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"DisableDosProtection\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"MaxConnectionsPerIP\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"MaxUnestablishedConnections\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"DisableDeadLockCheck\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"AutoDeleteCheckIntervalSecs\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"UseWebUI\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"UseWebTimePage\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"NoLinuxArpFilter\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"NoHighPriorityProcess\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"NoDebugDump\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"DisableSSTPServer\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"DisableOpenVPNServer\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"OpenVPNDefaultClientOption\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"OpenVPNPushDummyIPv4AddressOnL2Mode\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"DisableNatTraversal\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"EnableVpnOverIcmp\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"EnableVpnOverDns\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"SaveDebugLog\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"NoSendSignature\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"ServerKey\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"UsernameHubSeparator\00", align 1
@DEFAULT_USERNAME_HUB_SEPARATOR = common dso_local global i8 0, align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"CipherName\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"ServerTraffic\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"ServerType\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SERVER_TYPE_STANDALONE = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [20 x i8] c"ClusterMemberWeight\00", align 1
@FARM_DEFAULT_WEIGHT = common dso_local global i8* null, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"ControllerOnly\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"OpenVPN_UdpPortList\00", align 1
@OPENVPN_UDP_PORT = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [19 x i8] c"OpenVPNObfuscation\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"OpenVPNObfuscationMask\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i32 0, align 4
@MAX_PUBLIC_PORT_NUM = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"ControllerName\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"ControllerPort\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"MemberPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"PublicIp\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"PublicPorts\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"EnableVpnAzure\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"DisableGetHostNameWhenAcceptTcp\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"DisableCoreDumpOnUnix\00", align 1
@GSF_DISABLE_SESSION_RECONNECT = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [24 x i8] c"DisableSessionReconnect\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_0\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_1\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_2\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"StrictSyslogDatetimeFormat\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"DisableJsonRpcWebApi\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"DhParamBits\00", align 1
@DH_PARAM_BITS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadServerCfg(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_22__, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.TYPE_22__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32* %1, i32** %4, align 8
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %29 = icmp eq %struct.TYPE_23__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %2
  store i32 1, i32* %13, align 4
  br label %774

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @CfgGetInt(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = mul nsw i32 %36, 1000
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @SERVER_FILE_SAVE_INTERVAL_DEFAULT, align 4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SERVER_FILE_SAVE_INTERVAL_MIN, align 4
  %53 = load i32, i32* @SERVER_FILE_SAVE_INTERVAL_MAX, align 4
  %54 = call i32 @MAKESURE(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %44
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @CfgGetInt(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @SetGetIpThreadMaxNum(i64 %64)
  br label %69

66:                                               ; preds = %57
  %67 = load i64, i64* @DEFAULT_GETIP_THREAD_MAX_NUM, align 8
  %68 = call i32 @SetGetIpThreadMaxNum(i64 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32*, i32** %4, align 8
  %71 = call i8* @CfgGetBool(i32* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 39
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 38
  %77 = call i32 @CfgGetIp(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @CfgIsItem(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @CfgGetBool(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %69
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @CfgIsItem(i32* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @CfgGetInt(i32* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %14, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 33
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @SetLogSwitchType(i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %94, %90
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @CfgGetInt64(i32* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i32 @SetMaxLogSize(i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32* @CfgGetFolder(i32* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @SiLoadGlobalParamsCfg(i32* %109)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 23
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %112, align 8
  store %struct.TYPE_25__* %113, %struct.TYPE_25__** %6, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @Lock(i32 %116)
  %118 = call i32 @Zero(%struct.TYPE_22__* %17, i32 80)
  %119 = load i32*, i32** %4, align 8
  %120 = call i8* @CfgGetBool(i32* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 12
  store i8* %120, i8** %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @CfgGetStr(i32* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %124, i32 8)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @CfgGetInt(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @CfgGetInt(i32* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @CfgGetInt(i32* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %134 = mul nsw i32 %133, 1000
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %103
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  store i32 80, i32* %140, align 8
  br label %141

141:                                              ; preds = %139, %103
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @StrLen(i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** @CLIENT_DEFAULT_KEEPALIVE_HOST, align 8
  %150 = call i32 @StrCpy(i8* %148, i32 8, i8* %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @KEEP_INTERVAL_DEFAULT, align 4
  %157 = mul nsw i32 %156, 1000
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  store i32 %157, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %151
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %161, 5000
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  store i32 5000, i32* %164, align 8
  br label %165

165:                                              ; preds = %163, %159
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 600000
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  store i32 600000, i32* %170, align 8
  br label %171

171:                                              ; preds = %169, %165
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 37
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @Lock(i32 %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 37
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  store %struct.TYPE_24__* %180, %struct.TYPE_24__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 12
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @StrCpy(i8* %189, i32 8, i8* %191)
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 37
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @Unlock(i32 %209)
  %211 = load i32*, i32** %4, align 8
  %212 = call i32* @CfgGetFolder(i32* %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32* %212, i32** %16, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %233

215:                                              ; preds = %171
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = call i64 @GetServerCapsBool(%struct.TYPE_23__* %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = call i32 @Zero(%struct.TYPE_22__* %19, i32 80)
  %221 = load i32*, i32** %16, align 8
  %222 = call i32 @CfgGetInt(i32* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 4
  store i32 %222, i32* %223, align 4
  %224 = load i32*, i32** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 5
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @CfgGetStr(i32* %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %226, i32 8)
  %228 = load i32*, i32** %16, align 8
  %229 = call i32 @CfgGetInt(i32* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 6
  store i32 %229, i32* %230, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %232 = call i32 @SiSetSysLogSetting(%struct.TYPE_23__* %231, %struct.TYPE_22__* %19)
  br label %233

233:                                              ; preds = %219, %215, %171
  %234 = load i32*, i32** %4, align 8
  %235 = call i8* @CfgGetBool(i32* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 23
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 9
  store i8* %235, i8** %239, align 8
  %240 = load i32*, i32** %4, align 8
  %241 = call i8* @CfgGetBool(i32* %240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 36
  store i8* %241, i8** %243, align 8
  %244 = load i32*, i32** %4, align 8
  %245 = call i32 @CfgGetInt(i32* %244, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %246 = call i32 @SetMaxConnectionsPerIp(i32 %245)
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @CfgGetInt(i32* %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %249 = call i32 @SetMaxUnestablishedConnections(i32 %248)
  %250 = load i32*, i32** %4, align 8
  %251 = call i8* @CfgGetBool(i32* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 35
  store i8* %251, i8** %253, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = call i32 @CfgGetInt(i32* %254, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %256 = call i32 @SetEraserCheckInterval(i32 %255)
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 33
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 @CfgGetInt64(i32* %260, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  %262 = call i32 @NewEraser(i32 %259, i32 %261)
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 34
  store i32 %262, i32* %264, align 4
  %265 = load i32*, i32** %4, align 8
  %266 = call i8* @CfgGetBool(i32* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 32
  store i8* %266, i8** %268, align 8
  %269 = load i32*, i32** %4, align 8
  %270 = call i8* @CfgGetBool(i32* %269, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 31
  store i8* %270, i8** %272, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = call i8* @CfgGetBool(i32* %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 30
  store i8* %274, i8** %276, align 8
  %277 = load i32*, i32** %4, align 8
  %278 = call i8* @CfgGetBool(i32* %277, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0))
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 29
  store i8* %278, i8** %280, align 8
  %281 = load i32*, i32** %4, align 8
  %282 = call i8* @CfgGetBool(i32* %281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 28
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 28
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %233
  br label %290

290:                                              ; preds = %289, %233
  %291 = load i32*, i32** %4, align 8
  %292 = call i8* @CfgGetBool(i32* %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %293 = ptrtoint i8* %292 to i32
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load i32*, i32** %4, align 8
  %297 = call i8* @CfgGetBool(i32* %296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load i32*, i32** %4, align 8
  %302 = trunc i64 %25 to i32
  %303 = call i32 @CfgGetStr(i32* %301, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* %27, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %290
  %306 = call i32 @IsEmptyStr(i8* %27)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @StrCpy(i8* %311, i32 8, i8* %27)
  br label %313

313:                                              ; preds = %308, %305
  br label %314

314:                                              ; preds = %313, %290
  %315 = load i32*, i32** %4, align 8
  %316 = call i32 @CfgIsItem(i32* %315, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0))
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 8
  br label %327

321:                                              ; preds = %314
  %322 = load i32*, i32** %4, align 8
  %323 = call i8* @CfgGetBool(i32* %322, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0))
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 8
  br label %327

327:                                              ; preds = %321, %318
  %328 = load i32*, i32** %4, align 8
  %329 = call i8* @CfgGetBool(i32* %328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 4
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 23
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %366

339:                                              ; preds = %327
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @CfgIsItem(i32* %340, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0))
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %339
  %344 = load i32*, i32** %4, align 8
  %345 = call i8* @CfgGetBool(i32* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0))
  %346 = ptrtoint i8* %345 to i32
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 5
  store i32 %346, i32* %348, align 4
  br label %352

349:                                              ; preds = %339
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 5
  store i32 0, i32* %351, align 4
  br label %352

352:                                              ; preds = %349, %343
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 @CfgIsItem(i32* %353, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %352
  %357 = load i32*, i32** %4, align 8
  %358 = call i8* @CfgGetBool(i32* %357, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %359 = ptrtoint i8* %358 to i32
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 6
  store i32 %359, i32* %361, align 8
  br label %365

362:                                              ; preds = %352
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 6
  store i32 0, i32* %364, align 8
  br label %365

365:                                              ; preds = %362, %356
  br label %366

366:                                              ; preds = %365, %327
  %367 = load i32*, i32** %4, align 8
  %368 = call i8* @CfgGetBool(i32* %367, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %369 = ptrtoint i8* %368 to i32
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 7
  store i32 %369, i32* %371, align 4
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %366
  %377 = call i32 (...) @NewTinyLog()
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 27
  store i32 %377, i32* %379, align 8
  br label %380

380:                                              ; preds = %376, %366
  %381 = load i32*, i32** %4, align 8
  %382 = call i8* @CfgGetBool(i32* %381, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 26
  store i8* %382, i8** %384, align 8
  %385 = load i32*, i32** %4, align 8
  %386 = call i32* @CfgGetBuf(i32* %385, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  store i32* %386, i32** %5, align 8
  %387 = load i32*, i32** %5, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %394

389:                                              ; preds = %380
  %390 = load i32*, i32** %5, align 8
  %391 = call i32* @BufToX(i32* %390, i32 0)
  store i32* %391, i32** %9, align 8
  %392 = load i32*, i32** %5, align 8
  %393 = call i32 @FreeBuf(i32* %392)
  br label %394

394:                                              ; preds = %389, %380
  %395 = load i32*, i32** %4, align 8
  %396 = call i32* @CfgGetBuf(i32* %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  store i32* %396, i32** %5, align 8
  %397 = load i32*, i32** %5, align 8
  %398 = icmp ne i32* %397, null
  br i1 %398, label %399, label %404

399:                                              ; preds = %394
  %400 = load i32*, i32** %5, align 8
  %401 = call i32* @BufToK(i32* %400, i32 1, i32 0, i32* null)
  store i32* %401, i32** %10, align 8
  %402 = load i32*, i32** %5, align 8
  %403 = call i32 @FreeBuf(i32* %402)
  br label %404

404:                                              ; preds = %399, %394
  %405 = load i32*, i32** %9, align 8
  %406 = icmp eq i32* %405, null
  br i1 %406, label %415, label %407

407:                                              ; preds = %404
  %408 = load i32*, i32** %10, align 8
  %409 = icmp eq i32* %408, null
  br i1 %409, label %415, label %410

410:                                              ; preds = %407
  %411 = load i32*, i32** %9, align 8
  %412 = load i32*, i32** %10, align 8
  %413 = call i32 @CheckXandK(i32* %411, i32* %412)
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %429

415:                                              ; preds = %410, %407, %404
  %416 = load i32*, i32** %9, align 8
  %417 = call i32 @FreeX(i32* %416)
  %418 = load i32*, i32** %10, align 8
  %419 = call i32 @FreeK(i32* %418)
  %420 = call i32 @SiGenerateDefaultCert(i32** %9, i32** %10)
  %421 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %422 = load i32*, i32** %9, align 8
  %423 = load i32*, i32** %10, align 8
  %424 = call i32 @SetCedarCert(%struct.TYPE_25__* %421, i32* %422, i32* %423)
  %425 = load i32*, i32** %9, align 8
  %426 = call i32 @FreeX(i32* %425)
  %427 = load i32*, i32** %10, align 8
  %428 = call i32 @FreeK(i32* %427)
  br label %438

429:                                              ; preds = %410
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %431 = load i32*, i32** %9, align 8
  %432 = load i32*, i32** %10, align 8
  %433 = call i32 @SetCedarCert(%struct.TYPE_25__* %430, i32* %431, i32* %432)
  %434 = load i32*, i32** %9, align 8
  %435 = call i32 @FreeX(i32* %434)
  %436 = load i32*, i32** %10, align 8
  %437 = call i32 @FreeK(i32* %436)
  br label %438

438:                                              ; preds = %429, %415
  %439 = load i32*, i32** %4, align 8
  %440 = trunc i64 %25 to i32
  %441 = call i32 @CfgGetStr(i32* %439, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8* %27, i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %460

443:                                              ; preds = %438
  %444 = getelementptr inbounds i8, i8* %27, i64 0
  %445 = load i8, i8* %444, align 16
  %446 = call i64 @IsPrintableAsciiChar(i8 signext %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %443
  %449 = getelementptr inbounds i8, i8* %27, i64 0
  %450 = load i8, i8* %449, align 16
  %451 = sext i8 %450 to i32
  br label %455

452:                                              ; preds = %443
  %453 = load i8, i8* @DEFAULT_USERNAME_HUB_SEPARATOR, align 1
  %454 = sext i8 %453 to i32
  br label %455

455:                                              ; preds = %452, %448
  %456 = phi i32 [ %451, %448 ], [ %454, %452 ]
  %457 = trunc i32 %456 to i8
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 3
  store i8 %457, i8* %459, align 8
  br label %460

460:                                              ; preds = %455, %438
  %461 = load i32*, i32** %4, align 8
  %462 = trunc i64 %25 to i32
  %463 = call i32 @CfgGetStr(i32* %461, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* %27, i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %460
  %466 = call i32 @StrUpper(i8* %27)
  %467 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %468 = call i32 @SetCedarCipherList(%struct.TYPE_25__* %467, i8* %27)
  br label %469

469:                                              ; preds = %465, %460
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 7
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @Lock(i32 %472)
  %474 = load i32*, i32** %4, align 8
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 8
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @SiLoadTraffic(i32* %474, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 %477)
  %479 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %479, i32 0, i32 7
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @Unlock(i32 %481)
  %483 = load i32*, i32** %4, align 8
  %484 = call i32 @CfgGetInt(i32* %483, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0))
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 9
  store i32 %484, i32* %486, align 4
  %487 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %487, i32 0, i32 8
  store i32 %484, i32* %488, align 8
  %489 = load i32*, i32** %4, align 8
  %490 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %490, i32 0, i32 25
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @CfgGetByte(i32* %489, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 %492, i32 4)
  %494 = sext i32 %493 to i64
  %495 = icmp ne i64 %494, 4
  br i1 %495, label %496, label %501

496:                                              ; preds = %469
  %497 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %497, i32 0, i32 25
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @Sha0(i32 %499, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i32 0)
  br label %501

501:                                              ; preds = %496, %469
  %502 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @SERVER_TYPE_STANDALONE, align 4
  %506 = icmp ne i32 %504, %505
  br i1 %506, label %507, label %522

507:                                              ; preds = %501
  %508 = load i32*, i32** %4, align 8
  %509 = call i32 @CfgGetInt(i32* %508, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0))
  %510 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 10
  store i32 %509, i32* %511, align 8
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %512, i32 0, i32 10
  %514 = load i32, i32* %513, align 8
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %507
  %517 = load i8*, i8** @FARM_DEFAULT_WEIGHT, align 8
  %518 = ptrtoint i8* %517 to i32
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %519, i32 0, i32 10
  store i32 %518, i32* %520, align 8
  br label %521

521:                                              ; preds = %516, %507
  br label %527

522:                                              ; preds = %501
  %523 = load i8*, i8** @FARM_DEFAULT_WEIGHT, align 8
  %524 = ptrtoint i8* %523 to i32
  %525 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %525, i32 0, i32 10
  store i32 %524, i32* %526, align 8
  br label %527

527:                                              ; preds = %522, %521
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %528, i32 0, i32 9
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* @SERVER_TYPE_FARM_CONTROLLER, align 4
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %538

533:                                              ; preds = %527
  %534 = load i32*, i32** %4, align 8
  %535 = call i8* @CfgGetBool(i32* %534, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0))
  %536 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %536, i32 0, i32 24
  store i8* %535, i8** %537, align 8
  br label %538

538:                                              ; preds = %533, %527
  %539 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %539, i32 0, i32 9
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* @SERVER_TYPE_STANDALONE, align 4
  %543 = icmp ne i32 %541, %542
  br i1 %543, label %544, label %551

544:                                              ; preds = %538
  %545 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %545, i32 0, i32 4
  store i32 1, i32* %546, align 8
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %547, i32 0, i32 2
  store i32 1, i32* %548, align 8
  %549 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %549, i32 0, i32 3
  store i32 1, i32* %550, align 4
  br label %551

551:                                              ; preds = %544, %538
  %552 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %552, i32 0, i32 23
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %565

558:                                              ; preds = %551
  %559 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %560 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %559, i32 0, i32 4
  store i32 1, i32* %560, align 8
  %561 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %561, i32 0, i32 2
  store i32 1, i32* %562, align 8
  %563 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %563, i32 0, i32 3
  store i32 1, i32* %564, align 4
  br label %565

565:                                              ; preds = %558, %551
  %566 = load i32*, i32** %4, align 8
  %567 = trunc i64 %25 to i32
  %568 = call i32 @CfgGetStr(i32* %566, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0), i8* %27, i32 %567)
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %573

570:                                              ; preds = %565
  %571 = load i32, i32* @OPENVPN_UDP_PORT, align 4
  %572 = call i32 @ToStr(i8* %27, i32 %571)
  br label %573

573:                                              ; preds = %570, %565
  %574 = call i32 @Zero(%struct.TYPE_22__* %15, i32 80)
  %575 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  %579 = xor i1 %578, true
  %580 = zext i1 %579 to i32
  %581 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 7
  store i32 %580, i32* %581, align 4
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 8
  %585 = icmp ne i32 %584, 0
  %586 = xor i1 %585, true
  %587 = zext i1 %586 to i32
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 8
  store i32 %587, i32* %588, align 8
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 9
  %590 = load i8*, i8** %589, align 8
  %591 = call i32 @StrCpy(i8* %590, i32 8, i8* %27)
  %592 = load i32*, i32** %4, align 8
  %593 = call i8* @CfgGetBool(i32* %592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0))
  %594 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 11
  store i8* %593, i8** %594, align 8
  %595 = load i32*, i32** %4, align 8
  %596 = trunc i64 %25 to i32
  %597 = call i32 @CfgGetStr(i32* %595, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i8* %27, i32 %596)
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %607

599:                                              ; preds = %573
  %600 = call i32 @IsEmptyStr(i8* %27)
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %606

602:                                              ; preds = %599
  %603 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 10
  %604 = load i8*, i8** %603, align 8
  %605 = call i32 @StrCpy(i8* %604, i32 8, i8* %27)
  br label %606

606:                                              ; preds = %602, %599
  br label %607

607:                                              ; preds = %606, %573
  %608 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %609 = call i32 @SiSetOpenVPNAndSSTPConfig(%struct.TYPE_23__* %608, %struct.TYPE_22__* %15)
  %610 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %611 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %610, i32 0, i32 9
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* @SERVER_TYPE_FARM_MEMBER, align 4
  %614 = icmp eq i32 %612, %613
  br i1 %614, label %615, label %689

615:                                              ; preds = %607
  %616 = load i32, i32* @MAX_PUBLIC_PORT_NUM, align 4
  %617 = mul nsw i32 6, %616
  %618 = add nsw i32 %617, 1
  %619 = zext i32 %618 to i64
  %620 = call i8* @llvm.stacksave()
  store i8* %620, i8** %20, align 8
  %621 = alloca i8, i64 %619, align 16
  store i64 %619, i64* %21, align 8
  %622 = load i32*, i32** %4, align 8
  %623 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %624 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %623, i32 0, i32 11
  %625 = load i8*, i8** %624, align 8
  %626 = call i32 @CfgGetStr(i32* %622, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8* %625, i32 8)
  %627 = load i32*, i32** %4, align 8
  %628 = call i32 @CfgGetInt(i32* %627, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0))
  %629 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %630 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %629, i32 0, i32 12
  store i32 %628, i32* %630, align 8
  %631 = load i32*, i32** %4, align 8
  %632 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %632, i32 0, i32 22
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* @SHA1_SIZE, align 4
  %636 = call i32 @CfgGetByte(i32* %631, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 %634, i32 %635)
  %637 = load i32*, i32** %4, align 8
  %638 = call i32 @CfgGetIp32(i32* %637, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  %639 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 21
  store i32 %638, i32* %640, align 8
  %641 = load i32*, i32** %4, align 8
  %642 = trunc i64 %619 to i32
  %643 = call i32 @CfgGetStr(i32* %641, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* %621, i32 %642)
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %687

645:                                              ; preds = %615
  %646 = call %struct.TYPE_21__* @ParseToken(i8* %621, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0))
  store %struct.TYPE_21__* %646, %struct.TYPE_21__** %22, align 8
  %647 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %648 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %651 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %650, i32 0, i32 13
  store i32 %649, i32* %651, align 4
  %652 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %653 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %652, i32 0, i32 13
  %654 = load i32, i32* %653, align 4
  %655 = sext i32 %654 to i64
  %656 = mul i64 %655, 8
  %657 = trunc i64 %656 to i32
  %658 = call i32* @ZeroMalloc(i32 %657)
  %659 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %660 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %659, i32 0, i32 20
  store i32* %658, i32** %660, align 8
  store i64 0, i64* %23, align 8
  br label %661

661:                                              ; preds = %681, %645
  %662 = load i64, i64* %23, align 8
  %663 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %664 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %663, i32 0, i32 13
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  %667 = icmp ult i64 %662, %666
  br i1 %667, label %668, label %684

668:                                              ; preds = %661
  %669 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %670 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %669, i32 0, i32 1
  %671 = load i32*, i32** %670, align 8
  %672 = load i64, i64* %23, align 8
  %673 = getelementptr inbounds i32, i32* %671, i64 %672
  %674 = load i32, i32* %673, align 4
  %675 = call i32 @ToInt(i32 %674)
  %676 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %677 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %676, i32 0, i32 20
  %678 = load i32*, i32** %677, align 8
  %679 = load i64, i64* %23, align 8
  %680 = getelementptr inbounds i32, i32* %678, i64 %679
  store i32 %675, i32* %680, align 4
  br label %681

681:                                              ; preds = %668
  %682 = load i64, i64* %23, align 8
  %683 = add i64 %682, 1
  store i64 %683, i64* %23, align 8
  br label %661

684:                                              ; preds = %661
  %685 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %686 = call i32 @FreeToken(%struct.TYPE_21__* %685)
  br label %687

687:                                              ; preds = %684, %615
  %688 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %688)
  br label %689

689:                                              ; preds = %687, %607
  %690 = load i32*, i32** %4, align 8
  %691 = call i8* @CfgGetBool(i32* %690, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0))
  %692 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %693 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %692, i32 0, i32 19
  store i8* %691, i8** %693, align 8
  %694 = load i32*, i32** %4, align 8
  %695 = call i8* @CfgGetBool(i32* %694, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0))
  %696 = ptrtoint i8* %695 to i32
  %697 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %698 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %697, i32 0, i32 14
  store i32 %696, i32* %698, align 8
  %699 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %700 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %699, i32 0, i32 14
  %701 = load i32, i32* %700, align 8
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %705

703:                                              ; preds = %689
  %704 = call i32 (...) @DisableGetHostNameWhenAcceptInit()
  br label %705

705:                                              ; preds = %703, %689
  %706 = load i32*, i32** %4, align 8
  %707 = call i8* @CfgGetBool(i32* %706, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  %708 = ptrtoint i8* %707 to i32
  %709 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %710 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %709, i32 0, i32 15
  store i32 %708, i32* %710, align 4
  %711 = load i32, i32* @GSF_DISABLE_SESSION_RECONNECT, align 4
  %712 = load i32*, i32** %4, align 8
  %713 = call i8* @CfgGetBool(i32* %712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0))
  %714 = call i32 @SetGlobalServerFlag(i32 %711, i8* %713)
  %715 = load i32*, i32** %4, align 8
  %716 = call i8* @CfgGetBool(i32* %715, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0))
  %717 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %718 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %717, i32 0, i32 6
  %719 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %718, i32 0, i32 2
  store i8* %716, i8** %719, align 8
  %720 = load i32*, i32** %4, align 8
  %721 = call i8* @CfgGetBool(i32* %720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0))
  %722 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %723 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %722, i32 0, i32 6
  %724 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %723, i32 0, i32 1
  store i8* %721, i8** %724, align 8
  %725 = load i32*, i32** %4, align 8
  %726 = call i8* @CfgGetBool(i32* %725, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0))
  %727 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %728 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %727, i32 0, i32 6
  %729 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %728, i32 0, i32 0
  store i8* %726, i8** %729, align 8
  %730 = load i32*, i32** %4, align 8
  %731 = call i8* @CfgGetBool(i32* %730, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0))
  %732 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %733 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %732, i32 0, i32 18
  store i8* %731, i8** %733, align 8
  %734 = load i32*, i32** %4, align 8
  %735 = call i8* @CfgGetBool(i32* %734, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0))
  %736 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %737 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %736, i32 0, i32 17
  store i8* %735, i8** %737, align 8
  %738 = load i32*, i32** %4, align 8
  %739 = call i32 @CfgGetInt(i32* %738, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0))
  %740 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %741 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %740, i32 0, i32 4
  store i32 %739, i32* %741, align 4
  %742 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %743 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %742, i32 0, i32 4
  %744 = load i32, i32* %743, align 4
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %750

746:                                              ; preds = %705
  %747 = load i32, i32* @DH_PARAM_BITS_DEFAULT, align 4
  %748 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %749 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %748, i32 0, i32 4
  store i32 %747, i32* %749, align 4
  br label %750

750:                                              ; preds = %746, %705
  %751 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %752 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %751, i32 0, i32 4
  %753 = load i32, i32* %752, align 4
  %754 = call i32 @DhNewFromBits(i32 %753)
  %755 = call i32 @SetDhParam(i32 %754)
  %756 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %757 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %756, i32 0, i32 16
  %758 = load i64, i64* %757, align 8
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %769

760:                                              ; preds = %750
  %761 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %762 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %761, i32 0, i32 16
  %763 = load i64, i64* %762, align 8
  %764 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %765 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %764, i32 0, i32 4
  %766 = load i32, i32* %765, align 4
  %767 = call i32 @DhNewFromBits(i32 %766)
  %768 = call i32 @OpenVpnServerUdpSetDhParam(i64 %763, i32 %767)
  br label %769

769:                                              ; preds = %760, %750
  %770 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %771 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %770, i32 0, i32 5
  %772 = load i32, i32* %771, align 8
  %773 = call i32 @Unlock(i32 %772)
  store i32 0, i32* %13, align 4
  br label %774

774:                                              ; preds = %769, %33
  %775 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %775)
  %776 = load i32, i32* %13, align 4
  switch i32 %776, label %778 [
    i32 0, label %777
    i32 1, label %777
  ]

777:                                              ; preds = %774, %774
  ret void

778:                                              ; preds = %774
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CfgGetInt(i32*, i8*) #2

declare dso_local i32 @MAKESURE(i32, i32, i32) #2

declare dso_local i32 @SetGetIpThreadMaxNum(i64) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i32 @CfgGetIp(i32*, i8*, i32*) #2

declare dso_local i32 @CfgIsItem(i32*, i8*) #2

declare dso_local i32 @SetLogSwitchType(i32, i64) #2

declare dso_local i32 @SetMaxLogSize(i32) #2

declare dso_local i32 @CfgGetInt64(i32*, i8*) #2

declare dso_local i32* @CfgGetFolder(i32*, i8*) #2

declare dso_local i32 @SiLoadGlobalParamsCfg(i32*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i64 @GetServerCapsBool(%struct.TYPE_23__*, i8*) #2

declare dso_local i32 @SiSetSysLogSetting(%struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i32 @SetMaxConnectionsPerIp(i32) #2

declare dso_local i32 @SetMaxUnestablishedConnections(i32) #2

declare dso_local i32 @SetEraserCheckInterval(i32) #2

declare dso_local i32 @NewEraser(i32, i32) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @NewTinyLog(...) #2

declare dso_local i32* @CfgGetBuf(i32*, i8*) #2

declare dso_local i32* @BufToX(i32*, i32) #2

declare dso_local i32 @FreeBuf(i32*) #2

declare dso_local i32* @BufToK(i32*, i32, i32, i32*) #2

declare dso_local i32 @CheckXandK(i32*, i32*) #2

declare dso_local i32 @FreeX(i32*) #2

declare dso_local i32 @FreeK(i32*) #2

declare dso_local i32 @SiGenerateDefaultCert(i32**, i32**) #2

declare dso_local i32 @SetCedarCert(%struct.TYPE_25__*, i32*, i32*) #2

declare dso_local i64 @IsPrintableAsciiChar(i8 signext) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @SetCedarCipherList(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @SiLoadTraffic(i32*, i8*, i32) #2

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #2

declare dso_local i32 @Sha0(i32, i8*, i32) #2

declare dso_local i32 @ToStr(i8*, i32) #2

declare dso_local i32 @SiSetOpenVPNAndSSTPConfig(%struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i32 @CfgGetIp32(i32*, i8*) #2

declare dso_local %struct.TYPE_21__* @ParseToken(i8*, i8*) #2

declare dso_local i32* @ZeroMalloc(i32) #2

declare dso_local i32 @ToInt(i32) #2

declare dso_local i32 @FreeToken(%struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @DisableGetHostNameWhenAcceptInit(...) #2

declare dso_local i32 @SetGlobalServerFlag(i32, i8*) #2

declare dso_local i32 @SetDhParam(i32) #2

declare dso_local i32 @DhNewFromBits(i32) #2

declare dso_local i32 @OpenVpnServerUdpSetDhParam(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
