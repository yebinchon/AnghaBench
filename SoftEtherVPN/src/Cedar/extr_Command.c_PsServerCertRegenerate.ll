; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertRegenerate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertRegenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i8*)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8*, i32*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[CN]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_ServerCertRegenerate_Prompt_CN\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CM_CERT_SET_MSG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerCertRegenerate(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca [1 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %24 = call i8* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %23, align 16
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %33 = call i32* @ParseCommandList(%struct.TYPE_17__* %29, i8* %30, i32* %31, %struct.TYPE_16__* %32, i32 1)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %37, i64* %5, align 8
  br label %78

38:                                               ; preds = %4
  %39 = call i32 @Zero(%struct.TYPE_14__* %13, i32 4)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @GetParamStr(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @StrCpy(i32 %41, i32 4, i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ScRegenerateServerCert(i32 %47, %struct.TYPE_14__* %13)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @ERR_NO_ERROR, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @CmdPrintError(%struct.TYPE_17__* %53, i64 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @FreeParamValueList(i32* %56)
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %5, align 8
  br label %78

59:                                               ; preds = %38
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call i32 %62(%struct.TYPE_17__* %63, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 %67(%struct.TYPE_17__* %68, i8* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = call i32 %73(%struct.TYPE_17__* %74, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @FreeParamValueList(i32* %76)
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %59, %52, %36
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScRegenerateServerCert(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
