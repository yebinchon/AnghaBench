; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeDetailSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeDetailSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_20__*, i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"CMD_CascadeDetailSet_Eval_MaxTcp\00", align 1
@__const.PsCascadeDetailSet.mm_maxtcp = private unnamed_addr constant %struct.TYPE_20__ { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 1, i32 32 }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_CascadeDetailSet_Eval_Interval\00", align 1
@__const.PsCascadeDetailSet.mm_interval = private unnamed_addr constant %struct.TYPE_20__ { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 -1 }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"MAXTCP\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"CMD_CascadeDetailSet_Prompt_MaxTcp\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"INTERVAL\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"CMD_CascadeDetailSet_Prompt_Interval\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TTL\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"CMD_CascadeDetailSet_Prompt_TTL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HALF\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CMD_CascadeDetailSet_Prompt_HALF\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"NOQOS\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"CMD_AccountDetailSet_Prompt_NOQOS\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeDetailSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca [6 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_20__* @__const.PsCascadeDetailSet.mm_maxtcp to i8*), i64 16, i1 false)
  %20 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_20__* @__const.PsCascadeDetailSet.mm_interval to i8*), i64 16, i1 false)
  %21 = getelementptr inbounds [6 x %struct.TYPE_18__], [6 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %28 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 16
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %32 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %33 = ptrtoint i32* %32 to i32
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %38 = load i32, i32* @CmdPrompt, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %37, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %42 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 16
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %46 = load i32*, i32** @CmdEvalMinMax, align 8
  %47 = ptrtoint i32* %46 to i32
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %49 = ptrtoint %struct.TYPE_20__* %14 to i32
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i64 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %53 = load i32, i32* @CmdPrompt, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %52, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %57 = call i32 @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %56, align 16
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %61 = load i32*, i32** @CmdEvalMinMax, align 8
  %62 = ptrtoint i32* %61 to i32
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %64 = ptrtoint %struct.TYPE_20__* %15 to i32
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %66, align 16
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %68 = load i32, i32* @CmdPrompt, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %67, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %72 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %71, align 16
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %80 = load i32, i32* @CmdPrompt, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %79, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %84 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %83, align 16
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %90, align 16
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %92 = load i32, i32* @CmdPrompt, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %94, %struct.TYPE_20__** %91, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %96 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %95, align 16
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  store i32 0, i32* %100, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %111 = call i32 %108(%struct.TYPE_19__* %109, i32 %110)
  %112 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %112, i64* %5, align 8
  br label %199

113:                                              ; preds = %4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds [6 x %struct.TYPE_18__], [6 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %118 = call i32* @ParseCommandList(%struct.TYPE_19__* %114, i8* %115, i32* %116, %struct.TYPE_18__* %117, i32 6)
  store i32* %118, i32** %10, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %122, i64* %5, align 8
  br label %199

123:                                              ; preds = %113
  %124 = call i32 @Zero(%struct.TYPE_16__* %13, i32 16)
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @StrCpy(i32 %126, i32 4, i32* %129)
  %131 = call %struct.TYPE_21__* @ZeroMalloc(i32 4)
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @GetParamUniStr(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %139 = call i32 @UniStrCpy(i32 %136, i32 4, i32 %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @ScGetLink(i32 %142, %struct.TYPE_16__* %13)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @ERR_NO_ERROR, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %123
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @CmdPrintError(%struct.TYPE_19__* %148, i64 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @FreeParamValueList(i32* %151)
  %153 = load i64, i64* %12, align 8
  store i64 %153, i64* %5, align 8
  br label %199

154:                                              ; preds = %123
  %155 = load i32*, i32** %10, align 8
  %156 = call i8* @GetParamInt(i32* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 4
  store i8* %156, i8** %159, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = call i8* @GetParamInt(i32* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  store i8* %161, i8** %164, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = call i8* @GetParamInt(i32* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  store i8* %166, i8** %169, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i8* @GetParamYes(i32* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  store i8* %171, i8** %174, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = call i8* @GetParamYes(i32* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store i8* %176, i8** %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @ScSetLink(i32 %182, %struct.TYPE_16__* %13)
  store i64 %183, i64* %12, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @ERR_NO_ERROR, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %154
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @CmdPrintError(%struct.TYPE_19__* %188, i64 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 @FreeParamValueList(i32* %191)
  %193 = load i64, i64* %12, align 8
  store i64 %193, i64* %5, align 8
  br label %199

194:                                              ; preds = %154
  %195 = call i32 @FreeRpcCreateLink(%struct.TYPE_16__* %13)
  br label %196

196:                                              ; preds = %194
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @FreeParamValueList(i32* %197)
  store i64 0, i64* %5, align 8
  br label %199

199:                                              ; preds = %196, %187, %147, %121, %105
  %200 = load i64, i64* %5, align 8
  ret i64 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local %struct.TYPE_21__* @ZeroMalloc(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i8* @GetParamInt(i32*, i8*) #2

declare dso_local i8* @GetParamYes(i32*, i8*) #2

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
