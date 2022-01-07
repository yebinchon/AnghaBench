; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicGetSetting.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicGetSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32*, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CMD_NicCreate_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_2\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"CMD_MSG_ENABLE\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CMD_MSG_DISABLE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_3\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_4\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_5\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"CMD_NicGetSetting_6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcNicGetSetting(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca [1 x %struct.TYPE_9__], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %28 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %31 = load i32, i32* @CmdEvalNotEmpty, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %39 = call i32* @ParseCommandList(i32* %35, i8* %36, i32* %37, %struct.TYPE_9__* %38, i32 1)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %132

44:                                               ; preds = %4
  %45 = call i32 @Zero(%struct.TYPE_7__* %13, i32 32)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @GetParamStr(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @StrCpy(i32 %47, i32 4, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CcGetVLan(i32 %53, %struct.TYPE_7__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %44
  %59 = call i32* (...) @CtNewStandard()
  store i32* %59, i32** %15, align 8
  %60 = load i32, i32* @MAX_SIZE, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %16, align 8
  %63 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %17, align 8
  %64 = mul nuw i64 4, %61
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @StrToUni(i32* %63, i32 %65, i32 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @CtInsert(i32* %69, i32* %70, i32* %63)
  %72 = load i32*, i32** %15, align 8
  %73 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %81

79:                                               ; preds = %58
  %80 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32* [ %78, %77 ], [ %80, %79 ]
  %83 = call i32 @CtInsert(i32* %72, i32* %73, i32* %82)
  %84 = mul nuw i64 4, %61
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @StrToUni(i32* %63, i32 %85, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 @CtInsert(i32* %89, i32* %90, i32* %63)
  %92 = mul nuw i64 4, %61
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @StrToUni(i32* %63, i32 %93, i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i32 @CtInsert(i32* %97, i32* %98, i32* %63)
  %100 = mul nuw i64 4, %61
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @StrToUni(i32* %63, i32 %101, i32 %103)
  %105 = load i32*, i32** %15, align 8
  %106 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %107 = call i32 @CtInsert(i32* %105, i32* %106, i32* %63)
  %108 = mul nuw i64 4, %61
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @StrToUni(i32* %63, i32 %109, i32 %111)
  %113 = load i32*, i32** %15, align 8
  %114 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %115 = call i32 @CtInsert(i32* %113, i32* %114, i32* %63)
  %116 = load i32*, i32** %15, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @CtFree(i32* %116, i32* %117)
  %119 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %120

120:                                              ; preds = %81, %44
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @ERR_NO_ERROR, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @CmdPrintError(i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @FreeParamValueList(i32* %129)
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %128, %42
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @CcGetVLan(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
