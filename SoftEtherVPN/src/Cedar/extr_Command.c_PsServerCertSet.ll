; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i8*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"LOADCERT\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CMD_LOADCERTPATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"LOADKEY\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CMD_LOADKEYPATH\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"SM_CERT_NEED_ROOT\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerCertSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca [2 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %24 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %23, align 16
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 1
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPrompt, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %36 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %35, align 16
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 4
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %45 = call i32* @ParseCommandList(%struct.TYPE_19__* %41, i8* %42, i32* %43, %struct.TYPE_18__* %44, i32 2)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %5, align 8
  br label %105

50:                                               ; preds = %4
  %51 = call i32 @Zero(%struct.TYPE_16__* %13, i32 16)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @GetParamUniStr(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @GetParamUniStr(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i64 @CmdLoadCertAndKey(%struct.TYPE_19__* %52, i32* %53, i32* %54, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %50
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ScSetServerCert(i32 %64, %struct.TYPE_16__* %13)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @ERR_NO_ERROR, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @CmdPrintError(%struct.TYPE_19__* %70, i64 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @FreeParamValueList(i32* %73)
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %5, align 8
  br label %105

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_19__*, i8*)*, i32 (%struct.TYPE_19__*, i8*)** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = call i32 %83(%struct.TYPE_19__* %84, i8* bitcast ([1 x i32]* @.str.4 to i8*))
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_19__*, i8*)*, i32 (%struct.TYPE_19__*, i8*)** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 %88(%struct.TYPE_19__* %89, i8* %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_19__*, i8*)*, i32 (%struct.TYPE_19__*, i8*)** %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = call i32 %94(%struct.TYPE_19__* %95, i8* bitcast ([1 x i32]* @.str.4 to i8*))
  br label %97

97:                                               ; preds = %80, %76
  %98 = call i32 @FreeRpcKeyPair(%struct.TYPE_16__* %13)
  br label %101

99:                                               ; preds = %50
  %100 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @FreeParamValueList(i32* %102)
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %101, %69, %48
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @CmdLoadCertAndKey(%struct.TYPE_19__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScSetServerCert(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeRpcKeyPair(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
