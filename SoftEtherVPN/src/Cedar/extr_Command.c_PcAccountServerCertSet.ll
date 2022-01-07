; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountServerCertSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountServerCertSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"LOADCERT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_LOADCERTPATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"CMD_LOADCERT_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountServerCertSet(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x %struct.TYPE_17__], align 16
  %16 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %15, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  %29 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i64 1
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %37, align 16
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %40 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %15, i64 0, i64 0
  %46 = call i32* @ParseCommandList(%struct.TYPE_18__* %42, i8* %43, i32* %44, %struct.TYPE_17__* %45, i32 2)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %131

51:                                               ; preds = %4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @GetParamUniStr(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32* @FileToXW(i32 %53)
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @FreeParamValueList(i32* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 %62(%struct.TYPE_18__* %63, i32 %64)
  %66 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %66, i64* %5, align 8
  br label %131

67:                                               ; preds = %51
  %68 = call i32 @Zero(%struct.TYPE_15__* %13, i32 40)
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @GetParamUniStr(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @UniStrCpy(i32 %70, i32 4, i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @CcGetAccount(i32 %76, %struct.TYPE_15__* %13)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @ERR_NO_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @FreeX(i32* %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %14, align 8
  %91 = call i32* @CloneX(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32* %91, i32** %92, align 8
  %93 = call i32 @Zero(%struct.TYPE_15__* %16, i32 40)
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store i32* %107, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @CcSetAccount(i32 %114, %struct.TYPE_15__* %16)
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %89, %67
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* @ERR_NO_ERROR, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @CmdPrintError(%struct.TYPE_18__* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = call i32 @CiFreeClientGetAccount(%struct.TYPE_15__* %13)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @FreeX(i32* %128)
  %130 = load i64, i64* %12, align 8
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %124, %57, %49
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32* @FileToXW(i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32* @CloneX(i32*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
