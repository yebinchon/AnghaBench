; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterIfList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterIfList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CMD_RouterIfList_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SM_L3_SW_IF_COLUMN1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SM_L3_SW_IF_COLUMN2\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SM_L3_SW_IF_COLUMN3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsRouterIfList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca [1 x %struct.TYPE_12__], align 16
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  store i64 0, i64* %12, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %27 = load i32, i32* @CmdPrompt, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %31 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %30, align 16
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %33 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %39 = call i32* @ParseCommandList(i32* %35, i8* %36, i32* %37, %struct.TYPE_12__* %38, i32 1)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %128

44:                                               ; preds = %4
  %45 = call i32 @Zero(%struct.TYPE_10__* %13, i32 24)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @GetParamStr(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @StrCpy(i32 %47, i32 4, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ScEnumL3If(i32 %53, %struct.TYPE_10__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @CmdPrintError(i32* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeParamValueList(i32* %62)
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %5, align 8
  br label %128

65:                                               ; preds = %44
  %66 = load i32, i32* @MAX_SIZE, align 4
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %16, align 8
  %69 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %17, align 8
  %70 = load i32, i32* @MAX_SIZE, align 4
  %71 = zext i32 %70 to i64
  %72 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %18, align 8
  %73 = load i32, i32* @MAX_SIZE, align 4
  %74 = zext i32 %73 to i64
  %75 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %19, align 8
  %76 = call i32* (...) @CtNew()
  store i32* %76, i32** %20, align 8
  %77 = load i32*, i32** %20, align 8
  %78 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @CtInsertColumn(i32* %77, i32 %78, i32 0)
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %82 = call i32 @CtInsertColumn(i32* %80, i32 %81, i32 0)
  %83 = load i32*, i32** %20, align 8
  %84 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32 @CtInsertColumn(i32* %83, i32 %84, i32 0)
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %116, %65
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %94
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %21, align 8
  %96 = mul nuw i64 4, %67
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IPToUniStr32(i32* %69, i32 %97, i32 %100)
  %102 = mul nuw i64 4, %71
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @IPToUniStr32(i32* %72, i32 %103, i32 %106)
  %108 = mul nuw i64 4, %74
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @StrToUni(i32* %75, i32 %109, i32 %112)
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 @CtInsert(i32* %114, i32* %69, i32* %72, i32* %75)
  br label %116

116:                                              ; preds = %91
  %117 = load i64, i64* %15, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %15, align 8
  br label %86

119:                                              ; preds = %86
  %120 = load i32*, i32** %20, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @CtFree(i32* %120, i32* %121)
  %123 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %119
  %125 = call i32 @FreeRpcEnumL3If(%struct.TYPE_10__* %13)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  store i64 0, i64* %5, align 8
  br label %128

128:                                              ; preds = %124, %58, %42
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScEnumL3If(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @IPToUniStr32(i32*, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeRpcEnumL3If(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
