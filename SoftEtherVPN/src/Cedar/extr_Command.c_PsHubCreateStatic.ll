; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubCreateStatic.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubCreateStatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CMD_HubCreate_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsHubCreateStatic(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %19 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  store i64 %19, i64* %15, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %16, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %27 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %29 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPromptChoosePassword, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %16, i64 0, i64 0
  %44 = call i32* @ParseCommandList(i32* %40, i8* %41, i32* %42, %struct.TYPE_9__* %43, i32 2)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %95

49:                                               ; preds = %4
  %50 = call i32 @Zero(%struct.TYPE_7__* %13, i32 32)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i8* @GetParamStr(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @StrCpy(i32 %52, i32 4, i8* %54)
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i8* @GetParamStr(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @IsEmptyStr(i8* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32*, i32** %10, align 8
  %64 = call i8* @GetParamStr(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** %14, align 8
  br label %65

65:                                               ; preds = %62, %49
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @StrLen(i8* %69)
  %71 = call i32 @Sha0(i32 %67, i8* %68, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @HashPassword(i32 %73, i32 %74, i8* %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ScCreateHub(i32 %80, %struct.TYPE_7__* %13)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @ERR_NO_ERROR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @CmdPrintError(i32* %86, i64 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @FreeParamValueList(i32* %89)
  %91 = load i64, i64* %12, align 8
  store i64 %91, i64* %5, align 8
  br label %95

92:                                               ; preds = %65
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @FreeParamValueList(i32* %93)
  store i64 0, i64* %5, align 8
  br label %95

95:                                               ; preds = %92, %85, %47
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i64 @ScCreateHub(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
