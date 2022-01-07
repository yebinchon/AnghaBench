; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ChangePasswordAccept.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ChangePasswordAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_11__*, i32*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32*, i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"secure_old_password\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"new_password\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"new_password_ntlm\00", align 1
@MD5_SIZE = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"deny_change_user_password\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"LH_CHANGE_PASSWORD_1\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"LH_CHANGE_PASSWORD_2\00", align 1
@ERR_OLD_PASSWORD_WRONG = common dso_local global i32 0, align 4
@AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"LH_CHANGE_PASSWORD_3\00", align 1
@ERR_USER_AUTHTYPE_NOT_PASSWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"LH_CHANGE_PASSWORD_4\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"LH_CHANGE_PASSWORD_5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChangePasswordAccept(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load i32, i32* @SHA1_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %31 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  %35 = load i32, i32* @SHA1_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %11, align 8
  %38 = load i32, i32* @SHA1_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %41 = load i32, i32* @SHA1_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %13, align 8
  %44 = load i32, i32* @SHA1_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  %47 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = icmp eq %struct.TYPE_16__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %2
  %51 = load i32*, i32** %5, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %2
  %54 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %269

55:                                               ; preds = %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SHA1_SIZE, align 4
  %60 = call i32 @Copy(i32* %26, i32* %58, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = trunc i64 %29 to i32
  %63 = call i32 @PackGetStr(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** %5, align 8
  %67 = trunc i64 %33 to i32
  %68 = call i32 @PackGetStr(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = mul nuw i64 4, %36
  %73 = trunc i64 %72 to i32
  %74 = call i32 @PackGetData2(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %37, i32 %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i32*, i32** %5, align 8
  %78 = mul nuw i64 4, %39
  %79 = trunc i64 %78 to i32
  %80 = call i32 @PackGetData2(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %40, i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %70, %65, %55
  %83 = load i32, i32* @ERR_PROTOCOL_ERROR, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %269

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @MD5_SIZE, align 4
  %87 = call i32 @PackGetData2(i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %43, i32 %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = mul nuw i64 4, %42
  %91 = trunc i64 %90 to i32
  %92 = call i32 @Zero(i32* %43, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %6, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @LockHubList(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32* @GetHub(i32* %99, i8* %30)
  store i32* %100, i32** %16, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @UnlockHubList(i32* %101)
  %103 = load i32*, i32** %16, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %106, i32* %15, align 4
  br label %267

107:                                              ; preds = %93
  %108 = load i32, i32* @MAX_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %18, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %19, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = call i64 @GetHubAdminOption(i32* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @ReleaseHub(i32* %116)
  %118 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %263

119:                                              ; preds = %107
  %120 = trunc i64 %109 to i32
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = call i32 @IPToStr(i8* %111, i32 %120, i32* %124)
  %126 = load i32*, i32** %16, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @HLog(i32* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %129, i8* %111)
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @AcLock(i32* %131)
  %133 = load i32*, i32** %16, align 8
  %134 = call %struct.TYPE_15__* @AcGetUser(i32* %133, i8* %34)
  store %struct.TYPE_15__* %134, %struct.TYPE_15__** %20, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %136 = icmp eq %struct.TYPE_15__* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %119
  %138 = load i32*, i32** %16, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @HLog(i32* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %141, i8* %34)
  %143 = load i32, i32* @ERR_OLD_PASSWORD_WRONG, align 4
  store i32 %143, i32* %15, align 4
  br label %258

144:                                              ; preds = %119
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Lock(i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AUTHTYPE_PASSWORD, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %144
  %155 = load i32*, i32** %16, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @HLog(i32* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %158, i8* %34)
  %160 = load i32, i32* @ERR_USER_AUTHTYPE_NOT_PASSWORD, align 4
  store i32 %160, i32* %15, align 4
  br label %251

161:                                              ; preds = %144
  store i32 0, i32* %21, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = icmp ne %struct.TYPE_12__* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %21, align 4
  br label %194

172:                                              ; preds = %161
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = icmp ne %struct.TYPE_14__* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = icmp ne %struct.TYPE_13__* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %21, align 4
  br label %192

192:                                              ; preds = %184, %177
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %166
  %195 = load i32, i32* %21, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %248

197:                                              ; preds = %194
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %201, %struct.TYPE_17__** %22, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @SecurePassword(i32* %46, i32* %204, i32* %26)
  %206 = load i32, i32* @SHA1_SIZE, align 4
  %207 = call i64 @Cmp(i32* %46, i32* %37, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %197
  %210 = load i32, i32* @ERR_OLD_PASSWORD_WRONG, align 4
  store i32 %210, i32* %15, align 4
  %211 = load i32*, i32** %16, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @HLog(i32* %211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %214, i8* %34)
  br label %247

216:                                              ; preds = %197
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @SHA1_SIZE, align 4
  %221 = call i64 @Cmp(i32* %219, i32* %40, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @MD5_SIZE, align 4
  %228 = call i64 @IsZero(i32* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %223, %216
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* @SHA1_SIZE, align 4
  %235 = call i32 @Copy(i32* %233, i32* %40, i32 %234)
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* @MD5_SIZE, align 4
  %240 = call i32 @Copy(i32* %238, i32* %43, i32 %239)
  br label %241

241:                                              ; preds = %230, %223
  %242 = load i32*, i32** %16, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @HLog(i32* %242, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %245, i8* %34)
  br label %247

247:                                              ; preds = %241, %209
  br label %250

248:                                              ; preds = %194
  %249 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %248, %247
  br label %251

251:                                              ; preds = %250, %154
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @Unlock(i32 %254)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %257 = call i32 @ReleaseUser(%struct.TYPE_15__* %256)
  br label %258

258:                                              ; preds = %251, %137
  %259 = load i32*, i32** %16, align 8
  %260 = call i32 @AcUnlock(i32* %259)
  %261 = load i32*, i32** %16, align 8
  %262 = call i32 @ReleaseHub(i32* %261)
  store i32 0, i32* %17, align 4
  br label %263

263:                                              ; preds = %258, %115
  %264 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %17, align 4
  switch i32 %265, label %269 [
    i32 0, label %266
  ]

266:                                              ; preds = %263
  br label %267

267:                                              ; preds = %266, %105
  %268 = load i32, i32* %15, align 4
  store i32 %268, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %269

269:                                              ; preds = %267, %263, %82, %53
  %270 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @PackGetData2(i32*, i8*, i32*, i32) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local i32* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #2

declare dso_local i32 @ReleaseHub(i32*) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @HLog(i32*, i8*, i32, i8*) #2

declare dso_local i32 @AcLock(i32*) #2

declare dso_local %struct.TYPE_15__* @AcGetUser(i32*, i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @SecurePassword(i32*, i32*, i32*) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i64 @IsZero(i32*, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseUser(%struct.TYPE_15__*) #2

declare dso_local i32 @AcUnlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
