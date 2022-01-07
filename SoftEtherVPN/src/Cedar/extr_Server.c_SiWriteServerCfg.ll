; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteServerCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteServerCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32, %struct.TYPE_22__*, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i8*, i8*, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i8*, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"MaxConcurrentDnsClientThreads\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CurrentBuild\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"AutoSaveConfigSpan\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DontBackupConfig\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"BackupConfigOnlyWhenModified\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ListenIP\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ServerLogSwitchType\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"LoggerMaxLogSize\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"GlobalParams\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"UseKeepConnect\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"KeepConnectHost\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"KeepConnectPort\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"KeepConnectProtocol\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"KeepConnectInterval\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SyslogSettings\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"SaveType\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"HostName\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"DisableIPv6Listener\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"DisableDosProtection\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"MaxConnectionsPerIP\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"MaxUnestablishedConnections\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"DisableDeadLockCheck\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"AutoDeleteCheckIntervalSecs\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"UseWebUI\00", align 1
@OSTYPE_LINUX = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"NoLinuxArpFilter\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"NoHighPriorityProcess\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"DisableNatTraversal\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"DisableSSTPServer\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"DisableOpenVPNServer\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"OpenVPNDefaultClientOption\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"OpenVPNPushDummyIPv4AddressOnL2Mode\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"EnableVpnOverIcmp\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"EnableVpnOverDns\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"OpenVPN_UdpPortList\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"OpenVPNObfuscation\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"OpenVPNObfuscationMask\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"UseWebTimePage\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"SaveDebugLog\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"NoSendSignature\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"ServerKey\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"UsernameHubSeparator\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ServerTraffic\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"ServerType\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"CipherName\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i32 0, align 4
@MAX_PUBLIC_PORT_NUM = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"ControllerName\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"ControllerPort\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"MemberPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"PublicIp\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"PublicPorts\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"ClusterMemberWeight\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"ControllerOnly\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"EnableVpnAzure\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"DisableGetHostNameWhenAcceptTcp\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"DisableCoreDumpOnUnix\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_0\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_1\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"Tls_Disable1_2\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"DhParamBits\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"DisableSessionReconnect\00", align 1
@GSF_DISABLE_SESSION_RECONNECT = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [27 x i8] c"StrictSyslogDatetimeFormat\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"DisableJsonRpcWebApi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteServerCfg(i32* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  br label %516

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (...) @GetGetIpThreadMaxNum()
  %27 = call i32 @CfgAddInt(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 18
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CfgAddInt(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 1000
  %40 = call i32 @CfgAddInt(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 38
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CfgAddBool(i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 37
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CfgAddBool(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 36
  %54 = call i32 @CfgAddIp(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 35
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %24
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 35
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CfgAddInt(i32* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %24
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (...) @GetMaxLogSize()
  %70 = call i32 @CfgAddInt64(i32* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32* @CfgCreateFolder(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @SiWriteGlobalParamsCfg(i32* %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 18
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %6, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @Lock(i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 34
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @Lock(i32 %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 34
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %9, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CfgAddBool(i32* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @CfgAddStr(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CfgAddInt(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @CfgAddInt(i32* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %118, 1000
  %120 = call i32 @CfgAddInt(i32* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 34
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Unlock(i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32* @CfgCreateFolder(i32* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i32* %128, i32** %8, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %78
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = call i32 @SiGetSysLogSetting(%struct.TYPE_20__* %132, %struct.TYPE_19__* %10)
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @CfgAddInt(i32* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @CfgAddStr(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @CfgAddInt(i32* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %131, %78
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 18
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @CfgAddBool(i32* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 33
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @CfgAddBool(i32* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 (...) @GetMaxConnectionsPerIp()
  %161 = call i32 @CfgAddInt(i32* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 (...) @GetMaxUnestablishedConnections()
  %164 = call i32 @CfgAddInt(i32* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 32
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @CfgAddBool(i32* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 31
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CfgAddInt64(i32* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 (...) @GetEraserCheckInterval()
  %179 = call i32 @CfgAddInt(i32* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %178)
  %180 = load i32*, i32** %3, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 30
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @CfgAddBool(i32* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %183)
  %185 = call %struct.TYPE_15__* (...) @GetOsInfo()
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @OSTYPE_LINUX, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %146
  %191 = load i32*, i32** %3, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 29
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @CfgAddBool(i32* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %146
  %197 = load i32*, i32** %3, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 28
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @CfgAddBool(i32* %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %200)
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @SERVER_TYPE_STANDALONE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %229

207:                                              ; preds = %196
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %207
  %213 = load i32*, i32** %3, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 26
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @CfgAddBool(i32* %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 %216)
  %218 = load i32*, i32** %3, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 25
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @CfgAddBool(i32* %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %221)
  %223 = load i32*, i32** %3, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 24
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @CfgAddBool(i32* %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %212, %207
  br label %229

229:                                              ; preds = %228, %196
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @CfgAddStr(i32* %230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* %233)
  %235 = load i32*, i32** %3, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 12
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @CfgAddBool(i32* %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), i32 %238)
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %269

244:                                              ; preds = %229
  %245 = load i32*, i32** %3, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 23
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @CfgAddBool(i32* %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %248)
  %250 = load i32*, i32** %3, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 22
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @CfgAddBool(i32* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 %253)
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %256 = call i32 @SiGetOpenVPNAndSSTPConfig(%struct.TYPE_20__* %255, %struct.TYPE_21__* %11)
  %257 = load i32*, i32** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @CfgAddStr(i32* %257, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* %259)
  %261 = load i32*, i32** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @CfgAddBool(i32* %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i32 %263)
  %265 = load i32*, i32** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @CfgAddStr(i32* %265, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %244, %229
  %270 = load i32*, i32** %3, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 21
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @CfgAddBool(i32* %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 %273)
  %275 = load i32*, i32** %3, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 20
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @CfgAddBool(i32* %275, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 %278)
  %280 = load i32*, i32** %3, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 19
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @CfgAddBool(i32* %280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i32 %283)
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 4
  %288 = call i32* @XToBuf(i32 %287, i32 0)
  store i32* %288, i32** %5, align 8
  %289 = load i32*, i32** %3, align 8
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 @CfgAddBuf(i32* %289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32* %290)
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @FreeBuf(i32* %292)
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 10
  %296 = load i32, i32* %295, align 8
  %297 = call i32* @KToBuf(i32 %296, i32 0, i32* null)
  store i32* %297, i32** %5, align 8
  %298 = load i32*, i32** %3, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 @CfgAddBuf(i32* %298, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i32* %299)
  %301 = load i32*, i32** %5, align 8
  %302 = call i32 @FreeBuf(i32* %301)
  %303 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 9
  %306 = call i32 @StrCpy(i8* %303, i32 2, i32* %305)
  %307 = load i32*, i32** %3, align 8
  %308 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %309 = call i32 @CfgAddStr(i32* %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i8* %308)
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @Lock(i32 %312)
  %314 = load i32*, i32** %3, align 8
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @SiWriteTraffic(i32* %314, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 %317)
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @Unlock(i32 %321)
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 18
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %269
  %330 = load i32*, i32** %3, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @CfgAddInt(i32* %330, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i32 %333)
  br label %335

335:                                              ; preds = %329, %269
  %336 = load i32*, i32** %3, align 8
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 18
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @CfgAddStr(i32* %336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i8* %341)
  %343 = load i32*, i32** %3, align 8
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 17
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @CfgAddByte(i32* %343, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i32 %346, i32 4)
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @SERVER_TYPE_FARM_MEMBER, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %429

353:                                              ; preds = %335
  %354 = load i32, i32* @MAX_PUBLIC_PORT_NUM, align 4
  %355 = mul nsw i32 6, %354
  %356 = add nsw i32 %355, 1
  %357 = zext i32 %356 to i64
  %358 = call i8* @llvm.stacksave()
  store i8* %358, i8** %13, align 8
  %359 = alloca i8, i64 %357, align 16
  store i64 %357, i64* %14, align 8
  %360 = load i32*, i32** %3, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @CfgAddStr(i32* %360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* %363)
  %365 = load i32*, i32** %3, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @CfgAddInt(i32* %365, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 %368)
  %370 = load i32*, i32** %3, align 8
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 16
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @SHA1_SIZE, align 4
  %375 = call i32 @CfgAddByte(i32* %370, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32 %373, i32 %374)
  %376 = load i32*, i32** %3, align 8
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 15
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @CfgAddIp32(i32* %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i32 %379)
  %381 = getelementptr inbounds i8, i8* %359, i64 0
  store i8 0, i8* %381, align 16
  store i64 0, i64* %15, align 8
  br label %382

382:                                              ; preds = %405, %353
  %383 = load i64, i64* %15, align 8
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = icmp slt i64 %383, %386
  br i1 %387, label %388, label %408

388:                                              ; preds = %382
  %389 = load i32, i32* @MAX_SIZE, align 4
  %390 = zext i32 %389 to i64
  %391 = call i8* @llvm.stacksave()
  store i8* %391, i8** %16, align 8
  %392 = alloca i8, i64 %390, align 16
  store i64 %390, i64* %17, align 8
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 14
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* %15, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @ToStr(i8* %392, i32 %398)
  %400 = trunc i64 %357 to i32
  %401 = call i32 @StrCat(i8* %359, i32 %400, i8* %392)
  %402 = trunc i64 %357 to i32
  %403 = call i32 @StrCat(i8* %359, i32 %402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  %404 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %404)
  br label %405

405:                                              ; preds = %388
  %406 = load i64, i64* %15, align 8
  %407 = add nsw i64 %406, 1
  store i64 %407, i64* %15, align 8
  br label %382

408:                                              ; preds = %382
  %409 = call i32 @StrLen(i8* %359)
  %410 = icmp sge i32 %409, 1
  br i1 %410, label %411, label %425

411:                                              ; preds = %408
  %412 = call i32 @StrLen(i8* %359)
  %413 = sub nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %359, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = icmp eq i32 %417, 44
  br i1 %418, label %419, label %424

419:                                              ; preds = %411
  %420 = call i32 @StrLen(i8* %359)
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, i8* %359, i64 %422
  store i8 0, i8* %423, align 1
  br label %424

424:                                              ; preds = %419, %411
  br label %425

425:                                              ; preds = %424, %408
  %426 = load i32*, i32** %3, align 8
  %427 = call i32 @CfgAddStr(i32* %426, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* %359)
  %428 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %428)
  br label %429

429:                                              ; preds = %425, %335
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @SERVER_TYPE_STANDALONE, align 4
  %434 = icmp ne i32 %432, %433
  br i1 %434, label %435, label %441

435:                                              ; preds = %429
  %436 = load i32*, i32** %3, align 8
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @CfgAddInt(i32* %436, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i32 %439)
  br label %441

441:                                              ; preds = %435, %429
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @SERVER_TYPE_FARM_CONTROLLER, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %453

447:                                              ; preds = %441
  %448 = load i32*, i32** %3, align 8
  %449 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 13
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @CfgAddBool(i32* %448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i32 %451)
  br label %453

453:                                              ; preds = %447, %441
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 12
  %456 = load i32*, i32** %455, align 8
  %457 = icmp ne i32* %456, null
  br i1 %457, label %458, label %464

458:                                              ; preds = %453
  %459 = load i32*, i32** %3, align 8
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 11
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @CfgAddBool(i32* %459, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i32 %462)
  br label %464

464:                                              ; preds = %458, %453
  %465 = load i32*, i32** %3, align 8
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i32 0, i32 10
  %468 = load i32, i32* %467, align 8
  %469 = call i32 @CfgAddBool(i32* %465, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0), i32 %468)
  %470 = load i32*, i32** %3, align 8
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 9
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @CfgAddBool(i32* %470, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i32 %473)
  %475 = load i32*, i32** %3, align 8
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 6
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = call i32 @CfgAddBool(i32* %475, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i32 %479)
  %481 = load i32*, i32** %3, align 8
  %482 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %482, i32 0, i32 6
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @CfgAddBool(i32* %481, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0), i32 %485)
  %487 = load i32*, i32** %3, align 8
  %488 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %488, i32 0, i32 6
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @CfgAddBool(i32* %487, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i32 %491)
  %493 = load i32*, i32** %3, align 8
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 4
  %496 = load i32, i32* %495, align 8
  %497 = call i32 @CfgAddInt(i32* %493, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 %496)
  %498 = load i32*, i32** %3, align 8
  %499 = load i32, i32* @GSF_DISABLE_SESSION_RECONNECT, align 4
  %500 = call i32 @GetGlobalServerFlag(i32 %499)
  %501 = call i32 @CfgAddBool(i32* %498, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i32 %500)
  %502 = load i32*, i32** %3, align 8
  %503 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 8
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @CfgAddBool(i32* %502, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0), i32 %505)
  %507 = load i32*, i32** %3, align 8
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 7
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @CfgAddBool(i32* %507, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0), i32 %510)
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %512, i32 0, i32 5
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @Unlock(i32 %514)
  br label %516

516:                                              ; preds = %464, %23
  ret void
}

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @GetGetIpThreadMaxNum(...) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddIp(i32*, i8*, i32*) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @GetMaxLogSize(...) #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @SiWriteGlobalParamsCfg(i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SiGetSysLogSetting(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @GetMaxConnectionsPerIp(...) #1

declare dso_local i32 @GetMaxUnestablishedConnections(...) #1

declare dso_local i32 @GetEraserCheckInterval(...) #1

declare dso_local %struct.TYPE_15__* @GetOsInfo(...) #1

declare dso_local i32 @SiGetOpenVPNAndSSTPConfig(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32* @XToBuf(i32, i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32* @KToBuf(i32, i32, i32*) #1

declare dso_local i32 @StrCpy(i8*, i32, i32*) #1

declare dso_local i32 @SiWriteTraffic(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CfgAddIp32(i32*, i8*, i32) #1

declare dso_local i32 @ToStr(i8*, i32) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @GetGlobalServerFlag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
