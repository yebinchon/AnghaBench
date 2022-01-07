; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32* }
%struct.TYPE_25__ = type { i8*, i8*, i64, i32, i32, i64, i64, i32, i32, i32, i8*, i8*, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"RadiusServerPort\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"RadiusRetryInterval\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"RadiusSuffixFilter\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"RadiusRealm\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"RadiusConvertAllMsChapv2AuthRequestToEap\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"RadiusUsePeapInsteadOfEap\00", align 1
@RADIUS_RETRY_INTERVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"RadiusServerName\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"RadiusSecret\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SecurePassword\00", align 1
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"LogSetting\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Traffic\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"AccessList\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@HUB_MAXMSG_LEN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"MessageText\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"CascadeList\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"SecureNAT\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"AdminOption\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"SecurityAccountDatabase\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubCfg(%struct.TYPE_24__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %11, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = icmp eq %struct.TYPE_24__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %3
  br label %411

31:                                               ; preds = %27
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = call i32 @Zero(i8* %9, i32 1)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @CfgGetFolder(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @SiLoadHubOptionCfg(i32* %37, i8* %9)
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_25__* @NewHub(i32* %39, i8* %40, i8* %9)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %7, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %43 = icmp ne %struct.TYPE_25__* %42, null
  br i1 %43, label %44, label %411

44:                                               ; preds = %31
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Lock(i32 %47)
  %49 = load i32, i32* @MAX_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %13, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %14, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @CfgGetInt(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i8* @CfgGetInt(i32* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %17, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @CfgGetStr(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 8)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @CfgGetStr(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 8)
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @CfgGetBool(i32* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 19
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i8* @CfgGetBool(i32* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 18
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %17, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %44
  %80 = load i64, i64* @RADIUS_RETRY_INTERVAL, align 8
  store i64 %80, i64* %17, align 8
  br label %81

81:                                               ; preds = %79, %44
  %82 = load i64, i64* %16, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = trunc i64 %50 to i32
  %87 = call i64 @CfgGetStr(i32* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %52, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = call %struct.TYPE_26__* @CfgGetBuf(i32* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_26__* %91, %struct.TYPE_26__** %15, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %93 = icmp ne %struct.TYPE_26__* %92, null
  br i1 %93, label %94, label %124

94:                                               ; preds = %89
  %95 = load i32, i32* @MAX_SIZE, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %18, align 8
  %98 = alloca i8, i64 %96, align 16
  store i64 %96, i64* %19, align 8
  %99 = trunc i64 %96 to i32
  %100 = call i32 @Zero(i8* %98, i32 %99)
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, %96
  br i1 %105, label %106, label %114

106:                                              ; preds = %94
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @Copy(i8* %98, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %94
  %115 = sub i64 %96, 1
  %116 = getelementptr inbounds i8, i8* %98, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @SetRadiusServerEx(%struct.TYPE_25__* %117, i8* %52, i64 %118, i8* %98, i64 %119)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %122 = call i32 @FreeBuf(%struct.TYPE_26__* %121)
  %123 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %114, %89
  br label %125

125:                                              ; preds = %124, %84, %81
  %126 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @Unlock(i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @CfgGetByte(i32* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 4)
  %136 = sext i32 %135 to i64
  %137 = icmp ne i64 %136, 4
  br i1 %137, label %138, label %143

138:                                              ; preds = %125
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 16
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @Sha0(i32 %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %143

143:                                              ; preds = %138, %125
  %144 = load i32*, i32** %5, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @CfgGetByte(i32* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %147, i32 4)
  %149 = sext i32 %148 to i64
  %150 = icmp ne i64 %149, 4
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 15
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %156 = call i32 @HashPassword(i32 %154, i32 %155, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %157

157:                                              ; preds = %151, %143
  %158 = call i32 @Zero(i8* %12, i32 1)
  %159 = load i32*, i32** %5, align 8
  %160 = call i32* @CfgGetFolder(i32* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %161 = call i32 @SiLoadHubLogCfg(i8* %12, i32* %160)
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %163 = call i32 @SetHubLogSetting(%struct.TYPE_25__* %162, i8* %12)
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 12
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = load i32*, i32** %5, align 8
  %172 = call i8* @CfgGetBool(i32* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %10, align 4
  br label %175

174:                                              ; preds = %157
  store i32 1, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %170
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 14
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @SiLoadTraffic(i32* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %179)
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %182 = load i32*, i32** %5, align 8
  %183 = call i32* @CfgGetFolder(i32* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %184 = call i32 @SiLoadHubAccessLists(%struct.TYPE_25__* %181, i32* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call i8* @CfgGetInt(i32* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  store i64 %187, i64* %11, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %175
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %195
  br label %217

206:                                              ; preds = %175
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %212, %206
  br label %217

217:                                              ; preds = %216, %205
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 4
  store i32 1, i32* %225, align 4
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %223, %217
  %229 = load i32*, i32** %5, align 8
  %230 = call i32* @CfgGetFolder(i32* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32* %230, i32** %20, align 8
  %231 = load i32*, i32** %20, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %256

233:                                              ; preds = %228
  %234 = load i32, i32* @HUB_MAXMSG_LEN, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = mul i64 4, %236
  %238 = trunc i64 %237 to i32
  %239 = call i32* @Malloc(i32 %238)
  store i32* %239, i32** %21, align 8
  %240 = load i32*, i32** %20, align 8
  %241 = load i32*, i32** %21, align 8
  %242 = load i32, i32* @HUB_MAXMSG_LEN, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = mul i64 4, %244
  %246 = trunc i64 %245 to i32
  %247 = call i64 @CfgGetUniStr(i32* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32* %241, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %233
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %251 = load i32*, i32** %21, align 8
  %252 = call i32 @SetHubMsg(%struct.TYPE_25__* %250, i32* %251)
  br label %253

253:                                              ; preds = %249, %233
  %254 = load i32*, i32** %21, align 8
  %255 = call i32 @Free(i32* %254)
  br label %256

256:                                              ; preds = %253, %228
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = call i32* @CfgGetFolder(i32* %264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %266 = call i32 @SiLoadHubLinks(%struct.TYPE_25__* %263, i32* %265)
  br label %267

267:                                              ; preds = %262, %256
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 12
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %271, align 8
  %273 = call i64 @GetServerCapsBool(%struct.TYPE_22__* %272, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %330

275:                                              ; preds = %267
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %287, label %281

281:                                              ; preds = %275
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %329

287:                                              ; preds = %281, %275
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = call i32* @CfgGetFolder(i32* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %291 = call i32 @SiLoadSecureNAT(%struct.TYPE_25__* %288, i32* %290)
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %328

297:                                              ; preds = %287
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 12
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %299, align 8
  %301 = icmp ne %struct.TYPE_23__* %300, null
  br i1 %301, label %302, label %328

302:                                              ; preds = %297
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 12
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %306, align 8
  %308 = icmp ne %struct.TYPE_22__* %307, null
  br i1 %308, label %309, label %328

309:                                              ; preds = %302
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 12
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %309
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 13
  %322 = load i32, i32* %321, align 8
  %323 = load i64, i64* %11, align 8
  %324 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 @NiClearUnsupportedVhOptionForDynamicHub(i32 %322, i32 %326)
  br label %328

328:                                              ; preds = %319, %309, %302, %297, %287
  br label %329

329:                                              ; preds = %328, %281
  br label %330

330:                                              ; preds = %329, %267
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %332 = load i32*, i32** %5, align 8
  %333 = call i32* @CfgGetFolder(i32* %332, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %334 = call i32 @SiLoadHubAdminOptions(%struct.TYPE_25__* %331, i32* %333)
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 12
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %330
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %343 = load i32*, i32** %5, align 8
  %344 = call i32* @CfgGetFolder(i32* %343, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %345 = call i32 @SiLoadHubDb(%struct.TYPE_25__* %342, i32* %344)
  br label %346

346:                                              ; preds = %341, %330
  %347 = load i32*, i32** %5, align 8
  %348 = call i8* @CfgGetInt64(i32* %347, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %349 = ptrtoint i8* %348 to i64
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 5
  store i64 %349, i64* %351, align 8
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 5
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %346
  %357 = call i8* (...) @SystemTime64()
  %358 = ptrtoint i8* %357 to i64
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 5
  store i64 %358, i64* %360, align 8
  br label %361

361:                                              ; preds = %356, %346
  %362 = load i32*, i32** %5, align 8
  %363 = call i8* @CfgGetInt64(i32* %362, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 6
  store i64 %364, i64* %366, align 8
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 6
  %369 = load i64, i64* %368, align 8
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %361
  %372 = call i8* (...) @SystemTime64()
  %373 = ptrtoint i8* %372 to i64
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 6
  store i64 %373, i64* %375, align 8
  br label %376

376:                                              ; preds = %371, %361
  %377 = load i32*, i32** %5, align 8
  %378 = call i8* @CfgGetInt64(i32* %377, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 11
  store i8* %378, i8** %380, align 8
  %381 = load i32*, i32** %5, align 8
  %382 = call i8* @CfgGetInt(i32* %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 10
  store i8* %382, i8** %384, align 8
  %385 = load i32*, i32** %8, align 8
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %387 = call i32 @AddHub(i32* %385, %struct.TYPE_25__* %386)
  %388 = load i32, i32* %10, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %376
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 7
  store i32 1, i32* %392, align 8
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %394 = call i32 @SetHubOnline(%struct.TYPE_25__* %393)
  br label %400

395:                                              ; preds = %376
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 7
  store i32 0, i32* %397, align 8
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %399 = call i32 @SetHubOffline(%struct.TYPE_25__* %398)
  br label %400

400:                                              ; preds = %395, %390
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 9
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @WaitLogFlush(i32 %403)
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @WaitLogFlush(i32 %407)
  %409 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %410 = call i32 @ReleaseHub(%struct.TYPE_25__* %409)
  br label %411

411:                                              ; preds = %30, %400, %31
  ret void
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @SiLoadHubOptionCfg(i32*, i8*) #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local %struct.TYPE_25__* @NewHub(i32*, i8*, i8*) #1

declare dso_local i32 @Lock(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local %struct.TYPE_26__* @CfgGetBuf(i32*, i8*) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i32 @SetRadiusServerEx(%struct.TYPE_25__*, i8*, i64, i8*, i64) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_26__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i32 @SiLoadHubLogCfg(i8*, i32*) #1

declare dso_local i32 @SetHubLogSetting(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @SiLoadTraffic(i32*, i8*, i32) #1

declare dso_local i32 @SiLoadHubAccessLists(%struct.TYPE_25__*, i32*) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i64 @CfgGetUniStr(i32*, i8*, i32*, i32) #1

declare dso_local i32 @SetHubMsg(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @SiLoadHubLinks(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @GetServerCapsBool(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @SiLoadSecureNAT(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @NiClearUnsupportedVhOptionForDynamicHub(i32, i32) #1

declare dso_local i32 @SiLoadHubAdminOptions(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @SiLoadHubDb(%struct.TYPE_25__*, i32*) #1

declare dso_local i8* @CfgGetInt64(i32*, i8*) #1

declare dso_local i8* @SystemTime64(...) #1

declare dso_local i32 @AddHub(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @SetHubOnline(%struct.TYPE_25__*) #1

declare dso_local i32 @SetHubOffline(%struct.TYPE_25__*) #1

declare dso_local i32 @WaitLogFlush(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
