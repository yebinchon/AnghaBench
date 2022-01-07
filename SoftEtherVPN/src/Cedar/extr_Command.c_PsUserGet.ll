; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i8*)* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_24__ = type { i8*, i8*, i32*, i32, i32 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_27__ = type { i8*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"CMD_UserGet_Column_Name\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"CMD_UserGet_Column_RealName\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CMD_UserGet_Column_Note\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"CMD_UserGet_Column_Group\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_UserGet_Column_Expires\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"CMD_UserGet_Column_AuthType\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"CMD_UserGet_Column_UserCert\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"CMD_UserGet_Column_RootCert_CN\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"CMD_UserGet_Column_RootCert_SERIAL\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"CMD_UserGet_Column_RadiusAlias\00", align 1
@.str.13 = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"SM_USERINFO_CREATE\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"SM_USERINFO_UPDATE\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SM_USERINFO_NUMLOGIN\00", align 1
@.str.17 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"CMD_UserGet_Policy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserGet(%struct.TYPE_25__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca [1 x %struct.TYPE_24__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %28 = load i32, i32* @CmdPrompt, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %32 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %31, align 16
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  %35 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 4
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %43, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %46 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 %44(%struct.TYPE_25__* %45, i8* %46)
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %299

49:                                               ; preds = %4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %14, i64 0, i64 0
  %54 = call i32* @ParseCommandList(%struct.TYPE_25__* %50, i8* %51, i8* %52, %struct.TYPE_24__* %53, i32 1)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %58, i64* %5, align 8
  br label %299

59:                                               ; preds = %49
  %60 = call i32 @Zero(%struct.TYPE_22__* %13, i32 88)
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @StrCpy(i8* %62, i32 8, i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32* @GetParamStr(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @StrCpy(i8* %68, i32 8, i32* %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ScGetUser(i32 %74, %struct.TYPE_22__* %13)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %59
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @CmdPrintError(%struct.TYPE_25__* %80, i64 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %299

86:                                               ; preds = %59
  %87 = load i32, i32* @MAX_SIZE, align 4
  %88 = zext i32 %87 to i64
  %89 = call i8* @llvm.stacksave()
  store i8* %89, i8** %15, align 8
  %90 = alloca i8, i64 %88, align 16
  store i64 %88, i64* %16, align 8
  %91 = call i32* (...) @CtNewStandard()
  store i32* %91, i32** %17, align 8
  %92 = trunc i64 %88 to i32
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @StrToUni(i8* %90, i32 %92, i8* %94)
  %96 = load i32*, i32** %17, align 8
  %97 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %98 = call i32 @CtInsert(i32* %96, i8* %97, i8* %90)
  %99 = load i32*, i32** %17, align 8
  %100 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @CtInsert(i32* %99, i8* %100, i8* %102)
  %104 = load i32*, i32** %17, align 8
  %105 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @CtInsert(i32* %104, i8* %105, i8* %107)
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @IsEmptyStr(i8* %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %86
  %114 = trunc i64 %88 to i32
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @StrToUni(i8* %90, i32 %114, i8* %116)
  %118 = load i32*, i32** %17, align 8
  %119 = call i8* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %120 = call i32 @CtInsert(i32* %118, i8* %119, i8* %90)
  br label %121

121:                                              ; preds = %113, %86
  %122 = trunc i64 %88 to i32
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @SystemToLocal64(i32 %124)
  %126 = call i32 @GetDateTimeStrEx64(i8* %90, i32 %122, i32 %125, i32* null)
  %127 = load i32*, i32** %17, align 8
  %128 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i32 @CtInsert(i32* %127, i8* %128, i8* %90)
  %130 = load i32*, i32** %17, align 8
  %131 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @GetAuthTypeStr(i32 %133)
  %135 = call i32 @CtInsert(i32* %130, i8* %131, i8* %134)
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %243 [
    i32 128, label %138
    i32 129, label %164
    i32 130, label %221
    i32 131, label %221
  ]

138:                                              ; preds = %121
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %18, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %147 = icmp ne %struct.TYPE_26__* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = trunc i64 %88 to i32
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @GetAllNameFromX(i8* %90, i32 %154, i32* %157)
  %159 = load i32*, i32** %17, align 8
  %160 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %161 = call i32 @CtInsert(i32* %159, i8* %160, i8* %90)
  br label %162

162:                                              ; preds = %153, %148, %142
  br label %163

163:                                              ; preds = %162, %138
  br label %243

164:                                              ; preds = %121
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %220

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %170 = load i32*, i32** %169, align 8
  %171 = bitcast i32* %170 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %171, %struct.TYPE_27__** %19, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @IsEmptyUniStr(i8* %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %168
  %178 = load i32*, i32** %17, align 8
  %179 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @CtInsert(i32* %178, i8* %179, i8* %182)
  br label %184

184:                                              ; preds = %177, %168
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %186, align 8
  %188 = icmp ne %struct.TYPE_21__* %187, null
  br i1 %188, label %189, label %219

189:                                              ; preds = %184
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 1
  br i1 %195, label %196, label %219

196:                                              ; preds = %189
  %197 = load i32, i32* @MAX_SIZE, align 4
  %198 = zext i32 %197 to i64
  %199 = call i8* @llvm.stacksave()
  store i8* %199, i8** %20, align 8
  %200 = alloca i8, i64 %198, align 16
  store i64 %198, i64* %21, align 8
  %201 = trunc i64 %198 to i32
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @BinToStrEx(i8* %200, i32 %201, i32 %206, i32 %211)
  %213 = trunc i64 %88 to i32
  %214 = call i32 @StrToUni(i8* %90, i32 %213, i8* %200)
  %215 = load i32*, i32** %17, align 8
  %216 = call i8* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %217 = call i32 @CtInsert(i32* %215, i8* %216, i8* %90)
  %218 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %218)
  br label %219

219:                                              ; preds = %196, %189, %184
  br label %220

220:                                              ; preds = %219, %164
  br label %243

221:                                              ; preds = %121, %121
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %242

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  %227 = load i32*, i32** %226, align 8
  %228 = bitcast i32* %227 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %228, %struct.TYPE_28__** %22, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @IsEmptyUniStr(i8* %231)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %225
  %235 = load i32*, i32** %17, align 8
  %236 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @CtInsert(i32* %235, i8* %236, i8* %239)
  br label %241

241:                                              ; preds = %234, %225
  br label %242

242:                                              ; preds = %241, %221
  br label %243

243:                                              ; preds = %121, %242, %220, %163
  %244 = load i32*, i32** %17, align 8
  %245 = call i32 @CtInsert(i32* %244, i8* bitcast ([4 x i32]* @.str.13 to i8*), i8* bitcast ([4 x i32]* @.str.13 to i8*))
  %246 = trunc i64 %88 to i32
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 10
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @SystemToLocal64(i32 %248)
  %250 = call i32 @GetDateTimeStrEx64(i8* %90, i32 %246, i32 %249, i32* null)
  %251 = load i32*, i32** %17, align 8
  %252 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %253 = call i32 @CtInsert(i32* %251, i8* %252, i8* %90)
  %254 = trunc i64 %88 to i32
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 9
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @SystemToLocal64(i32 %256)
  %258 = call i32 @GetDateTimeStrEx64(i8* %90, i32 %254, i32 %257, i32* null)
  %259 = load i32*, i32** %17, align 8
  %260 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %261 = call i32 @CtInsert(i32* %259, i8* %260, i8* %90)
  %262 = load i32*, i32** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 8
  %264 = call i32 @CmdInsertTrafficInfo(i32* %262, i32* %263)
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @UniToStru(i8* %90, i32 %266)
  %268 = load i32*, i32** %17, align 8
  %269 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %270 = call i32 @CtInsert(i32* %268, i8* %269, i8* %90)
  %271 = load i32*, i32** %17, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %273 = call i32 @CtFree(i32* %271, %struct.TYPE_25__* %272)
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 6
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %293

277:                                              ; preds = %243
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 0
  %280 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %279, align 8
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %282 = call i32 %280(%struct.TYPE_25__* %281, i8* bitcast ([1 x i32]* @.str.17 to i8*))
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %284, align 8
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %287 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %288 = call i32 %285(%struct.TYPE_25__* %286, i8* %287)
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 6
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @PrintPolicy(%struct.TYPE_25__* %289, i32* %291, i32 0)
  br label %293

293:                                              ; preds = %277, %243
  %294 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %294)
  br label %295

295:                                              ; preds = %293
  %296 = call i32 @FreeRpcSetUser(%struct.TYPE_22__* %13)
  %297 = load i32*, i32** %10, align 8
  %298 = call i32 @FreeParamValueList(i32* %297)
  store i64 0, i64* %5, align 8
  br label %299

299:                                              ; preds = %295, %79, %57, %41
  %300 = load i64, i64* %5, align 8
  ret i64 %300
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_25__*, i8*, i8*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetUser(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @GetDateTimeStrEx64(i8*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i8* @GetAuthTypeStr(i32) #1

declare dso_local i32 @GetAllNameFromX(i8*, i32, i32*) #1

declare dso_local i32 @IsEmptyUniStr(i8*) #1

declare dso_local i32 @BinToStrEx(i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdInsertTrafficInfo(i32*, i32*) #1

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @PrintPolicy(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
