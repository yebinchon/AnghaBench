; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsExtOptionSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsExtOptionSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CMD_AdminOptionSet_Prompt_name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CMD_AdminOptionSet_Prompt_VALUE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsExtOptionSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 %48(%struct.TYPE_19__* %49, i32 %50)
  %52 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %52, i64* %5, align 8
  br label %153

53:                                               ; preds = %4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %58 = call i32* @ParseCommandList(%struct.TYPE_19__* %54, i8* %55, i32* %56, %struct.TYPE_18__* %57, i32 2)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %62, i64* %5, align 8
  br label %153

63:                                               ; preds = %53
  %64 = call i32 @Zero(%struct.TYPE_16__* %13, i32 24)
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @StrCpy(i32 %66, i32 4, i32* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @ScGetHubExtOptions(i32 %73, %struct.TYPE_16__* %13)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @ERR_NO_ERROR, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %63
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @CmdPrintError(%struct.TYPE_19__* %79, i64 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @FreeParamValueList(i32* %82)
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %5, align 8
  br label %153

85:                                               ; preds = %63
  store i32 0, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %111, %85
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @GetParamStr(i32* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %100 = call i64 @StrCmpi(i32 %97, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %91
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @GetParamInt(i32* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 4
  store i32 1, i32* %16, align 4
  br label %110

110:                                              ; preds = %102, %91
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %86

114:                                              ; preds = %86
  %115 = load i32, i32* %16, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %118, i64* %12, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @CmdPrintError(%struct.TYPE_19__* %119, i64 %120)
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @FreeParamValueList(i32* %122)
  %124 = call i32 @FreeRpcAdminOption(%struct.TYPE_16__* %13)
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %5, align 8
  br label %153

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @StrCpy(i32 %128, i32 4, i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @ScSetHubExtOptions(i32 %135, %struct.TYPE_16__* %13)
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @ERR_NO_ERROR, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %126
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i32 @CmdPrintError(%struct.TYPE_19__* %141, i64 %142)
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @FreeParamValueList(i32* %144)
  %146 = load i64, i64* %12, align 8
  store i64 %146, i64* %5, align 8
  br label %153

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  %150 = call i32 @FreeRpcAdminOption(%struct.TYPE_16__* %13)
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @FreeParamValueList(i32* %151)
  store i64 0, i64* %5, align 8
  br label %153

153:                                              ; preds = %149, %140, %117, %78, %61, %45
  %154 = load i64, i64* %5, align 8
  ret i64 %154
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubExtOptions(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @FreeRpcAdminOption(%struct.TYPE_16__*) #1

declare dso_local i64 @ScSetHubExtOptions(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
