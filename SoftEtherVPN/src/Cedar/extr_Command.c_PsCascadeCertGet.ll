; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCertGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCertGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SAVECERT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_SAVECERTPATH\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_CERT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"CMD_CascadeCertSet_Not_Auth_Cert\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"CMD_CascadeCertSet_Cert_Not_Exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeCertGet(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [2 x %struct.TYPE_20__], align 16
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [2 x %struct.TYPE_20__], [2 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 %46(%struct.TYPE_21__* %47, i32 %48)
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %136

51:                                               ; preds = %4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds [2 x %struct.TYPE_20__], [2 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %56 = call i32* @ParseCommandList(%struct.TYPE_21__* %52, i8* %53, i32* %54, %struct.TYPE_20__* %55, i32 2)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %60, i64* %5, align 8
  br label %136

61:                                               ; preds = %51
  %62 = call i32 @Zero(%struct.TYPE_18__* %13, i32 24)
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @StrCpy(i32 %64, i32 4, i32* %67)
  %69 = call %struct.TYPE_22__* @ZeroMalloc(i32 4)
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @GetParamUniStr(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @UniStrCpy(i32 %74, i32 4, i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ScGetLink(i32 %80, %struct.TYPE_18__* %13)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @ERR_NO_ERROR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %61
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @CmdPrintError(%struct.TYPE_21__* %86, i64 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @FreeParamValueList(i32* %89)
  %91 = load i64, i64* %12, align 8
  store i64 %91, i64* %5, align 8
  br label %136

92:                                               ; preds = %61
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %105 = call i32 %102(%struct.TYPE_21__* %103, i32 %104)
  %106 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %106, i64* %12, align 8
  br label %130

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %119 = call i32 %116(%struct.TYPE_21__* %117, i32 %118)
  %120 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %120, i64* %12, align 8
  br label %129

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @GetParamUniStr(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %128 = call i32 @XToFileW(i32* %125, i32 %127, i32 1)
  br label %129

129:                                              ; preds = %121, %113
  br label %130

130:                                              ; preds = %129, %99
  %131 = call i32 @FreeRpcCreateLink(%struct.TYPE_18__* %13)
  br label %132

132:                                              ; preds = %130
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @FreeParamValueList(i32* %133)
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %132, %85, %59, %43
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @XToFileW(i32*, i32, i32) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
