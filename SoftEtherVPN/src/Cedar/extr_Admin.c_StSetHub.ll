; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_28__ = type { i64, i8*, i64, i32*, i32*, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no_change_admin_password\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no_online\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no_offline\00", align 1
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"LA_SET_HUB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetHub(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %6, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %27, i32* %3, align 4
  br label %339

28:                                               ; preds = %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IsEmptyStr(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IsSafeStr(i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %41, i32* %3, align 4
  br label %339

42:                                               ; preds = %34
  %43 = load i32, i32* @CHECK_RIGHT, align 4
  %44 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %51, i32* %3, align 4
  br label %339

52:                                               ; preds = %42
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %65, i32* %3, align 4
  br label %339

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %80, i32* %3, align 4
  br label %339

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @LockHubList(i32* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.TYPE_29__* @GetHub(i32* %85, i32 %88)
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %8, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @UnlockHubList(i32* %90)
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %93 = icmp eq %struct.TYPE_29__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %95, i32* %3, align 4
  br label %339

96:                                               ; preds = %82
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %106 = call i32 @ReleaseHub(%struct.TYPE_29__* %105)
  %107 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %107, i32* %3, align 4
  br label %339

108:                                              ; preds = %96
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @StrLen(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @StrLen(i8* %123)
  %125 = call i32 @Sha0(i32* %117, i8* %120, i64 %124)
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @HashPassword(i32* %128, i32 %129, i8* %132)
  br label %134

134:                                              ; preds = %114, %108
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @IsZero(i32* %137, i32 8)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %134
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @IsZero(i32* %143, i32 8)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %153 = call i64 @GetHubAdminOption(%struct.TYPE_29__* %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %157 = call i32 @ReleaseHub(%struct.TYPE_29__* %156)
  %158 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %158, i32* %3, align 4
  br label %339

159:                                              ; preds = %151, %146
  br label %160

160:                                              ; preds = %159, %140, %134
  %161 = load i32, i32* @SHA1_SIZE, align 4
  %162 = zext i32 %161 to i64
  %163 = call i8* @llvm.stacksave()
  store i8* %163, i8** %10, align 8
  %164 = alloca i32, i64 %162, align 16
  store i64 %162, i64* %11, align 8
  %165 = load i32, i32* @SHA1_SIZE, align 4
  %166 = zext i32 %165 to i64
  %167 = alloca i32, i64 %166, align 16
  store i64 %166, i64* %12, align 8
  %168 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %169 = call i32 @HashPassword(i32* %164, i32 %168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i32 @Sha0(i32* %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @SHA1_SIZE, align 4
  %175 = call i64 @Cmp(i32* %173, i32* %167, i32 %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %160
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @SHA1_SIZE, align 4
  %182 = call i64 @Cmp(i32* %180, i32* %164, i32 %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %177, %160
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 127
  br i1 %200, label %201, label %205

201:                                              ; preds = %189
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %203 = call i32 @ReleaseHub(%struct.TYPE_29__* %202)
  %204 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %204, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

205:                                              ; preds = %189, %184
  br label %206

206:                                              ; preds = %205, %177
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %206, %201
  %208 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %13, align 4
  switch i32 %209, label %341 [
    i32 0, label %210
    i32 1, label %339
  ]

210:                                              ; preds = %207
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @Lock(i32 %213)
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %210
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %222, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %228, i32* %9, align 4
  br label %280

229:                                              ; preds = %219, %210
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 5
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 1
  store i32 %238, i32* %242, align 4
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  store i32 %246, i32* %250, align 4
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @IsZero(i32* %253, i32 8)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %279

256:                                              ; preds = %229
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @IsZero(i32* %259, i32 8)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %279

262:                                              ; preds = %256
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* @SHA1_SIZE, align 4
  %270 = call i32 @Copy(i32 %265, i32* %268, i32 %269)
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* @SHA1_SIZE, align 4
  %278 = call i32 @Copy(i32 %273, i32* %276, i32 %277)
  br label %279

279:                                              ; preds = %262, %256, %229
  br label %280

280:                                              ; preds = %279, %227
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @Unlock(i32 %283)
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %280
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %289
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %296 = call i64 @GetHubAdminOption(%struct.TYPE_29__* %295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %294, %289
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %300 = call i32 @SetHubOnline(%struct.TYPE_29__* %299)
  br label %301

301:                                              ; preds = %298, %294
  br label %315

302:                                              ; preds = %280
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %302
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %309 = call i64 @GetHubAdminOption(%struct.TYPE_29__* %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307, %302
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %313 = call i32 @SetHubOffline(%struct.TYPE_29__* %312)
  br label %314

314:                                              ; preds = %311, %307
  br label %315

315:                                              ; preds = %314, %301
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %323 = call i32 @EnableSecureNAT(%struct.TYPE_29__* %322, i32 0)
  br label %324

324:                                              ; preds = %321, %315
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %330 = call i32 @SiHubUpdateProc(%struct.TYPE_29__* %329)
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %332 = call i32 @IncrementServerConfigRevision(%struct.TYPE_27__* %331)
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %335 = call i32 @ALog(%struct.TYPE_30__* %333, %struct.TYPE_29__* %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %337 = call i32 @ReleaseHub(%struct.TYPE_29__* %336)
  %338 = load i32, i32* %9, align 4
  store i32 %338, i32* %3, align 4
  br label %339

339:                                              ; preds = %324, %207, %155, %104, %94, %79, %64, %50, %40, %26
  %340 = load i32, i32* %3, align 4
  ret i32 %340

341:                                              ; preds = %207
  unreachable
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsSafeStr(i32) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_29__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_29__*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @Sha0(i32*, i8*, i64) #1

declare dso_local i32 @HashPassword(i32*, i32, i8*) #1

declare dso_local i32 @IsZero(i32*, i32) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_29__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(i32, i32*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SetHubOnline(%struct.TYPE_29__*) #1

declare dso_local i32 @SetHubOffline(%struct.TYPE_29__*) #1

declare dso_local i32 @EnableSecureNAT(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_29__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_27__*) #1

declare dso_local i32 @ALog(%struct.TYPE_30__*, %struct.TYPE_29__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
