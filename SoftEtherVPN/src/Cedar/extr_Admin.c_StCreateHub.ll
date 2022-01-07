; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }

@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"i_max_hubs\00", align 1
@ERR_TOO_MANY_HUBS = common dso_local global i64 0, align 8
@ERR_HUB_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"LA_CREATE_HUB\00", align 1
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StCreateHub(%struct.TYPE_30__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %17, %struct.TYPE_29__** %7, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %24, i64* %3, align 8
  br label %260

25:                                               ; preds = %2
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IsEmptyStr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @IsSafeStr(i32 %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %3, align 8
  br label %260

39:                                               ; preds = %31
  %40 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %47, i64* %3, align 8
  br label %260

48:                                               ; preds = %39
  %49 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @Trim(i32 %52)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @StrLen(i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %60, i64* %3, align 8
  br label %260

61:                                               ; preds = %48
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @StartWith(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @EndWith(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %61
  %74 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %74, i64* %3, align 8
  br label %260

75:                                               ; preds = %67
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %82, i64* %3, align 8
  br label %260

83:                                               ; preds = %75
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %96, i64* %3, align 8
  br label %260

97:                                               ; preds = %89
  br label %113

98:                                               ; preds = %83
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %111, i64* %3, align 8
  br label %260

112:                                              ; preds = %104, %98
  br label %113

113:                                              ; preds = %112, %97
  %114 = call i32 @Zero(%struct.TYPE_27__* %9, i32 8)
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = call i32 @SiSetDefaultHubOption(%struct.TYPE_27__* %9)
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @LockList(i32 %128)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @LIST_NUM(i32 %132)
  store i64 %133, i64* %10, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @UnlockList(i32 %136)
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = call i64 @GetServerCapsInt(%struct.TYPE_25__* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp sgt i64 %138, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %113
  %145 = load i64, i64* @ERR_TOO_MANY_HUBS, align 8
  store i64 %145, i64* %3, align 8
  br label %260

146:                                              ; preds = %113
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @LockList(i32 %149)
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @IsHub(%struct.TYPE_29__* %151, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @UnlockList(i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %146
  %163 = load i64, i64* @ERR_HUB_ALREADY_EXISTS, align 8
  store i64 %163, i64* %3, align 8
  br label %260

164:                                              ; preds = %146
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ALog(%struct.TYPE_30__* %165, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @IsZero(i32 %172, i32 4)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @IsZero(i32 %178, i32 4)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %175, %164
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @StrLen(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %181, %175
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @StrLen(i32 %196)
  %198 = call i32 @Sha0(i32 %190, i32 %193, i64 %197)
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @HashPassword(i32 %201, i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %187, %181
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call %struct.TYPE_28__* @NewHub(%struct.TYPE_29__* %208, i32 %211, %struct.TYPE_27__* %9)
  store %struct.TYPE_28__* %212, %struct.TYPE_28__** %8, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @SHA1_SIZE, align 4
  %220 = call i32 @Copy(i32 %215, i32 %218, i32 %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SHA1_SIZE, align 4
  %228 = call i32 @Copy(i32 %223, i32 %226, i32 %227)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %236 = call i32 @AddHub(%struct.TYPE_29__* %234, %struct.TYPE_28__* %235)
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %207
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 1
  store i32 1, i32* %243, align 8
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %245 = call i32 @SetHubOnline(%struct.TYPE_28__* %244)
  br label %251

246:                                              ; preds = %207
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 1
  store i32 0, i32* %248, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %250 = call i32 @SetHubOffline(%struct.TYPE_28__* %249)
  br label %251

251:                                              ; preds = %246, %241
  %252 = call i32 (...) @SystemTime64()
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %256 = call i32 @ReleaseHub(%struct.TYPE_28__* %255)
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %258 = call i32 @IncrementServerConfigRevision(%struct.TYPE_25__* %257)
  %259 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %259, i64* %3, align 8
  br label %260

260:                                              ; preds = %251, %162, %144, %110, %95, %81, %73, %59, %46, %37, %23
  %261 = load i64, i64* %3, align 8
  ret i64 %261
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsSafeStr(i32) #1

declare dso_local i32 @Trim(i32) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i64 @StartWith(i32, i8*) #1

declare dso_local i64 @EndWith(i32, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @SiSetDefaultHubOption(%struct.TYPE_27__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i64 @GetServerCapsInt(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @IsHub(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_30__*, i32*, i8*, i32) #1

declare dso_local i64 @IsZero(i32, i32) #1

declare dso_local i32 @Sha0(i32, i32, i64) #1

declare dso_local i32 @HashPassword(i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @NewHub(%struct.TYPE_29__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @AddHub(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @SetHubOnline(%struct.TYPE_28__*) #1

declare dso_local i32 @SetHubOffline(%struct.TYPE_28__*) #1

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_28__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
