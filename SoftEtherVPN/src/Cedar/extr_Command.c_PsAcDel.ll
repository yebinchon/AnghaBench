; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcDel.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CMD_AcDel_Prompt_ID\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAcDel(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca [1 x %struct.TYPE_20__], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  %29 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %37, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 %38(%struct.TYPE_21__* %39, i32 %40)
  %42 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %42, i64* %5, align 8
  br label %131

43:                                               ; preds = %4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %48 = call i32* @ParseCommandList(%struct.TYPE_21__* %44, i8* %45, i32* %46, %struct.TYPE_20__* %47, i32 1)
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %52, i64* %5, align 8
  br label %131

53:                                               ; preds = %43
  %54 = call i32 @Zero(%struct.TYPE_18__* %13, i32 8)
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @StrCpy(i32 %56, i32 4, i32* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ScGetAcList(i32 %63, %struct.TYPE_18__* %13)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @ERR_NO_ERROR, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @CmdPrintError(%struct.TYPE_21__* %69, i64 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @FreeParamValueList(i32* %72)
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %5, align 8
  br label %131

75:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %76

76:                                               ; preds = %101, %75
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @LIST_NUM(i32 %79)
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %15, align 8
  %86 = call %struct.TYPE_22__* @LIST_DATA(i32 %84, i64 %85)
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %17, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i64 @GetParamInt(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %97 = call i32 @Delete(i32 %95, %struct.TYPE_22__* %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %99 = call i32 @Free(%struct.TYPE_22__* %98)
  store i32 1, i32* %16, align 4
  br label %104

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %15, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %15, align 8
  br label %76

104:                                              ; preds = %93, %76
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %108, i64* %12, align 8
  %109 = call i32 @FreeRpcAcList(%struct.TYPE_18__* %13)
  br label %115

110:                                              ; preds = %104
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @ScSetAcList(i32 %113, %struct.TYPE_18__* %13)
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @ERR_NO_ERROR, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @CmdPrintError(%struct.TYPE_21__* %120, i64 %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @FreeParamValueList(i32* %123)
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %5, align 8
  br label %131

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126
  %128 = call i32 @FreeRpcAcList(%struct.TYPE_18__* %13)
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @FreeParamValueList(i32* %129)
  store i64 0, i64* %5, align 8
  br label %131

131:                                              ; preds = %127, %119, %68, %51, %35
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetAcList(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @Free(%struct.TYPE_22__*) #1

declare dso_local i32 @FreeRpcAcList(%struct.TYPE_18__*) #1

declare dso_local i64 @ScSetAcList(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
