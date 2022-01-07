; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSecureNATOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSecureNATOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i32* }
%struct.TYPE_28__ = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i32, i32, %struct.TYPE_27__*, %struct.TYPE_23__*, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }

@MAX_DHCP_CLASSLESS_ROUTE_TABLE_STR_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no_securenat\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no_securenat_enablenat\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no_securenat_enabledhcp\00", align 1
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"LA_SET_SNAT_OPTION\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetSecureNATOption(%struct.TYPE_31__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %14, %struct.TYPE_29__** %6, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @MAX_DHCP_CLASSLESS_ROUTE_TABLE_STR_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IsZero(i32 %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 6
  %30 = call i32 @IsHostIPAddress4(i32* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 5
  %35 = call i32 @IsSubnetMask4(i32* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %2
  %38 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

39:                                               ; preds = %32
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 6
  %42 = call i32 @IPToUINT(i32* %41)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 5
  %45 = call i32 @IPToUINT(i32* %44)
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

51:                                               ; preds = %39
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %53 = call i32 @GetServerCapsBool(%struct.TYPE_29__* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NormalizeClasslessRouteTableStr(i32 %66, i32 4, i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* @CHECK_RIGHT, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @LockHubList(i32* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_30__* @GetHub(i32* %79, i32 %82)
  store %struct.TYPE_30__* %83, %struct.TYPE_30__** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @UnlockHubList(i32* %84)
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %87 = icmp eq %struct.TYPE_30__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

90:                                               ; preds = %75
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = call i32 @GetServerCapsBool(%struct.TYPE_29__* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %90
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %102 = call i32 @ReleaseHub(%struct.TYPE_30__* %101)
  %103 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

104:                                              ; preds = %96
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %112 = call i32 @ReleaseHub(%struct.TYPE_30__* %111)
  %113 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

114:                                              ; preds = %104
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %121 = call i64 @GetHubAdminOption(%struct.TYPE_30__* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %125 = call i32 @ReleaseHub(%struct.TYPE_30__* %124)
  %126 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %126, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

127:                                              ; preds = %119, %114
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %127
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %134
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %146 = call i64 @GetHubAdminOption(%struct.TYPE_30__* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %150 = call i32 @ReleaseHub(%struct.TYPE_30__* %149)
  %151 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

152:                                              ; preds = %144, %139
  br label %153

153:                                              ; preds = %152, %134, %127
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %153
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %172 = call i64 @GetHubAdminOption(%struct.TYPE_30__* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %176 = call i32 @ReleaseHub(%struct.TYPE_30__* %175)
  %177 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %177, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

178:                                              ; preds = %170, %165
  br label %179

179:                                              ; preds = %178, %160, %153
  %180 = trunc i64 %19 to i32
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @StrCpy(i8* %21, i32 %180, i8* %185)
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = call i32 @Copy(%struct.TYPE_23__* %189, %struct.TYPE_28__* %190, i32 48)
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %179
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @StrCpy(i8* %201, i32 8, i8* %21)
  br label %203

203:                                              ; preds = %196, %179
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %236

209:                                              ; preds = %203
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %211, align 8
  %213 = icmp ne %struct.TYPE_25__* %212, null
  br i1 %213, label %214, label %236

214:                                              ; preds = %209
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %218, align 8
  %220 = icmp ne %struct.TYPE_24__* %219, null
  br i1 %220, label %221, label %236

221:                                              ; preds = %214
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %221
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = call i32 @NiClearUnsupportedVhOptionForDynamicHub(%struct.TYPE_23__* %234, i32 0)
  br label %236

236:                                              ; preds = %231, %221, %214, %209, %203
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @Lock(i32 %239)
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %242, align 8
  %244 = icmp ne %struct.TYPE_27__* %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %236
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %254 = call i32 @SetVirtualHostOption(i32 %252, %struct.TYPE_28__* %253)
  br label %255

255:                                              ; preds = %245, %236
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @Unlock(i32 %258)
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %262 = call i32 @ALog(%struct.TYPE_31__* %260, %struct.TYPE_30__* %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %268 = call i32 @SiHubUpdateProc(%struct.TYPE_30__* %267)
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %270 = call i32 @IncrementServerConfigRevision(%struct.TYPE_29__* %269)
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %272 = call i32 @ReleaseHub(%struct.TYPE_30__* %271)
  %273 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %273, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %274

274:                                              ; preds = %255, %174, %148, %123, %110, %100, %88, %72, %49, %37
  %275 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsZero(i32, i32) #2

declare dso_local i32 @IsHostIPAddress4(i32*) #2

declare dso_local i32 @IsSubnetMask4(i32*) #2

declare dso_local i32 @IPToUINT(i32*) #2

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_29__*, i8*) #2

declare dso_local i32 @NormalizeClasslessRouteTableStr(i32, i32, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_30__* @GetHub(i32*, i32) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_30__*) #2

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_30__*, i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Copy(%struct.TYPE_23__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @NiClearUnsupportedVhOptionForDynamicHub(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @SetVirtualHostOption(i32, %struct.TYPE_28__*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ALog(%struct.TYPE_31__*, %struct.TYPE_30__*, i8*) #2

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_30__*) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_29__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
