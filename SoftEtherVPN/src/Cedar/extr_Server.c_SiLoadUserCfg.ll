; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadUserCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadUserCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i8*, i8*, i8*, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@MD5_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RealName\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GroupName\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"UpdatedTime\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ExpireTime\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Traffic\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"AuthType\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"AuthPassword\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"AuthNtLmSecureHash\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"AuthNtUserName\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"AuthRadiusUsername\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"AuthUserCert\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"AuthSerial\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"AuthCommonName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadUserCfg(i32* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %30 = load i32, i32* @MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %6, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %7, align 8
  %34 = load i32, i32* @MAX_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %8, align 8
  %37 = load i32, i32* @MAX_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %9, align 8
  store i32* null, i32** %21, align 8
  %40 = load i32, i32* @MAX_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %22, align 8
  %43 = load i32, i32* @SHA1_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  %46 = load i32, i32* @MD5_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %24, align 8
  %49 = load i32, i32* @MAX_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %25, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %2
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = icmp eq %struct.TYPE_25__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %2
  store i32 1, i32* %28, align 4
  br label %250

58:                                               ; preds = %54
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %5, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = mul nuw i64 4, %31
  %64 = trunc i64 %63 to i32
  %65 = call i32 @CfgGetUniStr(%struct.TYPE_25__* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = mul nuw i64 4, %35
  %68 = trunc i64 %67 to i32
  %69 = call i32 @CfgGetUniStr(%struct.TYPE_25__* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %36, i32 %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = trunc i64 %38 to i32
  %72 = call i32 @CfgGetStr(%struct.TYPE_25__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = call i8* @CfgGetInt64(%struct.TYPE_25__* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %74, i8** %11, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = call i8* @CfgGetInt64(%struct.TYPE_25__* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %76, i8** %12, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = call i8* @CfgGetInt64(%struct.TYPE_25__* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %78, i8** %13, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = call i8* @CfgGetInt64(%struct.TYPE_25__* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %80, i8** %14, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = call i32 @CfgGetInt(%struct.TYPE_25__* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %82, i32* %15, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = call %struct.TYPE_25__* @CfgGetFolder(%struct.TYPE_25__* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %10, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %86 = icmp ne %struct.TYPE_25__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %58
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %89 = call i32 @SiLoadPolicyCfg(i32* %16, %struct.TYPE_25__* %88)
  br label %90

90:                                               ; preds = %87, %58
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = call i32 @SiLoadTraffic(%struct.TYPE_25__* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %17)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = call i32 @CfgGetInt(%struct.TYPE_25__* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 %94, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %95 = load i32, i32* %19, align 4
  switch i32 %95, label %175 [
    i32 131, label %96
    i32 132, label %112
    i32 130, label %123
    i32 128, label %134
    i32 129, label %153
  ]

96:                                               ; preds = %90
  %97 = mul nuw i64 4, %44
  %98 = trunc i64 %97 to i32
  %99 = call i32 @Zero(i32* %45, i32 %98)
  %100 = mul nuw i64 4, %47
  %101 = trunc i64 %100 to i32
  %102 = call i32 @Zero(i32* %48, i32 %101)
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = mul nuw i64 4, %44
  %105 = trunc i64 %104 to i32
  %106 = call i32 @CfgGetByte(%struct.TYPE_25__* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %45, i32 %105)
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %108 = mul nuw i64 4, %47
  %109 = trunc i64 %108 to i32
  %110 = call i32 @CfgGetByte(%struct.TYPE_25__* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %48, i32 %109)
  %111 = call i8* @NewPasswordAuthDataRaw(i32* %45, i32* %48)
  store i8* %111, i8** %20, align 8
  br label %175

112:                                              ; preds = %90
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = mul nuw i64 4, %50
  %115 = trunc i64 %114 to i32
  %116 = call i32 @CfgGetUniStr(%struct.TYPE_25__* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %51, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i8* @NewNTAuthData(i32* %51)
  store i8* %119, i8** %20, align 8
  br label %122

120:                                              ; preds = %112
  %121 = call i8* @NewNTAuthData(i32* null)
  store i8* %121, i8** %20, align 8
  br label %122

122:                                              ; preds = %120, %118
  br label %175

123:                                              ; preds = %90
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %125 = mul nuw i64 4, %50
  %126 = trunc i64 %125 to i32
  %127 = call i32 @CfgGetUniStr(%struct.TYPE_25__* %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32* %51, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i8* @NewRadiusAuthData(i32* %51)
  store i8* %130, i8** %20, align 8
  br label %133

131:                                              ; preds = %123
  %132 = call i8* @NewRadiusAuthData(i32* null)
  store i8* %132, i8** %20, align 8
  br label %133

133:                                              ; preds = %131, %129
  br label %175

134:                                              ; preds = %90
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %136 = call %struct.TYPE_26__* @CfgGetBuf(%struct.TYPE_25__* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_26__* %136, %struct.TYPE_26__** %18, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %138 = icmp ne %struct.TYPE_26__* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %141 = call i32* @BufToX(%struct.TYPE_26__* %140, i32 0)
  store i32* %141, i32** %29, align 8
  %142 = load i32*, i32** %29, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32*, i32** %29, align 8
  %146 = call i8* @NewUserCertAuthData(i32* %145)
  store i8* %146, i8** %20, align 8
  %147 = load i32*, i32** %29, align 8
  %148 = call i32 @FreeX(i32* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %151 = call i32 @FreeBuf(%struct.TYPE_26__* %150)
  br label %152

152:                                              ; preds = %149, %134
  br label %175

153:                                              ; preds = %90
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %155 = call %struct.TYPE_26__* @CfgGetBuf(%struct.TYPE_25__* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store %struct.TYPE_26__* %155, %struct.TYPE_26__** %18, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %157 = icmp ne %struct.TYPE_26__* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32* @NewXSerial(i32 %161, i32 %164)
  store i32* %165, i32** %21, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %167 = call i32 @FreeBuf(%struct.TYPE_26__* %166)
  br label %168

168:                                              ; preds = %158, %153
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %170 = mul nuw i64 4, %41
  %171 = trunc i64 %170 to i32
  %172 = call i32 @CfgGetUniStr(%struct.TYPE_25__* %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32* %42, i32 %171)
  %173 = load i32*, i32** %21, align 8
  %174 = call i8* @NewRootCertAuthData(i32* %173, i32* %42)
  store i8* %174, i8** %20, align 8
  br label %175

175:                                              ; preds = %90, %168, %152, %133, %122, %96
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @AcLock(i32* %176)
  %178 = call i64 @StrLen(i8* %39)
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32*, i32** %3, align 8
  %182 = call i32* @AcGetGroup(i32* %181, i8* %39)
  store i32* %182, i32** %27, align 8
  br label %184

183:                                              ; preds = %175
  store i32* null, i32** %27, align 8
  br label %184

184:                                              ; preds = %183, %180
  %185 = load i8*, i8** %5, align 8
  %186 = load i32, i32* %19, align 4
  %187 = load i8*, i8** %20, align 8
  %188 = call %struct.TYPE_24__* @NewUser(i8* %185, i32* %33, i32* %36, i32 %186, i8* %187)
  store %struct.TYPE_24__* %188, %struct.TYPE_24__** %26, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %190 = icmp ne %struct.TYPE_24__* %189, null
  br i1 %190, label %191, label %235

191:                                              ; preds = %184
  %192 = load i32*, i32** %27, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %196 = load i32*, i32** %27, align 8
  %197 = call i32 @JoinUserToGroup(%struct.TYPE_24__* %195, i32* %196)
  br label %198

198:                                              ; preds = %194, %191
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %200 = call i32 @SetUserTraffic(%struct.TYPE_24__* %199, i32* %17)
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %202 = icmp ne %struct.TYPE_25__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %205 = call i32 @SetUserPolicy(%struct.TYPE_24__* %204, i32* %16)
  br label %206

206:                                              ; preds = %203, %198
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @Lock(i32 %209)
  %211 = load i8*, i8** %11, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 4
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** %13, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @Unlock(i32 %228)
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %232 = call i32 @AcAddUser(i32* %230, %struct.TYPE_24__* %231)
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %234 = call i32 @ReleaseUser(%struct.TYPE_24__* %233)
  br label %235

235:                                              ; preds = %206, %184
  %236 = load i32*, i32** %27, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32*, i32** %27, align 8
  %240 = call i32 @ReleaseGroup(i32* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @AcUnlock(i32* %242)
  %244 = load i32*, i32** %21, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32*, i32** %21, align 8
  %248 = call i32 @FreeXSerial(i32* %247)
  br label %249

249:                                              ; preds = %246, %241
  store i32 0, i32* %28, align 4
  br label %250

250:                                              ; preds = %249, %57
  %251 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %28, align 4
  switch i32 %252, label %254 [
    i32 0, label %253
    i32 1, label %253
  ]

253:                                              ; preds = %250, %250
  ret void

254:                                              ; preds = %250
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CfgGetUniStr(%struct.TYPE_25__*, i8*, i32*, i32) #2

declare dso_local i32 @CfgGetStr(%struct.TYPE_25__*, i8*, i8*, i32) #2

declare dso_local i8* @CfgGetInt64(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @CfgGetInt(%struct.TYPE_25__*, i8*) #2

declare dso_local %struct.TYPE_25__* @CfgGetFolder(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @SiLoadPolicyCfg(i32*, %struct.TYPE_25__*) #2

declare dso_local i32 @SiLoadTraffic(%struct.TYPE_25__*, i8*, i32*) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @CfgGetByte(%struct.TYPE_25__*, i8*, i32*, i32) #2

declare dso_local i8* @NewPasswordAuthDataRaw(i32*, i32*) #2

declare dso_local i8* @NewNTAuthData(i32*) #2

declare dso_local i8* @NewRadiusAuthData(i32*) #2

declare dso_local %struct.TYPE_26__* @CfgGetBuf(%struct.TYPE_25__*, i8*) #2

declare dso_local i32* @BufToX(%struct.TYPE_26__*, i32) #2

declare dso_local i8* @NewUserCertAuthData(i32*) #2

declare dso_local i32 @FreeX(i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_26__*) #2

declare dso_local i32* @NewXSerial(i32, i32) #2

declare dso_local i8* @NewRootCertAuthData(i32*, i32*) #2

declare dso_local i32 @AcLock(i32*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32* @AcGetGroup(i32*, i8*) #2

declare dso_local %struct.TYPE_24__* @NewUser(i8*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @JoinUserToGroup(%struct.TYPE_24__*, i32*) #2

declare dso_local i32 @SetUserTraffic(%struct.TYPE_24__*, i32*) #2

declare dso_local i32 @SetUserPolicy(%struct.TYPE_24__*, i32*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @AcAddUser(i32*, %struct.TYPE_24__*) #2

declare dso_local i32 @ReleaseUser(%struct.TYPE_24__*) #2

declare dso_local i32 @ReleaseGroup(i32*) #2

declare dso_local i32 @AcUnlock(i32*) #2

declare dso_local i32 @FreeXSerial(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
