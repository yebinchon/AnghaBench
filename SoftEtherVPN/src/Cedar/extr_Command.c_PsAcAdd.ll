; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"CMD_AcAdd_Eval_PRIORITY\00", align 1
@__const.PsAcAdd.mm = private unnamed_addr constant %struct.TYPE_22__ { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 1, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"[allow|deny]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_AcAdd_Prompt_AD\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"PRIORITY\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CMD_AcAdd_Prompt_PRIORITY\00", align 1
@CmdEvalMinMax = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CMD_AcAdd_Prompt_IP\00", align 1
@CmdEvalIpAndMask4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"deny\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAcAdd(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca [3 x %struct.TYPE_20__], align 16
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_22__* @__const.PsAcAdd.mm to i8*), i64 24, i1 false)
  %23 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %29, align 16
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 3
  %32 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i64 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 %41, i32* %40, align 16
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %43 = load i32, i32* @CmdEvalMinMax, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %45 = ptrtoint %struct.TYPE_22__* %14 to i32
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i64 1
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %49 = load i32, i32* @CmdPrompt, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %48, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %53 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %53, i32* %52, align 16
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %55 = load i32, i32* @CmdEvalIpAndMask4, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %67 = call i32 %64(%struct.TYPE_21__* %65, i32 %66)
  %68 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %68, i64* %5, align 8
  br label %159

69:                                               ; preds = %4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 0
  %74 = call i32* @ParseCommandList(%struct.TYPE_21__* %70, i8* %71, i32* %72, %struct.TYPE_20__* %73, i32 3)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %78, i64* %5, align 8
  br label %159

79:                                               ; preds = %69
  %80 = call i32 @Zero(%struct.TYPE_18__* %13, i32 8)
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @StrCpy(i32 %82, i32 4, i32* %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ScGetAcList(i32 %89, %struct.TYPE_18__* %13)
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @ERR_NO_ERROR, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %79
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @CmdPrintError(%struct.TYPE_21__* %95, i64 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @FreeParamValueList(i32* %98)
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %5, align 8
  br label %159

101:                                              ; preds = %79
  %102 = call %struct.TYPE_23__* @ZeroMalloc(i32 20)
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %16, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i8* @GetParamStr(i32* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %104, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %101
  %112 = load i32*, i32** %10, align 8
  %113 = call i8* @GetParamStr(i32* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %114 = call i32 @ParseIpAndMask4(i8* %113, i64* %18, i64* %19)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 4
  %117 = load i64, i64* %18, align 8
  %118 = call i32 @UINTToIP(i32* %116, i64 %117)
  %119 = load i64, i64* %19, align 8
  %120 = icmp eq i64 %119, 4294967295
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  br label %131

124:                                              ; preds = %111
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 3
  %129 = load i64, i64* %19, align 8
  %130 = call i32 @UINTToIP(i32* %128, i64 %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @GetParamInt(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %139 = call i32 @Insert(i32 %137, %struct.TYPE_23__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @ScSetAcList(i32 %142, %struct.TYPE_18__* %13)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @ERR_NO_ERROR, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %131
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @CmdPrintError(%struct.TYPE_21__* %148, i64 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @FreeParamValueList(i32* %151)
  %153 = load i64, i64* %12, align 8
  store i64 %153, i64* %5, align 8
  br label %159

154:                                              ; preds = %131
  br label %155

155:                                              ; preds = %154
  %156 = call i32 @FreeRpcAcList(%struct.TYPE_18__* %13)
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @FreeParamValueList(i32* %157)
  store i64 0, i64* %5, align 8
  br label %159

159:                                              ; preds = %155, %147, %94, %77, %61
  %160 = load i64, i64* %5, align 8
  ret i64 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i64 @ScGetAcList(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local %struct.TYPE_23__* @ZeroMalloc(i32) #2

declare dso_local i8* @GetParamStr(i32*, i8*) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i32 @ParseIpAndMask4(i8*, i64*, i64*) #2

declare dso_local i32 @UINTToIP(i32*, i64) #2

declare dso_local i32 @GetParamInt(i32*, i8*) #2

declare dso_local i32 @Insert(i32, %struct.TYPE_23__*) #2

declare dso_local i64 @ScSetAcList(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @FreeRpcAcList(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
