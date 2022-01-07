; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConfigSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConfigSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[path]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CMD_ConfigSet_PROMPT_PATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"CMD_ConfigSet_FILE_LOAD_FAILED\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsConfigSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca [1 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %34 = call i32* @ParseCommandList(%struct.TYPE_19__* %30, i8* %31, i32* %32, %struct.TYPE_18__* %33, i32 1)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %91

39:                                               ; preds = %4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @GetParamUniStr(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call %struct.TYPE_20__* @ReadDumpW(i32* %42)
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %15, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 %49(%struct.TYPE_19__* %50, i32 %51)
  br label %88

53:                                               ; preds = %39
  %54 = call i32 @Zero(%struct.TYPE_16__* %13, i32 4)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @ZeroMalloc(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @Copy(i32 %62, i32 %65, i64 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %71 = call i32 @FreeBuf(%struct.TYPE_20__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ScSetConfig(i32 %74, %struct.TYPE_16__* %13)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %53
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @CmdPrintError(%struct.TYPE_19__* %80, i64 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %91

86:                                               ; preds = %53
  %87 = call i32 @FreeRpcConfig(%struct.TYPE_16__* %13)
  br label %88

88:                                               ; preds = %86, %46
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @FreeParamValueList(i32* %89)
  store i64 0, i64* %5, align 8
  br label %91

91:                                               ; preds = %88, %79, %37
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32* @GetParamUniStr(i32*, i8*) #1

declare dso_local %struct.TYPE_20__* @ReadDumpW(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ZeroMalloc(i64) #1

declare dso_local i32 @Copy(i32, i32, i64) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_20__*) #1

declare dso_local i64 @ScSetConfig(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeRpcConfig(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
