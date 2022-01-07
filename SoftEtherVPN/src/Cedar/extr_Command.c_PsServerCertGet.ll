; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCertGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[cert]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CMD_SAVECERTPATH\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_SAVECERT_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerCertGet(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [1 x %struct.TYPE_15__], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %32 = call i32* @ParseCommandList(%struct.TYPE_16__* %28, i8* %29, i32* %30, %struct.TYPE_15__* %31, i32 1)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %71

37:                                               ; preds = %4
  %38 = call i32 @Zero(%struct.TYPE_13__* %13, i32 4)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ScGetServerCert(i32 %41, %struct.TYPE_13__* %13)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ERR_NO_ERROR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @CmdPrintError(%struct.TYPE_16__* %47, i64 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @FreeParamValueList(i32* %50)
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  br label %71

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @GetParamUniStr(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @XToFileW(i32 %55, i32 %57, i32 1)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 %63(%struct.TYPE_16__* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %53
  %68 = call i32 @FreeRpcKeyPair(%struct.TYPE_13__* %13)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @FreeParamValueList(i32* %69)
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %67, %46, %35
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ScGetServerCert(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @XToFileW(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @FreeRpcKeyPair(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
