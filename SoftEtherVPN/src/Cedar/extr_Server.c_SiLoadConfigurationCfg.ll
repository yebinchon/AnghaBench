; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadConfigurationCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadConfigurationCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i8*, %struct.TYPE_23__*, i8*, i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"ServerConfiguration\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"VirtualHUB\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ListenerList\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LocalBridgeList\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"VirtualLayer3SwitchList\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LicenseManager\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"IPsec\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DDnsClient\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"LS_BAD_CONFIG\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ConfigRevision\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"b_support_license\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"b_support_ipsec\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"ProxyHostName\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"LocalHostname\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@VG_HUBNAME = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"IPsecMessageDisplayed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiLoadConfigurationCfg(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_22__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = icmp eq %struct.TYPE_21__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  br label %262

30:                                               ; preds = %26
  store i32* null, i32** %14, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @CfgGetFolder(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @CfgGetFolder(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @CfgGetFolder(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @CfgGetFolder(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @CfgGetFolder(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @CfgGetFolder(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @CfgGetFolder(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @CfgGetFolder(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = call i32 @SLog(%struct.TYPE_23__* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %262

54:                                               ; preds = %30
  %55 = call i32 (...) @InitEth()
  %56 = load i32*, i32** %5, align 8
  %57 = call i8* @CfgGetInt(i32* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = call i64 @GetServerCapsBool(%struct.TYPE_21__* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @SiLoadLicenseManager(%struct.TYPE_21__* %74, i32* %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %66, %54
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = call i32 @DestroyServerCapsCache(%struct.TYPE_21__* %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @SiLoadServerCfg(%struct.TYPE_21__* %81, i32* %82)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @SiLoadHubs(%struct.TYPE_21__* %90, i32* %91)
  br label %93

93:                                               ; preds = %89, %78
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @SiLoadListeners(%struct.TYPE_21__* %94, i32* %95)
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @SiLoadLocalBridges(%struct.TYPE_21__* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @SiLoadL3Switchs(%struct.TYPE_21__* %114, i32* %115)
  br label %117

117:                                              ; preds = %113, %110, %103
  %118 = load i32*, i32** %12, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = call i64 @GetServerCapsBool(%struct.TYPE_21__* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @SiLoadIPsec(%struct.TYPE_21__* %125, i32* %126)
  br label %128

128:                                              ; preds = %124, %120, %117
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %231

135:                                              ; preds = %128
  %136 = load i32*, i32** %13, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = call i8* @NewDDNSClient(%struct.TYPE_23__* %141, i32* null, %struct.TYPE_22__* null)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  br label %230

145:                                              ; preds = %135
  %146 = load i32, i32* @SHA1_SIZE, align 4
  %147 = zext i32 %146 to i64
  %148 = call i8* @llvm.stacksave()
  store i8* %148, i8** %15, align 8
  %149 = alloca i32, i64 %147, align 16
  store i64 %147, i64* %16, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = call i8* @CfgGetBool(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %228

154:                                              ; preds = %145
  %155 = load i32, i32* @MAX_SIZE, align 4
  %156 = zext i32 %155 to i64
  %157 = call i8* @llvm.stacksave()
  store i8* %157, i8** %17, align 8
  %158 = alloca i8, i64 %156, align 16
  store i64 %156, i64* %18, align 8
  %159 = load i32, i32* @MAX_SIZE, align 4
  %160 = zext i32 %159 to i64
  %161 = alloca i8, i64 %160, align 16
  store i64 %160, i64* %19, align 8
  %162 = call i32 @Zero(%struct.TYPE_22__* %20, i32 48)
  %163 = load i32*, i32** %13, align 8
  %164 = call i8* @CfgGetInt(i32* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 5
  store i8* %164, i8** %165, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @CfgGetStr(i32* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %168, i32 8)
  %170 = load i32*, i32** %13, align 8
  %171 = call i8* @CfgGetInt(i32* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 4
  store i8* %171, i8** %172, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @CfgGetStr(i32* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %175, i32 8)
  %177 = load i32*, i32** %13, align 8
  %178 = call i32* @CfgGetBuf(i32* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i32* %178, i32** %21, align 8
  %179 = load i32*, i32** %21, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %154
  %182 = load i32*, i32** %21, align 8
  %183 = call i8* @DecryptPassword(i32* %182)
  store i8* %183, i8** %22, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %22, align 8
  %187 = call i32 @StrCpy(i32 %185, i32 4, i8* %186)
  %188 = load i8*, i8** %22, align 8
  %189 = call i32 @Free(i8* %188)
  %190 = load i32*, i32** %21, align 8
  %191 = call i32 @FreeBuf(i32* %190)
  br label %192

192:                                              ; preds = %181, %154
  %193 = load i32*, i32** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @CfgGetStr(i32* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %195, i32 8)
  %197 = trunc i64 %156 to i32
  %198 = call i32 @GetMachineHostName(i8* %158, i32 %197)
  %199 = load i32*, i32** %13, align 8
  %200 = trunc i64 %160 to i32
  %201 = call i32 @CfgGetStr(i32* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %161, i32 %200)
  %202 = load i32*, i32** %13, align 8
  %203 = mul nuw i64 4, %147
  %204 = trunc i64 %203 to i32
  %205 = call i32 @CfgGetByte(i32* %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32* %149, i32 %204)
  %206 = sext i32 %205 to i64
  %207 = mul nuw i64 4, %147
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %212, label %209

209:                                              ; preds = %192
  %210 = call i64 @StrCmpi(i8* %158, i8* %161)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209, %192
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %214, align 8
  %216 = call i8* @NewDDNSClient(%struct.TYPE_23__* %215, i32* null, %struct.TYPE_22__* %20)
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  br label %226

219:                                              ; preds = %209
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = call i8* @NewDDNSClient(%struct.TYPE_23__* %222, i32* %149, %struct.TYPE_22__* %20)
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %219, %212
  %227 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %227)
  br label %228

228:                                              ; preds = %226, %153
  %229 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %229)
  br label %230

230:                                              ; preds = %228, %138
  br label %231

231:                                              ; preds = %230, %128
  store i32* null, i32** %23, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = call i32 @LockHubList(%struct.TYPE_23__* %234)
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %237, align 8
  %239 = load i32, i32* @VG_HUBNAME, align 4
  %240 = call i32* @GetHub(%struct.TYPE_23__* %238, i32 %239)
  store i32* %240, i32** %23, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = call i32 @UnlockHubList(%struct.TYPE_23__* %243)
  %245 = load i32*, i32** %23, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %231
  %248 = load i32*, i32** %23, align 8
  %249 = call i32 @StopHub(i32* %248)
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %251, align 8
  %253 = load i32*, i32** %23, align 8
  %254 = call i32 @DelHub(%struct.TYPE_23__* %252, i32* %253)
  %255 = load i32*, i32** %23, align 8
  %256 = call i32 @ReleaseHub(i32* %255)
  br label %257

257:                                              ; preds = %247, %231
  %258 = load i32*, i32** %5, align 8
  %259 = call i8* @CfgGetBool(i32* %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  store i32 1, i32* %3, align 4
  br label %262

262:                                              ; preds = %257, %49, %29
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @SLog(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @InitEth(...) #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

declare dso_local i64 @GetServerCapsBool(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @SiLoadLicenseManager(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @DestroyServerCapsCache(%struct.TYPE_21__*) #1

declare dso_local i32 @SiLoadServerCfg(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @SiLoadHubs(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @SiLoadListeners(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @SiLoadLocalBridges(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @SiLoadL3Switchs(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @SiLoadIPsec(%struct.TYPE_21__*, i32*) #1

declare dso_local i8* @NewDDNSClient(%struct.TYPE_23__*, i32*, %struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @CfgGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i8* @DecryptPassword(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @GetMachineHostName(i8*, i32) #1

declare dso_local i32 @CfgGetByte(i32*, i8*, i32*, i32) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LockHubList(%struct.TYPE_23__*) #1

declare dso_local i32* @GetHub(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @UnlockHubList(%struct.TYPE_23__*) #1

declare dso_local i32 @StopHub(i32*) #1

declare dso_local i32 @DelHub(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
