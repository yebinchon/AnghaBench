; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i64, i32 (%struct.TYPE_13__*, i8*)* }
%struct.TYPE_12__ = type { i8*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CMD_VPNCMD_CLIENT_CONNECTED\00", align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"About\00", align 1
@PsAbout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Check\00", align 1
@PtCheck = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"VersionGet\00", align 1
@PcVersionGet = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"PasswordSet\00", align 1
@PcPasswordSet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"PasswordGet\00", align 1
@PcPasswordGet = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"CertList\00", align 1
@PcCertList = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"CertAdd\00", align 1
@PcCertAdd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"CertDelete\00", align 1
@PcCertDelete = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"CertGet\00", align 1
@PcCertGet = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"SecureList\00", align 1
@PcSecureList = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"SecureSelect\00", align 1
@PcSecureSelect = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"SecureGet\00", align 1
@PcSecureGet = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"NicCreate\00", align 1
@PcNicCreate = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"NicDelete\00", align 1
@PcNicDelete = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"NicUpgrade\00", align 1
@PcNicUpgrade = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"NicGetSetting\00", align 1
@PcNicGetSetting = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"NicSetSetting\00", align 1
@PcNicSetSetting = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"NicEnable\00", align 1
@PcNicEnable = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"NicDisable\00", align 1
@PcNicDisable = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"NicList\00", align 1
@PcNicList = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"AccountList\00", align 1
@PcAccountList = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"AccountCreate\00", align 1
@PcAccountCreate = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"AccountSet\00", align 1
@PcAccountSet = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"AccountGet\00", align 1
@PcAccountGet = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"AccountDelete\00", align 1
@PcAccountDelete = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"AccountUsernameSet\00", align 1
@PcAccountUsernameSet = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"AccountAnonymousSet\00", align 1
@PcAccountAnonymousSet = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"AccountPasswordSet\00", align 1
@PcAccountPasswordSet = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [15 x i8] c"AccountCertSet\00", align 1
@PcAccountCertSet = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"AccountCertGet\00", align 1
@PcAccountCertGet = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [22 x i8] c"AccountEncryptDisable\00", align 1
@PcAccountEncryptDisable = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [21 x i8] c"AccountEncryptEnable\00", align 1
@PcAccountEncryptEnable = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [22 x i8] c"AccountCompressEnable\00", align 1
@PcAccountCompressEnable = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [23 x i8] c"AccountCompressDisable\00", align 1
@PcAccountCompressDisable = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [21 x i8] c"AccountHttpHeaderAdd\00", align 1
@PcAccountHttpHeaderAdd = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [24 x i8] c"AccountHttpHeaderDelete\00", align 1
@PcAccountHttpHeaderDelete = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"AccountHttpHeaderGet\00", align 1
@PcAccountHttpHeaderGet = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [17 x i8] c"AccountProxyNone\00", align 1
@PcAccountProxyNone = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"AccountProxyHttp\00", align 1
@PcAccountProxyHttp = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [18 x i8] c"AccountProxySocks\00", align 1
@PcAccountProxySocks = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [19 x i8] c"AccountProxySocks5\00", align 1
@PcAccountProxySocks5 = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [24 x i8] c"AccountServerCertEnable\00", align 1
@PcAccountServerCertEnable = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [25 x i8] c"AccountServerCertDisable\00", align 1
@PcAccountServerCertDisable = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [31 x i8] c"AccountRetryOnServerCertEnable\00", align 1
@PcAccountRetryOnServerCertEnable = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [32 x i8] c"AccountRetryOnServerCertDisable\00", align 1
@PcAccountRetryOnServerCertDisable = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [21 x i8] c"AccountServerCertSet\00", align 1
@PcAccountServerCertSet = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [24 x i8] c"AccountServerCertDelete\00", align 1
@PcAccountServerCertDelete = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [21 x i8] c"AccountServerCertGet\00", align 1
@PcAccountServerCertGet = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"AccountDetailSet\00", align 1
@PcAccountDetailSet = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [14 x i8] c"AccountRename\00", align 1
@PcAccountRename = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"AccountConnect\00", align 1
@PcAccountConnect = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [18 x i8] c"AccountDisconnect\00", align 1
@PcAccountDisconnect = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [17 x i8] c"AccountStatusGet\00", align 1
@PcAccountStatusGet = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [14 x i8] c"AccountNicSet\00", align 1
@PcAccountNicSet = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [18 x i8] c"AccountStatusShow\00", align 1
@PcAccountStatusShow = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [18 x i8] c"AccountStatusHide\00", align 1
@PcAccountStatusHide = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [21 x i8] c"AccountSecureCertSet\00", align 1
@PcAccountSecureCertSet = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [16 x i8] c"AccountRetrySet\00", align 1
@PcAccountRetrySet = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [18 x i8] c"AccountStartupSet\00", align 1
@PcAccountStartupSet = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [21 x i8] c"AccountStartupRemove\00", align 1
@PcAccountStartupRemove = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [14 x i8] c"AccountExport\00", align 1
@PcAccountExport = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [14 x i8] c"AccountImport\00", align 1
@PcAccountImport = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [13 x i8] c"RemoteEnable\00", align 1
@PcRemoteEnable = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"RemoteDisable\00", align 1
@PcRemoteDisable = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [26 x i8] c"TUNDownOnDisconnectEnable\00", align 1
@PcTunDownOnDisconnectEnable = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [27 x i8] c"TUNDownOnDisconnectDisable\00", align 1
@PcTunDownOnDisconnectDisable = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [23 x i8] c"TUNDownOnDisconnectGet\00", align 1
@PcTunDownOnDisconnectGet = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [11 x i8] c"KeepEnable\00", align 1
@PcKeepEnable = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [12 x i8] c"KeepDisable\00", align 1
@PcKeepDisable = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [8 x i8] c"KeepSet\00", align 1
@PcKeepSet = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"KeepGet\00", align 1
@PcKeepGet = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [9 x i8] c"MakeCert\00", align 1
@PtMakeCert = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [13 x i8] c"MakeCert2048\00", align 1
@PtMakeCert2048 = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [14 x i8] c"TrafficClient\00", align 1
@PtTrafficClient = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [14 x i8] c"TrafficServer\00", align 1
@PtTrafficServer = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [12 x i8] c"VPN Client>\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CONSOLE_CSV = common dso_local global i64 0, align 8
@.str.78 = private unnamed_addr constant [11 x i8] c"CMD_MSG_OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PcMain(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [75 x %struct.TYPE_12__], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %407

18:                                               ; preds = %1
  %19 = trunc i64 %13 to i32
  %20 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @UniFormat(i8* %14, i32 %19, i8* %20, i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_13__* %32, i8* %14)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = call i32 %38(%struct.TYPE_13__* %41, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  br label %43

43:                                               ; preds = %405, %18
  br label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds [75 x %struct.TYPE_12__], [75 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %48 = load i32, i32* @PsAbout, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 16
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %52 = load i32, i32* @PtCheck, align 4
  store i32 %52, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %56 = load i32, i32* @PcVersionGet, align 4
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %58, align 16
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %60 = load i32, i32* @PcPasswordSet, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %64 = load i32, i32* @PcPasswordGet, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %66, align 16
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %68 = load i32, i32* @PcCertList, align 4
  store i32 %68, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %70, align 16
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %72 = load i32, i32* @PcCertAdd, align 4
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %76 = load i32, i32* @PcCertDelete, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %80 = load i32, i32* @PcCertGet, align 4
  store i32 %80, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %84 = load i32, i32* @PcSecureList, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %86, align 16
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %88 = load i32, i32* @PcSecureSelect, align 4
  store i32 %88, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %90, align 16
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %92 = load i32, i32* @PcSecureGet, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %94, align 16
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %96 = load i32, i32* @PcNicCreate, align 4
  store i32 %96, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %98, align 16
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %100 = load i32, i32* @PcNicDelete, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %102, align 16
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %104 = load i32, i32* @PcNicUpgrade, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %106, align 16
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %108 = load i32, i32* @PcNicGetSetting, align 4
  store i32 %108, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %110, align 16
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %112 = load i32, i32* @PcNicSetSetting, align 4
  store i32 %112, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %114, align 16
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %116 = load i32, i32* @PcNicEnable, align 4
  store i32 %116, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %118, align 16
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %120 = load i32, i32* @PcNicDisable, align 4
  store i32 %120, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %122, align 16
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %124 = load i32, i32* @PcNicList, align 4
  store i32 %124, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %126, align 16
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %128 = load i32, i32* @PcAccountList, align 4
  store i32 %128, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %130, align 16
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %132 = load i32, i32* @PcAccountCreate, align 4
  store i32 %132, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %134, align 16
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %136 = load i32, i32* @PcAccountSet, align 4
  store i32 %136, i32* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %138, align 16
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %140 = load i32, i32* @PcAccountGet, align 4
  store i32 %140, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %142, align 16
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %144 = load i32, i32* @PcAccountDelete, align 4
  store i32 %144, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %146, align 16
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %148 = load i32, i32* @PcAccountUsernameSet, align 4
  store i32 %148, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8** %150, align 16
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %152 = load i32, i32* @PcAccountAnonymousSet, align 4
  store i32 %152, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8** %154, align 16
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %156 = load i32, i32* @PcAccountPasswordSet, align 4
  store i32 %156, i32* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8** %158, align 16
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %160 = load i32, i32* @PcAccountCertSet, align 4
  store i32 %160, i32* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8** %162, align 16
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %164 = load i32, i32* @PcAccountCertGet, align 4
  store i32 %164, i32* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i8** %166, align 16
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %168 = load i32, i32* @PcAccountEncryptDisable, align 4
  store i32 %168, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8** %170, align 16
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %172 = load i32, i32* @PcAccountEncryptEnable, align 4
  store i32 %172, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 1
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i8** %174, align 16
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %176 = load i32, i32* @PcAccountCompressEnable, align 4
  store i32 %176, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8** %178, align 16
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %180 = load i32, i32* @PcAccountCompressDisable, align 4
  store i32 %180, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i8** %182, align 16
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %184 = load i32, i32* @PcAccountHttpHeaderAdd, align 4
  store i32 %184, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8** %186, align 16
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %188 = load i32, i32* @PcAccountHttpHeaderDelete, align 4
  store i32 %188, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 1
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8** %190, align 16
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %192 = load i32, i32* @PcAccountHttpHeaderGet, align 4
  store i32 %192, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8** %194, align 16
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %196 = load i32, i32* @PcAccountProxyNone, align 4
  store i32 %196, i32* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8** %198, align 16
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %200 = load i32, i32* @PcAccountProxyHttp, align 4
  store i32 %200, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i8** %202, align 16
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %204 = load i32, i32* @PcAccountProxySocks, align 4
  store i32 %204, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i8** %206, align 16
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %208 = load i32, i32* @PcAccountProxySocks5, align 4
  store i32 %208, i32* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i64 1
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i8** %210, align 16
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %212 = load i32, i32* @PcAccountServerCertEnable, align 4
  store i32 %212, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i8** %214, align 16
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %216 = load i32, i32* @PcAccountServerCertDisable, align 4
  store i32 %216, i32* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i8** %218, align 16
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %220 = load i32, i32* @PcAccountRetryOnServerCertEnable, align 4
  store i32 %220, i32* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0), i8** %222, align 16
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %224 = load i32, i32* @PcAccountRetryOnServerCertDisable, align 4
  store i32 %224, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i8** %226, align 16
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %228 = load i32, i32* @PcAccountServerCertSet, align 4
  store i32 %228, i32* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 1
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0), i8** %230, align 16
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %232 = load i32, i32* @PcAccountServerCertDelete, align 4
  store i32 %232, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i64 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0), i8** %234, align 16
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %236 = load i32, i32* @PcAccountServerCertGet, align 4
  store i32 %236, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 1
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8** %238, align 16
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %240 = load i32, i32* @PcAccountDetailSet, align 4
  store i32 %240, i32* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i64 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8** %242, align 16
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %244 = load i32, i32* @PcAccountRename, align 4
  store i32 %244, i32* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8** %246, align 16
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %248 = load i32, i32* @PcAccountConnect, align 4
  store i32 %248, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 1
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i8** %250, align 16
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %252 = load i32, i32* @PcAccountDisconnect, align 4
  store i32 %252, i32* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i64 1
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i8** %254, align 16
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %256 = load i32, i32* @PcAccountStatusGet, align 4
  store i32 %256, i32* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 1
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8** %258, align 16
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %260 = load i32, i32* @PcAccountNicSet, align 4
  store i32 %260, i32* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i64 1
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i8** %262, align 16
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %264 = load i32, i32* @PcAccountStatusShow, align 4
  store i32 %264, i32* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i64 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0), i8** %266, align 16
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %268 = load i32, i32* @PcAccountStatusHide, align 4
  store i32 %268, i32* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i64 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i8** %270, align 16
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %272 = load i32, i32* @PcAccountSecureCertSet, align 4
  store i32 %272, i32* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 1
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8** %274, align 16
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %276 = load i32, i32* @PcAccountRetrySet, align 4
  store i32 %276, i32* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i64 1
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i8** %278, align 16
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %280 = load i32, i32* @PcAccountStartupSet, align 4
  store i32 %280, i32* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 1
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0), i8** %282, align 16
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %284 = load i32, i32* @PcAccountStartupRemove, align 4
  store i32 %284, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i64 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8** %286, align 16
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %288 = load i32, i32* @PcAccountExport, align 4
  store i32 %288, i32* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i64 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8** %290, align 16
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %292 = load i32, i32* @PcAccountImport, align 4
  store i32 %292, i32* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i64 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i8** %294, align 16
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 1
  %296 = load i32, i32* @PcRemoteEnable, align 4
  store i32 %296, i32* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 1
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8** %298, align 16
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 1
  %300 = load i32, i32* @PcRemoteDisable, align 4
  store i32 %300, i32* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i64 1
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i64 0, i64 0), i8** %302, align 16
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 1
  %304 = load i32, i32* @PcTunDownOnDisconnectEnable, align 4
  store i32 %304, i32* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i64 1
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i8** %306, align 16
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %308 = load i32, i32* @PcTunDownOnDisconnectDisable, align 4
  store i32 %308, i32* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i64 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i8** %310, align 16
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %312 = load i32, i32* @PcTunDownOnDisconnectGet, align 4
  store i32 %312, i32* %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i64 1
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0), i8** %314, align 16
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 1
  %316 = load i32, i32* @PcKeepEnable, align 4
  store i32 %316, i32* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i64 1
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8** %318, align 16
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %320 = load i32, i32* @PcKeepDisable, align 4
  store i32 %320, i32* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i64 1
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i8** %322, align 16
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 1
  %324 = load i32, i32* @PcKeepSet, align 4
  store i32 %324, i32* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i64 1
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), i8** %326, align 16
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  %328 = load i32, i32* @PcKeepGet, align 4
  store i32 %328, i32* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i64 1
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i8** %330, align 16
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 1
  %332 = load i32, i32* @PtMakeCert, align 4
  store i32 %332, i32* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 1
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0), i8** %334, align 16
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 1
  %336 = load i32, i32* @PtMakeCert2048, align 4
  store i32 %336, i32* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i64 1
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8** %338, align 16
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %340 = load i32, i32* @PtTrafficClient, align 4
  store i32 %340, i32* %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i64 1
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i64 0, i64 0), i8** %342, align 16
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %344 = load i32, i32* @PtTrafficServer, align 4
  store i32 %344, i32* %343, align 8
  %345 = trunc i64 %9 to i32
  %346 = call i32 @StrCpy(i8* %11, i32 %345, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0))
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %348, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds [75 x %struct.TYPE_12__], [75 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %355 = call i32 @DispatchNextCmdEx(%struct.TYPE_13__* %349, i32* %352, i8* %11, %struct.TYPE_12__* %353, i32 75, %struct.TYPE_11__* %354)
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %44
  br label %406

358:                                              ; preds = %44
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  store i64 %363, i64* %365, align 8
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @ERR_NO_ERROR, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %399

371:                                              ; preds = %358
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @CONSOLE_CSV, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %399

379:                                              ; preds = %371
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 2
  %384 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %383, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 2
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %386, align 8
  %388 = call i8* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0))
  %389 = call i32 %384(%struct.TYPE_13__* %387, i8* %388)
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 2
  %394 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %393, align 8
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 2
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = call i32 %394(%struct.TYPE_13__* %397, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  br label %399

399:                                              ; preds = %379, %371, %358
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = icmp ne i32* %402, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  br label %406

405:                                              ; preds = %399
  br label %43

406:                                              ; preds = %404, %357
  store i32 0, i32* %6, align 4
  br label %407

407:                                              ; preds = %406, %17
  %408 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %408)
  %409 = load i32, i32* %6, align 4
  switch i32 %409, label %411 [
    i32 0, label %410
    i32 1, label %410
  ]

410:                                              ; preds = %407, %407
  ret void

411:                                              ; preds = %407
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i32) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @DispatchNextCmdEx(%struct.TYPE_13__*, i32*, i8*, %struct.TYPE_12__*, i32, %struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
