; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiReadSettingFromCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiReadSettingFromCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i8*, %struct.TYPE_18__*, i8*, i8*, i32, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i8*, i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_23__ = type { i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"AccountDatabase\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ClientManagerSetting\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CommonProxySetting\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ProxyHostName\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"UnixVLan\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"EncryptedPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"PasswordRemoteOnly\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"UseSecureDeviceId\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"UserAgent\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"RootCA\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"DontSavePassword\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"EasyMode\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"LockMode\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@CLIENT_MACOS_TAP_NAME = common dso_local global i8* null, align 8
@OSTYPE_MACOS_X = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CiReadSettingFromCfg(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @CfgGetFolder(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @CfgGetFolder(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @CfgGetFolder(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %10, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 7
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @CiLoadClientConfig(%struct.TYPE_17__* %46, i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @CfgGetFolder(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %92

53:                                               ; preds = %42
  %54 = call i32 @Zero(%struct.TYPE_20__* %15, i32 48)
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @CfgGetInt(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 5
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @CfgGetStr(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 8)
  %62 = load i32*, i32** %11, align 8
  %63 = call i8* @CfgGetInt(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 4
  store i8* %63, i8** %64, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @CfgGetStr(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %67, i32 8)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @CfgGetBuf(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32* %70, i32** %16, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %53
  %74 = load i32*, i32** %16, align 8
  %75 = call i8* @DecryptPassword(i32* %74)
  store i8* %75, i8** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @StrCpy(i32 %77, i32 4, i8* %78)
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 @Free(i8* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @FreeBuf(i32* %82)
  br label %84

84:                                               ; preds = %73, %53
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @CfgGetStr(i32* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %87, i32 8)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 10
  %91 = call i32 @Copy(i32* %90, %struct.TYPE_20__* %15, i32 48)
  br label %92

92:                                               ; preds = %84, %42
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @CfgGetInt64(i32* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %98 = call i32 @NewEraser(i32 %95, i32 %97)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 8
  %101 = call %struct.TYPE_23__* (...) @GetOsInfo()
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @OS_IS_UNIX(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %92
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @CfgGetFolder(i32* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @CiLoadVLanList(%struct.TYPE_22__* %112, i32* %113)
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @CiLoadAccountDatabase(%struct.TYPE_22__* %117, i32* %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SHA1_SIZE, align 4
  %125 = call i32 @CfgGetByte(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %123, i32 %124)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %116
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @Sha0(i32 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 0)
  br label %132

132:                                              ; preds = %127, %116
  %133 = load i32*, i32** %5, align 8
  %134 = call i8* @CfgGetBool(i32* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call i8* @CfgGetInt(i32* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = trunc i64 %21 to i32
  %143 = call i64 @CfgGetStr(i32* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %23, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %132
  %146 = call i32 @IsEmptyStr(i8* %23)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @Free(i8* %153)
  %155 = call i8* @CopyStr(i8* %23)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i8* %155, i8** %159, align 8
  br label %160

160:                                              ; preds = %148, %145
  br label %161

161:                                              ; preds = %160, %132
  %162 = load i32*, i32** %5, align 8
  %163 = call i32* @CfgGetFolder(i32* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32* %163, i32** %7, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @CiLoadCAList(%struct.TYPE_22__* %167, i32* %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load i32*, i32** %5, align 8
  %172 = call i8* @CfgGetBool(i32* %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %206

177:                                              ; preds = %170
  %178 = call %struct.TYPE_23__* (...) @GetOsInfo()
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %18, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  store %struct.TYPE_21__* %183, %struct.TYPE_21__** %19, align 8
  %184 = load i64, i64* %18, align 8
  %185 = call i64 @OS_IS_UNIX(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %177
  %188 = load i64, i64* %18, align 8
  %189 = call i64 @OS_IS_WINDOWS_NT(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187, %177
  %192 = load i32*, i32** %10, align 8
  %193 = call i8* @CfgGetBool(i32* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %191, %187
  %197 = load i32*, i32** %10, align 8
  %198 = call i8* @CfgGetBool(i32* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @CfgGetByte(i32* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %204, i32 4)
  br label %206

206:                                              ; preds = %196, %170
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

207:                                              ; preds = %206, %41, %35, %29
  %208 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #2

declare dso_local i32 @CiLoadClientConfig(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #2

declare dso_local i8* @CfgGetInt(i32*, i8*) #2

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32* @CfgGetBuf(i32*, i8*) #2

declare dso_local i8* @DecryptPassword(i32*) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @FreeBuf(i32*) #2

declare dso_local i32 @Copy(i32*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @NewEraser(i32, i32) #2

declare dso_local i32 @CfgGetInt64(i32*, i8*) #2

declare dso_local i64 @OS_IS_UNIX(i64) #2

declare dso_local %struct.TYPE_23__* @GetOsInfo(...) #2

declare dso_local i32 @CiLoadVLanList(%struct.TYPE_22__*, i32*) #2

declare dso_local i32 @CiLoadAccountDatabase(%struct.TYPE_22__*, i32*) #2

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #2

declare dso_local i32 @Sha0(i32, i8*, i32) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i8* @CopyStr(i8*) #2

declare dso_local i32 @CiLoadCAList(%struct.TYPE_22__*, i32*) #2

declare dso_local i64 @OS_IS_WINDOWS_NT(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
