; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountUsernameSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountUsernameSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_19__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_AccountCreate_Prompt_Username\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"CMD_AccountUsername_Notice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountUsernameSet(%struct.TYPE_20__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca [2 x %struct.TYPE_19__], align 16
  %15 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %11, align 8
  %18 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %18, i64* %12, align 8
  %19 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %45 = call i32* @ParseCommandList(%struct.TYPE_20__* %41, i8* %42, i32* %43, %struct.TYPE_19__* %44, i32 2)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %5, align 8
  br label %122

50:                                               ; preds = %4
  %51 = call i32 @Zero(%struct.TYPE_17__* %13, i32 40)
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @GetParamUniStr(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @UniStrCpy(i32 %53, i32 4, i32 %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @CcGetAccount(i32 %59, %struct.TYPE_17__* %13)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @ERR_NO_ERROR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @GetParamStr(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @StrCpy(i32 %68, i32 4, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CLIENT_AUTHTYPE_PASSWORD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %64
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %83 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 %81(%struct.TYPE_20__* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %64
  %86 = call i32 @Zero(%struct.TYPE_17__* %15, i32 40)
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 5
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 4
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @CcSetAccount(i32 %107, %struct.TYPE_17__* %15)
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %85, %50
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @ERR_NO_ERROR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @CmdPrintError(%struct.TYPE_20__* %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = call i32 @CiFreeClientGetAccount(%struct.TYPE_17__* %13)
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @FreeParamValueList(i32* %119)
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %117, %48
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
