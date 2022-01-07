; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeCreate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i8*)* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"[hubname]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_BridgeCreate_PROMPT_HUBNAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_BridgeCreate_PROMPT_DEVICE\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"TAP\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"SM_BRIDGE_INTEL\00", align 1
@.str.6 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"b_is_in_vm\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"D_SM_VMBRIDGE@CAPTION\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"D_SM_VMBRIDGE@S_1\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"D_SM_VMBRIDGE@S_2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsBridgeCreate(%struct.TYPE_20__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca [3 x %struct.TYPE_19__], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %20 = load i32*, i32** @CmdPrompt, align 8
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %23 = call i8* @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %22, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %26 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %31 = load i32*, i32** @CmdPrompt, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %34 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %33, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %37 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %37, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i64 1
  %40 = bitcast %struct.TYPE_19__* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 40, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %46 = call i32* @ParseCommandList(%struct.TYPE_20__* %42, i8* %43, i32* %44, %struct.TYPE_19__* %45, i32 3)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %127

51:                                               ; preds = %4
  %52 = call i32 @Zero(%struct.TYPE_17__* %13, i32 20)
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @GetParamStr(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @StrCpy(i32 %55, i32 4, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @GetParamStr(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @StrCpy(i32 %60, i32 4, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @GetParamYes(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ScAddLocalBridge(i32 %70, %struct.TYPE_17__* %13)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @ERR_NO_ERROR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %51
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @CmdPrintError(%struct.TYPE_20__* %76, i64 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @FreeParamValueList(i32* %79)
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %5, align 8
  br label %127

82:                                               ; preds = %51
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 %85(%struct.TYPE_20__* %86, i8* %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = call i32 %91(%struct.TYPE_20__* %92, i8* bitcast ([1 x i32]* @.str.6 to i8*))
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @GetCapsBool(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %82
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %105 = call i32 %102(%struct.TYPE_20__* %103, i8* %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %111 = call i32 %108(%struct.TYPE_20__* %109, i8* %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %117 = call i32 %114(%struct.TYPE_20__* %115, i8* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = call i32 %120(%struct.TYPE_20__* %121, i8* bitcast ([1 x i32]* @.str.6 to i8*))
  br label %123

123:                                              ; preds = %99, %82
  br label %124

124:                                              ; preds = %123
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @FreeParamValueList(i32* %125)
  store i64 0, i64* %5, align 8
  br label %127

127:                                              ; preds = %124, %75, %49
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i8* @_UU(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @GetParamYes(i32*, i8*) #1

declare dso_local i64 @ScAddLocalBridge(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @GetCapsBool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
