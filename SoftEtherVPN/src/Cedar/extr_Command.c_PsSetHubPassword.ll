; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSetHubPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSetHubPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[password]\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSetHubPassword(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [1 x %struct.TYPE_15__], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %15, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPromptChoosePassword, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 4
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 %34(%struct.TYPE_16__* %35, i32 %36)
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %102

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %15, i64 0, i64 0
  %44 = call i32* @ParseCommandList(%struct.TYPE_16__* %40, i8* %41, i32* %42, %struct.TYPE_15__* %43, i32 1)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %102

49:                                               ; preds = %39
  %50 = call i32 @Zero(%struct.TYPE_13__* %13, i32 12)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @StrCpy(i32 %52, i32 4, i32* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ScGetHub(i32 %59, %struct.TYPE_13__* %13)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @ERR_NO_ERROR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @CmdPrintError(%struct.TYPE_16__* %65, i64 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @FreeParamValueList(i32* %68)
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* %5, align 8
  br label %102

71:                                               ; preds = %49
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @GetParamStr(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %73, i8** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @HashPassword(i32 %75, i32 %76, i8* %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @StrLen(i8* %82)
  %84 = call i32 @Sha0(i32 %80, i8* %81, i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ScSetHub(i32 %87, %struct.TYPE_13__* %13)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @ERR_NO_ERROR, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %71
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @CmdPrintError(%struct.TYPE_16__* %93, i64 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @FreeParamValueList(i32* %96)
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %5, align 8
  br label %102

99:                                               ; preds = %71
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @FreeParamValueList(i32* %100)
  store i64 0, i64* %5, align 8
  br label %102

102:                                              ; preds = %99, %92, %64, %47, %31
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHub(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i64 @ScSetHub(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
