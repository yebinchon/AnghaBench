; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRetrySet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRetrySet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_16__*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"CMD_AccountRetrySet_EVAL_INTERVAL\00", align 1
@__const.PcAccountRetrySet.minmax = private unnamed_addr constant %struct.TYPE_16__ { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 5, i64 4294967295 }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"CMD_AccountRetrySet_PROMPT_NUM\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"INTERVAL\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"CMD_AccountRetrySet_PROMPT_INTERVAL\00", align 1
@CmdEvalMinMax = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountRetrySet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca [3 x %struct.TYPE_15__], align 16
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %11, align 8
  %21 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %21, i64* %12, align 8
  %22 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_16__* @__const.PcAccountRetrySet.minmax to i8*), i64 24, i1 false)
  %23 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %15, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %29, align 16
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %32 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i64 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 %41, i32* %40, align 16
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %43 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %48 = load i32, i32* @CmdPrompt, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %47, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %52 = call i32 @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 %52, i32* %51, align 16
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %54 = load i32, i32* @CmdEvalMinMax, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %56 = ptrtoint %struct.TYPE_16__* %14 to i32
  store i32 %56, i32* %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %15, i64 0, i64 0
  %61 = call i32* @ParseCommandList(i32* %57, i8* %58, i32* %59, %struct.TYPE_15__* %60, i32 3)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %4
  %65 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %65, i64* %5, align 8
  br label %136

66:                                               ; preds = %4
  %67 = call i32 @Zero(%struct.TYPE_13__* %13, i32 32)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @GetParamUniStr(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @UniStrCpy(i32 %69, i32 4, i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @CcGetAccount(i32 %75, %struct.TYPE_13__* %13)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @ERR_NO_ERROR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %66
  %81 = load i32*, i32** %10, align 8
  %82 = call i64 @GetParamInt(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i64 %82, i64* %17, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @GetParamInt(i32* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %17, align 8
  %86 = icmp eq i64 %85, 999
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* @INFINITE, align 8
  br label %91

89:                                               ; preds = %80
  %90 = load i64, i64* %17, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = call i32 @Zero(%struct.TYPE_13__* %16, i32 32)
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @CcSetAccount(i32 %121, %struct.TYPE_13__* %16)
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %91, %66
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @ERR_NO_ERROR, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @CmdPrintError(i32* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %123
  %132 = call i32 @CiFreeClientGetAccount(%struct.TYPE_13__* %13)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @FreeParamValueList(i32* %133)
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %131, %64
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_13__*) #2

declare dso_local i64 @GetParamInt(i32*, i8*) #2

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_13__*) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
