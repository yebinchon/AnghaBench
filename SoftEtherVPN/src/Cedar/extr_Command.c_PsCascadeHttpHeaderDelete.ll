; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderDelete.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_22__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i8** }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_CascadeHttpHeader_Prompt_Name\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeHttpHeaderDelete(%struct.TYPE_23__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca [2 x %struct.TYPE_22__], align 16
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %11, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %28 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %27, align 16
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %30 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %35 = load i32, i32* @CmdPrompt, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %39 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %38, align 16
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 3
  %41 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 4
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %49, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 %50(%struct.TYPE_23__* %51, i32 %52)
  %54 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %54, i64* %5, align 8
  br label %153

55:                                               ; preds = %4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %14, i64 0, i64 0
  %60 = call i32* @ParseCommandList(%struct.TYPE_23__* %56, i8* %57, i32* %58, %struct.TYPE_22__* %59, i32 2)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %64, i64* %5, align 8
  br label %153

65:                                               ; preds = %55
  %66 = call i32 @Zero(%struct.TYPE_20__* %13, i32 16)
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @StrCpy(i32 %68, i32 4, i32* %71)
  %73 = call %struct.TYPE_24__* @ZeroMalloc(i32 4)
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @GetParamUniStr(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 @UniStrCpy(i32 %78, i32 4, i32 %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ScGetLink(i32 %84, %struct.TYPE_20__* %13)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @ERR_NO_ERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %65
  store i64 0, i64* %15, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i8* @GetParamStr(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %91, i8** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = call i32 @Zero(%struct.TYPE_20__* %95, i32 8)
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = call %struct.TYPE_19__* @ParseToken(%struct.TYPE_20__* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %16, align 8
  store i64 0, i64* %15, align 8
  br label %102

102:                                              ; preds = %136, %89
  %103 = load i64, i64* %15, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = call i32 @StartWith(i8* %114, i8* %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @StrCat(%struct.TYPE_20__* %122, i32 8, i8* %128)
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = call i32 @StrCat(%struct.TYPE_20__* %133, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %118, %108
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %15, align 8
  br label %102

139:                                              ; preds = %102
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @ScSetLink(i32 %142, %struct.TYPE_20__* %13)
  store i64 %143, i64* %12, align 8
  br label %148

144:                                              ; preds = %65
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @CmdPrintError(%struct.TYPE_23__* %145, i64 %146)
  br label %148

148:                                              ; preds = %144, %139
  %149 = call i32 @FreeRpcCreateLink(%struct.TYPE_20__* %13)
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @FreeParamValueList(i32* %150)
  %152 = load i64, i64* %12, align 8
  store i64 %152, i64* %5, align 8
  br label %153

153:                                              ; preds = %148, %63, %47
  %154 = load i64, i64* %5, align 8
  ret i64 %154
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_23__*, i8*, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_20__*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local %struct.TYPE_19__* @ParseToken(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @StrCat(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_20__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
