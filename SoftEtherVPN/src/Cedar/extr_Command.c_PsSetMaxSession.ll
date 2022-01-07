; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSetMaxSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSetMaxSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[max_session]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CMD_SetMaxSession_Prompt\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSetMaxSession(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca [1 x %struct.TYPE_17__], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 %35(%struct.TYPE_18__* %36, i32 %37)
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %94

40:                                               ; preds = %4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %45 = call i32* @ParseCommandList(%struct.TYPE_18__* %41, i8* %42, i32* %43, %struct.TYPE_17__* %44, i32 1)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %5, align 8
  br label %94

50:                                               ; preds = %40
  %51 = call i32 @Zero(%struct.TYPE_15__* %13, i32 8)
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @StrCpy(i32 %53, i32 4, i32* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ScGetHub(i32 %60, %struct.TYPE_15__* %13)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @ERR_NO_ERROR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @CmdPrintError(%struct.TYPE_18__* %66, i64 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @FreeParamValueList(i32* %69)
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %5, align 8
  br label %94

72:                                               ; preds = %50
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @GetParamInt(i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @ScSetHub(i32 %79, %struct.TYPE_15__* %13)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @ERR_NO_ERROR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @CmdPrintError(%struct.TYPE_18__* %85, i64 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeParamValueList(i32* %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  br label %94

91:                                               ; preds = %72
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @FreeParamValueList(i32* %92)
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %91, %84, %65, %48, %32
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHub(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @ScSetHub(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
