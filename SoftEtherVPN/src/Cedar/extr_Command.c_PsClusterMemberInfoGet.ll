; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberInfoGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberInfoGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i64, i64, i64, i64*, i64, i64, i64, %struct.TYPE_9__*, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_ClusterMemberInfoGet_PROMPT_ID\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SM_FMINFO_TYPE\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SM_FARM_CONTROLLER\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_FARM_MEMBER\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SM_FMINFO_CONNECT_TIME\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SM_FMINFO_IP\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SM_FMINFO_HOSTNAME\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SM_FMINFO_POINT\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SM_FMINFO_WEIGHT\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SM_FMINFO_NUM_PORT\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SM_FMINFO_PORT\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"SM_FMINFO_NUM_HUB\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"SM_FMINFO_HUB\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"SM_FMINFO_HUB_TAG_2\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"SM_FMINFO_HUB_TAG_1\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SM_FMINFO_NUM_SESSION\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"SM_FMINFO_NUN_CONNECTION\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterMemberInfoGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1 x %struct.TYPE_12__], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  store i64 0, i64* %12, align 8
  %26 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %15, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %29 = load i32, i32* @CmdPrompt, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %33 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %15, i64 0, i64 0
  %40 = call i32* @ParseCommandList(i32* %36, i8* %37, i32* %38, %struct.TYPE_12__* %39, i32 1)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %44, i64* %5, align 8
  br label %230

45:                                               ; preds = %4
  %46 = call i32 @Zero(%struct.TYPE_10__* %13, i32 96)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @GetParamUniStr(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @UniToInt(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 12
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ScGetFarmInfo(i32 %53, %struct.TYPE_10__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @CmdPrintError(i32* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeParamValueList(i32* %62)
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %5, align 8
  br label %230

65:                                               ; preds = %45
  %66 = call i32* (...) @CtNewStandard()
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* @MAX_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %16, align 8
  %70 = alloca i32, i64 %68, align 16
  store i64 %68, i64* %17, align 8
  %71 = load i32, i32* @MAX_SIZE, align 4
  %72 = zext i32 %71 to i64
  %73 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %18, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %83

81:                                               ; preds = %65
  %82 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32* [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @CtInsert(i32* %74, i32* %75, i32* %84)
  %86 = mul nuw i64 4, %68
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SystemToLocal64(i32 %89)
  %91 = call i32 @GetDateTimeStrEx64(i32* %70, i32 %87, i32 %90, i32* null)
  %92 = load i32*, i32** %14, align 8
  %93 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 @CtInsert(i32* %92, i32* %93, i32* %70)
  %95 = trunc i64 %72 to i32
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @IPToStr32(i8* %73, i32 %95, i32 %97)
  %99 = mul nuw i64 4, %68
  %100 = trunc i64 %99 to i32
  %101 = call i32 @StrToUni(i32* %70, i32 %100, i8* %73)
  %102 = load i32*, i32** %14, align 8
  %103 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %104 = call i32 @CtInsert(i32* %102, i32* %103, i32* %70)
  %105 = mul nuw i64 4, %68
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @StrToUni(i32* %70, i32 %106, i8* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 @CtInsert(i32* %110, i32* %111, i32* %70)
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @UniToStru(i32* %70, i64 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %118 = call i32 @CtInsert(i32* %116, i32* %117, i32* %70)
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @UniToStru(i32* %70, i64 %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %124 = call i32 @CtInsert(i32* %122, i32* %123, i32* %70)
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @UniToStru(i32* %70, i64 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %130 = call i32 @CtInsert(i32* %128, i32* %129, i32* %70)
  store i64 0, i64* %19, align 8
  br label %131

131:                                              ; preds = %156, %83
  %132 = load i64, i64* %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  %137 = load i32, i32* @MAX_SIZE, align 4
  %138 = zext i32 %137 to i64
  %139 = call i8* @llvm.stacksave()
  store i8* %139, i8** %20, align 8
  %140 = alloca i32, i64 %138, align 16
  store i64 %138, i64* %21, align 8
  %141 = mul nuw i64 4, %68
  %142 = trunc i64 %141 to i32
  %143 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %144 = load i64, i64* %19, align 8
  %145 = add nsw i64 %144, 1
  %146 = call i32 @UniFormat(i32* %70, i32 %142, i32* %143, i64 %145)
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %19, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @UniToStru(i32* %140, i64 %151)
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @CtInsert(i32* %153, i32* %70, i32* %140)
  %155 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %155)
  br label %156

156:                                              ; preds = %136
  %157 = load i64, i64* %19, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %19, align 8
  br label %131

159:                                              ; preds = %131
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @UniToStru(i32* %70, i64 %161)
  %163 = load i32*, i32** %14, align 8
  %164 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %165 = call i32 @CtInsert(i32* %163, i32* %164, i32* %70)
  store i64 0, i64* %19, align 8
  br label %166

166:                                              ; preds = %207, %159
  %167 = load i64, i64* %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %171, label %210

171:                                              ; preds = %166
  %172 = load i32, i32* @MAX_SIZE, align 4
  %173 = zext i32 %172 to i64
  %174 = call i8* @llvm.stacksave()
  store i8* %174, i8** %22, align 8
  %175 = alloca i32, i64 %173, align 16
  store i64 %173, i64* %23, align 8
  %176 = mul nuw i64 4, %68
  %177 = trunc i64 %176 to i32
  %178 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %179 = load i64, i64* %19, align 8
  %180 = add nsw i64 %179, 1
  %181 = call i32 @UniFormat(i32* %70, i32 %177, i32* %178, i64 %180)
  %182 = mul nuw i64 4, %173
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load i64, i64* %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %171
  %192 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %195

193:                                              ; preds = %171
  %194 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32* [ %192, %191 ], [ %194, %193 ]
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load i64, i64* %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @UniFormat(i32* %175, i32 %183, i32* %196, i64 %202)
  %204 = load i32*, i32** %14, align 8
  %205 = call i32 @CtInsert(i32* %204, i32* %70, i32* %175)
  %206 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %206)
  br label %207

207:                                              ; preds = %195
  %208 = load i64, i64* %19, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %19, align 8
  br label %166

210:                                              ; preds = %166
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @UniToStru(i32* %70, i64 %212)
  %214 = load i32*, i32** %14, align 8
  %215 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %216 = call i32 @CtInsert(i32* %214, i32* %215, i32* %70)
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @UniToStru(i32* %70, i64 %218)
  %220 = load i32*, i32** %14, align 8
  %221 = call i32* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %222 = call i32 @CtInsert(i32* %220, i32* %221, i32* %70)
  %223 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32*, i32** %14, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = call i32 @CtFree(i32* %224, i32* %225)
  %227 = call i32 @FreeRpcFarmInfo(%struct.TYPE_10__* %13)
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @FreeParamValueList(i32* %228)
  store i64 0, i64* %5, align 8
  br label %230

230:                                              ; preds = %210, %58, %43
  %231 = load i64, i64* %5, align 8
  ret i64 %231
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @UniToInt(i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetFarmInfo(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @IPToStr32(i8*, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @UniToStru(i32*, i64) #1

declare dso_local i32 @UniFormat(i32*, i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcFarmInfo(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
