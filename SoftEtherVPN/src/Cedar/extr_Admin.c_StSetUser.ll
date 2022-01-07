; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetUser.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, %struct.TYPE_21__*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@GSF_DISABLE_RADIUS_AUTH = common dso_local global i32 0, align 4
@AUTHTYPE_USERCERT = common dso_local global i64 0, align 8
@AUTHTYPE_RADIUS = common dso_local global i64 0, align 8
@AUTHTYPE_ROOTCERT = common dso_local global i64 0, align 8
@AUTHTYPE_NT = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ERR_NOT_RSA_1024 = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"no_change_users\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_GROUP_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"LA_SET_USER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StSetUser(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  store i32* null, i32** %11, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IsEmptyStr(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IsUserName(i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %2
  %32 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %32, i64* %3, align 8
  br label %277

33:                                               ; preds = %25
  %34 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %41, i64* %3, align 8
  br label %277

42:                                               ; preds = %33
  %43 = load i32, i32* @CHECK_RIGHT, align 4
  %44 = load i32, i32* @GSF_DISABLE_RADIUS_AUTH, align 4
  %45 = call i64 @GetGlobalServerFlag(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTHTYPE_USERCERT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AUTHTYPE_RADIUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUTHTYPE_ROOTCERT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AUTHTYPE_NT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %59, %53, %47
  %72 = load i64, i64* @ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE, align 8
  store i64 %72, i64* %3, align 8
  br label %277

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @StrCmpi(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AUTHTYPE_RADIUS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AUTHTYPE_NT, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %93, i64* %3, align 8
  br label %277

94:                                               ; preds = %86, %80
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AUTHTYPE_USERCERT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %12, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %106 = icmp ne %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = icmp ne %struct.TYPE_17__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* @ERR_NOT_RSA_1024, align 8
  store i64 %120, i64* %3, align 8
  br label %277

121:                                              ; preds = %112, %107, %101
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = icmp eq %struct.TYPE_21__* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = icmp eq %struct.TYPE_17__* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %124, %121
  %130 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %130, i64* %3, align 8
  br label %277

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %95
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @LockHubList(i32* %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32* @GetHub(i32* %135, i32 %138)
  store i32* %139, i32** %8, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @UnlockHubList(i32* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %145, i64* %3, align 8
  br label %277

146:                                              ; preds = %132
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32*, i32** %8, align 8
  %153 = call i64 @GetHubAdminOption(i32* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @ReleaseHub(i32* %156)
  %158 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %158, i64* %3, align 8
  br label %277

159:                                              ; preds = %151, %146
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @AcLock(i32* %160)
  %162 = load i32*, i32** %8, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call %struct.TYPE_18__* @AcGetUser(i32* %162, i32 %165)
  store %struct.TYPE_18__* %166, %struct.TYPE_18__** %10, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %168 = icmp eq %struct.TYPE_18__* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %170, i64* %9, align 8
  br label %260

171:                                              ; preds = %159
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @Lock(i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @StrLen(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %171
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i32* @AcGetGroup(i32* %182, i32 %185)
  store i32* %186, i32** %11, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @JoinUserToGroup(%struct.TYPE_18__* %190, i32* %191)
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 @ReleaseGroup(i32* %193)
  br label %197

195:                                              ; preds = %181
  %196 = load i64, i64* @ERR_GROUP_NOT_FOUND, align 8
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %195, %189
  br label %201

198:                                              ; preds = %171
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = call i32 @JoinUserToGroup(%struct.TYPE_18__* %199, i32* null)
  br label %201

201:                                              ; preds = %198, %197
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* @ERR_GROUP_NOT_FOUND, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %251

205:                                              ; preds = %201
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @Free(i8* %208)
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @Free(i8* %212)
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @UniCopyStr(i32 %216)
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 4
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @UniCopyStr(i32 %222)
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @CopyAuthData(%struct.TYPE_21__* %232, i64 %235)
  %237 = call i32 @SetUserAuthData(%struct.TYPE_18__* %226, i64 %229, i32 %236)
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = call i32 (...) @SystemTime64()
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @SetUserPolicy(%struct.TYPE_18__* %246, i32 %249)
  br label %251

251:                                              ; preds = %205, %201
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @Unlock(i32 %254)
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %257 = call i32 @IncrementServerConfigRevision(%struct.TYPE_19__* %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %259 = call i32 @ReleaseUser(%struct.TYPE_18__* %258)
  br label %260

260:                                              ; preds = %251, %169
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 @AcUnlock(i32* %261)
  %263 = load i64, i64* %9, align 8
  %264 = load i64, i64* @ERR_NO_ERROR, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %260
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @ALog(%struct.TYPE_22__* %267, i32* %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %266, %260
  %274 = load i32*, i32** %8, align 8
  %275 = call i32 @ReleaseHub(i32* %274)
  %276 = load i64, i64* %9, align 8
  store i64 %276, i64* %3, align 8
  br label %277

277:                                              ; preds = %273, %155, %144, %129, %119, %92, %71, %40, %31
  %278 = load i64, i64* %3, align 8
  ret i64 %278
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsUserName(i32) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local i32* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

declare dso_local i32 @AcLock(i32*) #1

declare dso_local %struct.TYPE_18__* @AcGetUser(i32*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i32* @AcGetGroup(i32*, i32) #1

declare dso_local i32 @JoinUserToGroup(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ReleaseGroup(i32*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i8* @UniCopyStr(i32) #1

declare dso_local i32 @SetUserAuthData(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @CopyAuthData(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32 @SetUserPolicy(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_19__*) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_18__*) #1

declare dso_local i32 @AcUnlock(i32*) #1

declare dso_local i32 @ALog(%struct.TYPE_22__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
