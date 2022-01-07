; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCertSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCertSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_17__ = type { i32*, i32*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"LOADCERT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_LOADCERTPATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"LOADKEY\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CMD_LOADKEYPATH\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_CERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeCertSet(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [3 x %struct.TYPE_20__], align 16
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i64 1
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %44 = load i32, i32* @CmdPrompt, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %48 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %50 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 %59(%struct.TYPE_21__* %60, i32 %61)
  %63 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %63, i64* %5, align 8
  br label %175

64:                                               ; preds = %4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %16, i64 0, i64 0
  %69 = call i32* @ParseCommandList(%struct.TYPE_21__* %65, i8* %66, i32* %67, %struct.TYPE_20__* %68, i32 3)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %73, i64* %5, align 8
  br label %175

74:                                               ; preds = %64
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @GetParamUniStr(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @GetParamUniStr(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 @CmdLoadCertAndKey(%struct.TYPE_21__* %75, i32** %14, i32** %15, i32 %77, i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %83, i64* %5, align 8
  br label %175

84:                                               ; preds = %74
  %85 = call i32 @Zero(%struct.TYPE_18__* %13, i32 24)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @StrCpy(i32 %87, i32 4, i32* %90)
  %92 = call %struct.TYPE_22__* @ZeroMalloc(i32 4)
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @GetParamUniStr(i32* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %100 = call i32 @UniStrCpy(i32 %97, i32 4, i32 %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ScGetLink(i32 %103, %struct.TYPE_18__* %13)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @ERR_NO_ERROR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %84
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @FreeX(i32* %109)
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @FreeK(i32* %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @CmdPrintError(%struct.TYPE_21__* %113, i64 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @FreeParamValueList(i32* %116)
  %118 = load i64, i64* %12, align 8
  store i64 %118, i64* %5, align 8
  br label %175

119:                                              ; preds = %84
  %120 = load i32, i32* @CLIENT_AUTHTYPE_CERT, align 4
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @FreeX(i32* %133)
  br label %135

135:                                              ; preds = %129, %119
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @FreeK(i32* %145)
  br label %147

147:                                              ; preds = %141, %135
  %148 = load i32*, i32** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  store i32* %148, i32** %151, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  store i32* %152, i32** %155, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @ScSetLink(i32 %158, %struct.TYPE_18__* %13)
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* @ERR_NO_ERROR, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %147
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @CmdPrintError(%struct.TYPE_21__* %164, i64 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @FreeParamValueList(i32* %167)
  %169 = load i64, i64* %12, align 8
  store i64 %169, i64* %5, align 8
  br label %175

170:                                              ; preds = %147
  %171 = call i32 @FreeRpcCreateLink(%struct.TYPE_18__* %13)
  br label %172

172:                                              ; preds = %170
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @FreeParamValueList(i32* %173)
  store i64 0, i64* %5, align 8
  br label %175

175:                                              ; preds = %172, %163, %108, %82, %72, %56
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @CmdLoadCertAndKey(%struct.TYPE_21__*, i32**, i32**, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @FreeK(i32*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
