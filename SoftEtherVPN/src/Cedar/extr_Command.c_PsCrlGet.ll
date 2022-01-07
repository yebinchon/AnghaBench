; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_CrlGet_Prompt_ID\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"CMD_CrlGet_CN\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CMD_CrlGet_O\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"CMD_CrlGet_OU\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"CMD_CrlGet_C\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"CMD_CrlGet_ST\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"CMD_CrlGet_L\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"CMD_CrlGet_SERI\00", align 1
@MD5_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"CMD_CrlGet_MD5_HASH\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"CMD_CrlGet_SHA1_HASH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCrlGet(%struct.TYPE_23__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [1 x %struct.TYPE_20__], align 16
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %29 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPrompt, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %36 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 3
  %38 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 %47(%struct.TYPE_23__* %48, i32 %49)
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %282

52:                                               ; preds = %4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %57 = call i32* @ParseCommandList(%struct.TYPE_23__* %53, i8* %54, i32* %55, %struct.TYPE_20__* %56, i32 1)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %61, i64* %5, align 8
  br label %282

62:                                               ; preds = %52
  %63 = call i32 @Zero(%struct.TYPE_18__* %13, i32 16)
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @StrCpy(i32 %65, i32 4, i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @GetParamInt(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ScGetCrl(i32 %75, %struct.TYPE_18__* %13)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @ERR_NO_ERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %62
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @CmdPrintError(%struct.TYPE_23__* %81, i64 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @FreeParamValueList(i32* %84)
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* %5, align 8
  br label %282

87:                                               ; preds = %62
  %88 = call i32* (...) @CtNewStandard()
  store i32* %88, i32** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %16, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %92 = icmp ne %struct.TYPE_22__* %91, null
  br i1 %92, label %93, label %274

93:                                               ; preds = %87
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %17, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %99, label %178

99:                                               ; preds = %93
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @UniIsEmptyStr(i32* %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @CtInsert(i32* %106, i32 %107, i32* %110)
  br label %112

112:                                              ; preds = %105, %99
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @UniIsEmptyStr(i32* %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @CtInsert(i32* %119, i32 %120, i32* %123)
  br label %125

125:                                              ; preds = %118, %112
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @UniIsEmptyStr(i32* %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load i32*, i32** %15, align 8
  %133 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @CtInsert(i32* %132, i32 %133, i32* %136)
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @UniIsEmptyStr(i32* %141)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @CtInsert(i32* %145, i32 %146, i32* %149)
  br label %151

151:                                              ; preds = %144, %138
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @UniIsEmptyStr(i32* %154)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @CtInsert(i32* %158, i32 %159, i32* %162)
  br label %164

164:                                              ; preds = %157, %151
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @UniIsEmptyStr(i32* %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load i32*, i32** %15, align 8
  %172 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @CtInsert(i32* %171, i32 %172, i32* %175)
  br label %177

177:                                              ; preds = %170, %164
  br label %178

178:                                              ; preds = %177, %93
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = icmp ne %struct.TYPE_17__* %181, null
  br i1 %182, label %183, label %217

183:                                              ; preds = %178
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %188, 1
  br i1 %189, label %190, label %217

190:                                              ; preds = %183
  %191 = load i32, i32* @MAX_SIZE, align 4
  %192 = zext i32 %191 to i64
  %193 = call i8* @llvm.stacksave()
  store i8* %193, i8** %18, align 8
  %194 = alloca i32, i64 %192, align 16
  store i64 %192, i64* %19, align 8
  %195 = load i32, i32* @MAX_SIZE, align 4
  %196 = zext i32 %195 to i64
  %197 = alloca i8, i64 %196, align 16
  store i64 %196, i64* %20, align 8
  %198 = trunc i64 %196 to i32
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @BinToStrEx(i8* %197, i32 %198, i32 %203, i32 %208)
  %210 = mul nuw i64 4, %192
  %211 = trunc i64 %210 to i32
  %212 = call i32 @StrToUni(i32* %194, i32 %211, i8* %197)
  %213 = load i32*, i32** %15, align 8
  %214 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %215 = call i32 @CtInsert(i32* %213, i32 %214, i32* %194)
  %216 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %216)
  br label %217

217:                                              ; preds = %190, %183, %178
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MD5_SIZE, align 4
  %222 = call i32 @IsZero(i32 %220, i32 %221)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %217
  %225 = load i32, i32* @MAX_SIZE, align 4
  %226 = zext i32 %225 to i64
  %227 = call i8* @llvm.stacksave()
  store i8* %227, i8** %21, align 8
  %228 = alloca i32, i64 %226, align 16
  store i64 %226, i64* %22, align 8
  %229 = load i32, i32* @MAX_SIZE, align 4
  %230 = zext i32 %229 to i64
  %231 = alloca i8, i64 %230, align 16
  store i64 %230, i64* %23, align 8
  %232 = trunc i64 %230 to i32
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @MD5_SIZE, align 4
  %237 = call i32 @BinToStrEx(i8* %231, i32 %232, i32 %235, i32 %236)
  %238 = mul nuw i64 4, %226
  %239 = trunc i64 %238 to i32
  %240 = call i32 @StrToUni(i32* %228, i32 %239, i8* %231)
  %241 = load i32*, i32** %15, align 8
  %242 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %243 = call i32 @CtInsert(i32* %241, i32 %242, i32* %228)
  %244 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %244)
  br label %245

245:                                              ; preds = %224, %217
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @SHA1_SIZE, align 4
  %250 = call i32 @IsZero(i32 %248, i32 %249)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %245
  %253 = load i32, i32* @MAX_SIZE, align 4
  %254 = zext i32 %253 to i64
  %255 = call i8* @llvm.stacksave()
  store i8* %255, i8** %24, align 8
  %256 = alloca i32, i64 %254, align 16
  store i64 %254, i64* %25, align 8
  %257 = load i32, i32* @MAX_SIZE, align 4
  %258 = zext i32 %257 to i64
  %259 = alloca i8, i64 %258, align 16
  store i64 %258, i64* %26, align 8
  %260 = trunc i64 %258 to i32
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @SHA1_SIZE, align 4
  %265 = call i32 @BinToStrEx(i8* %259, i32 %260, i32 %263, i32 %264)
  %266 = mul nuw i64 4, %254
  %267 = trunc i64 %266 to i32
  %268 = call i32 @StrToUni(i32* %256, i32 %267, i8* %259)
  %269 = load i32*, i32** %15, align 8
  %270 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %271 = call i32 @CtInsert(i32* %269, i32 %270, i32* %256)
  %272 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %272)
  br label %273

273:                                              ; preds = %252, %245
  br label %274

274:                                              ; preds = %273, %87
  %275 = load i32*, i32** %15, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %277 = call i32 @CtFree(i32* %275, %struct.TYPE_23__* %276)
  br label %278

278:                                              ; preds = %274
  %279 = call i32 @FreeRpcCrl(%struct.TYPE_18__* %13)
  %280 = load i32*, i32** %10, align 8
  %281 = call i32 @FreeParamValueList(i32* %280)
  store i64 0, i64* %5, align 8
  br label %282

282:                                              ; preds = %278, %80, %60, %44
  %283 = load i64, i64* %5, align 8
  ret i64 %283
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_23__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @ScGetCrl(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BinToStrEx(i8*, i32, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @FreeRpcCrl(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
