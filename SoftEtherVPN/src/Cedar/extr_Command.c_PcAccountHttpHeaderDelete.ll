; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderDelete.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i8** }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_AccountHttpHeader_Prompt_Name\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountHttpHeaderDelete(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca [2 x %struct.TYPE_19__], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %10, align 8
  %21 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %21, i64* %11, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %25 = load i32, i32* @CmdPrompt, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %29 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %28, align 16
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  %31 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i64 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %36 = load i32, i32* @CmdPrompt, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %35, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %40 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %39, align 16
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %42 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %48 = call i32* @ParseCommandList(i32* %44, i8* %45, i32* %46, %struct.TYPE_19__* %47, i32 2)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %52, i64* %5, align 8
  br label %150

53:                                               ; preds = %4
  %54 = call i32 @Zero(%struct.TYPE_17__* %12, i32 32)
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @GetParamUniStr(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @UniStrCpy(i32 %56, i32 4, i32 %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @CcGetAccount(i32 %62, %struct.TYPE_17__* %12)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @ERR_NO_ERROR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %53
  store i64 0, i64* %15, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i8* @GetParamStr(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %69, i8** %18, align 8
  %70 = call i32 @Zero(%struct.TYPE_17__* %17, i32 32)
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 5
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = call i32 @Zero(%struct.TYPE_17__* %92, i32 8)
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = call %struct.TYPE_16__* @ParseToken(%struct.TYPE_17__* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %16, align 8
  store i64 0, i64* %15, align 8
  br label %99

99:                                               ; preds = %133, %67
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %99
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = call i32 @StartWith(i8* %111, i8* %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i8**, i8*** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @StrCat(%struct.TYPE_17__* %119, i32 8, i8* %125)
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = call i32 @StrCat(%struct.TYPE_17__* %130, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %115, %105
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %15, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %15, align 8
  br label %99

136:                                              ; preds = %99
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @CcSetAccount(i32 %139, %struct.TYPE_17__* %17)
  store i64 %140, i64* %11, align 8
  br label %145

141:                                              ; preds = %53
  %142 = load i32*, i32** %6, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @CmdPrintError(i32* %142, i64 %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = call i32 @CiFreeClientGetAccount(%struct.TYPE_17__* %12)
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @FreeParamValueList(i32* %147)
  %149 = load i64, i64* %11, align 8
  store i64 %149, i64* %5, align 8
  br label %150

150:                                              ; preds = %145, %51
  %151 = load i64, i64* %5, align 8
  ret i64 %151
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @ParseToken(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @StrCat(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
