; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateUser.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i32* }
%struct.TYPE_34__ = type { i64, i32, i32, i32, i32, %struct.TYPE_36__*, i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32 }

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
@ERR_NOT_RSA_1024 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"no_change_users\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"i_max_users_per_hub\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"max_users\00", align 1
@ERR_TOO_MANY_USER = common dso_local global i64 0, align 8
@ERR_TOO_MANY_USERS_CREATED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ERR_128\00", align 1
@ERR_USER_ALREADY_EXISTS = common dso_local global i64 0, align 8
@ERR_GROUP_NOT_FOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"LA_CREATE_USER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StCreateUser(%struct.TYPE_37__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  store %struct.TYPE_33__* %15, %struct.TYPE_33__** %6, align 8
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %8, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %9, align 8
  store i32* null, i32** %11, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IsEmptyStr(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IsUserName(i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %2
  %32 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %32, i64* %3, align 8
  br label %305

33:                                               ; preds = %25
  %34 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %41, i64* %3, align 8
  br label %305

42:                                               ; preds = %33
  %43 = load i32, i32* @CHECK_RIGHT, align 4
  %44 = load i32, i32* @GSF_DISABLE_RADIUS_AUTH, align 4
  %45 = call i64 @GetGlobalServerFlag(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTHTYPE_USERCERT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AUTHTYPE_RADIUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUTHTYPE_ROOTCERT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AUTHTYPE_NT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %59, %53, %47
  %72 = load i64, i64* @ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE, align 8
  store i64 %72, i64* %3, align 8
  br label %305

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AUTHTYPE_USERCERT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %74
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %82, align 8
  store %struct.TYPE_36__* %83, %struct.TYPE_36__** %12, align 8
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %85 = icmp ne %struct.TYPE_36__* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %88, align 8
  %90 = icmp ne %struct.TYPE_30__* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* @ERR_NOT_RSA_1024, align 8
  store i64 %99, i64* %3, align 8
  br label %305

100:                                              ; preds = %91, %86, %80
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %102 = icmp eq %struct.TYPE_36__* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = icmp eq %struct.TYPE_30__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %100
  %109 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %109, i64* %3, align 8
  br label %305

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %74
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @IsUserName(i32 %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %118, i64* %3, align 8
  br label %305

119:                                              ; preds = %111
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @StrCmpi(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AUTHTYPE_RADIUS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AUTHTYPE_NT, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %138, i64* %3, align 8
  br label %305

139:                                              ; preds = %131, %125
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @LockHubList(i32* %141)
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.TYPE_35__* @GetHub(i32* %143, i32 %146)
  store %struct.TYPE_35__* %147, %struct.TYPE_35__** %8, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @UnlockHubList(i32* %148)
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %151 = icmp eq %struct.TYPE_35__* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %153, i64* %3, align 8
  br label %305

154:                                              ; preds = %140
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %161 = call i64 @GetHubAdminOption(%struct.TYPE_35__* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %165 = call i32 @ReleaseHub(%struct.TYPE_35__* %164)
  %166 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %166, i64* %3, align 8
  br label %305

167:                                              ; preds = %159, %154
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %181, align 8
  %183 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @CopyAuthData(%struct.TYPE_36__* %182, i64 %185)
  %187 = call %struct.TYPE_32__* @NewUser(i32 %170, i32 %173, i32 %176, i64 %179, i32 %186)
  store %struct.TYPE_32__* %187, %struct.TYPE_32__** %10, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %189 = icmp eq %struct.TYPE_32__* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %167
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %192 = call i32 @ReleaseHub(%struct.TYPE_35__* %191)
  %193 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %193, i64* %3, align 8
  br label %305

194:                                              ; preds = %167
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @SetUserPolicy(%struct.TYPE_32__* %200, i32 %203)
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %206 = call i32 @AcLock(%struct.TYPE_35__* %205)
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @LIST_NUM(i32 %211)
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %214, align 8
  %216 = call i64 @GetServerCapsInt(%struct.TYPE_33__* %215, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %217 = icmp sge i64 %212, %216
  br i1 %217, label %232, label %218

218:                                              ; preds = %194
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %220 = call i64 @GetHubAdminOption(%struct.TYPE_35__* %219, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @LIST_NUM(i32 %227)
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %230 = call i64 @GetHubAdminOption(%struct.TYPE_35__* %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %231 = icmp sge i64 %228, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %222, %194
  %233 = load i64, i64* @ERR_TOO_MANY_USER, align 8
  store i64 %233, i64* %9, align 8
  br label %297

234:                                              ; preds = %222, %218
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %236 = call i64 @SiTooManyUserObjectsInServer(%struct.TYPE_33__* %235, i32 0)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i64, i64* @ERR_TOO_MANY_USERS_CREATED, align 8
  store i64 %239, i64* %9, align 8
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %242 = call i32 (%struct.TYPE_37__*, %struct.TYPE_35__*, i8*, ...) @ALog(%struct.TYPE_37__* %240, %struct.TYPE_35__* %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %296

243:                                              ; preds = %234
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @AcIsUser(%struct.TYPE_35__* %244, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i64, i64* @ERR_USER_ALREADY_EXISTS, align 8
  store i64 %251, i64* %9, align 8
  br label %295

252:                                              ; preds = %243
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @StrLen(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %252
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32* @AcGetGroup(%struct.TYPE_35__* %259, i32 %262)
  store i32* %263, i32** %11, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = icmp eq i32* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = load i64, i64* @ERR_GROUP_NOT_FOUND, align 8
  store i64 %267, i64* %9, align 8
  br label %268

268:                                              ; preds = %266, %258
  br label %269

269:                                              ; preds = %268, %252
  %270 = load i64, i64* %9, align 8
  %271 = load i64, i64* @ERR_GROUP_NOT_FOUND, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %294

273:                                              ; preds = %269
  %274 = load i32*, i32** %11, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = call i32 @JoinUserToGroup(%struct.TYPE_32__* %277, i32* %278)
  %280 = load i32*, i32** %11, align 8
  %281 = call i32 @ReleaseGroup(i32* %280)
  br label %282

282:                                              ; preds = %276, %273
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %285 = call i32 @AcAddUser(%struct.TYPE_35__* %283, %struct.TYPE_32__* %284)
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (%struct.TYPE_37__*, %struct.TYPE_35__*, i8*, ...) @ALog(%struct.TYPE_37__* %286, %struct.TYPE_35__* %287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %290)
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %293 = call i32 @IncrementServerConfigRevision(%struct.TYPE_33__* %292)
  br label %294

294:                                              ; preds = %282, %269
  br label %295

295:                                              ; preds = %294, %250
  br label %296

296:                                              ; preds = %295, %238
  br label %297

297:                                              ; preds = %296, %232
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %299 = call i32 @AcUnlock(%struct.TYPE_35__* %298)
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %301 = call i32 @ReleaseUser(%struct.TYPE_32__* %300)
  %302 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %303 = call i32 @ReleaseHub(%struct.TYPE_35__* %302)
  %304 = load i64, i64* %9, align 8
  store i64 %304, i64* %3, align 8
  br label %305

305:                                              ; preds = %297, %190, %163, %152, %137, %117, %108, %98, %71, %40, %31
  %306 = load i64, i64* %3, align 8
  ret i64 %306
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsUserName(i32) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_35__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_35__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_32__* @NewUser(i32, i32, i32, i64, i32) #1

declare dso_local i32 @CopyAuthData(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @SetUserPolicy(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @AcLock(%struct.TYPE_35__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @GetServerCapsInt(%struct.TYPE_33__*, i8*) #1

declare dso_local i64 @SiTooManyUserObjectsInServer(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_37__*, %struct.TYPE_35__*, i8*, ...) #1

declare dso_local i64 @AcIsUser(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i32* @AcGetGroup(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @JoinUserToGroup(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @ReleaseGroup(i32*) #1

declare dso_local i32 @AcAddUser(%struct.TYPE_35__*, %struct.TYPE_32__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_33__*) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_35__*) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
