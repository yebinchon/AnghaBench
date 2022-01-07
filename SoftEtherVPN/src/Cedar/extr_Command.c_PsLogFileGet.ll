; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogFileGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogFileGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i8*)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_19__ = type { i8*, i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_LogFileGet_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SAVEPATH\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CMD_LogFileGet_START\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"CMD_LogFileGet_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_LogFileGet_SAVE_FAILED\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"CMD_LogFileGet_FILESIZE\00", align 1
@.str.9 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogFileGet(%struct.TYPE_20__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [3 x %struct.TYPE_19__], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %14, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %16, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %26 = load i32*, i32** @CmdPrompt, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %25, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  %29 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %32 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 1
  %35 = bitcast %struct.TYPE_19__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 40, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i64 1
  %38 = bitcast %struct.TYPE_19__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 40, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %16, i64 0, i64 0
  %44 = call i32* @ParseCommandList(%struct.TYPE_20__* %40, i8* %41, i8* %42, %struct.TYPE_19__* %43, i32 3)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %165

49:                                               ; preds = %4
  %50 = load i32*, i32** %10, align 8
  %51 = call i8* @GetParamStr(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @IsEmptyStr(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @GetParamStr(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %57, i8** %14, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 %61(%struct.TYPE_20__* %62, i8* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i8* @GetParamStr(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %15, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i8* @GetParamStr(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %73 = call %struct.TYPE_21__* @DownloadFileFromServer(i32 %69, i8* %70, i8* %72, i32 0, i32* null, i32* null)
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %13, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %75 = icmp eq %struct.TYPE_21__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %58
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %82 = call i32 %79(%struct.TYPE_20__* %80, i8* %81)
  %83 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %83, i64* %12, align 8
  br label %161

84:                                               ; preds = %58
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @IsEmptyStr(i8* %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @DumpBuf(%struct.TYPE_21__* %89, i8* %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %94, i64* %12, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %100 = call i32 %97(%struct.TYPE_20__* %98, i8* %99)
  br label %101

101:                                              ; preds = %93, %88
  br label %158

102:                                              ; preds = %84
  %103 = load i32, i32* @MAX_SIZE, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %17, align 8
  %106 = alloca i8, i64 %104, align 16
  store i64 %104, i64* %18, align 8
  %107 = trunc i64 %104 to i32
  %108 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @UniFormat(i8* %106, i32 %107, i8* %108, i32 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = call i32 %115(%struct.TYPE_20__* %116, i8* %106)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = call i32 %120(%struct.TYPE_20__* %121, i8* bitcast ([1 x i32]* @.str.9 to i8*))
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @CalcUtf8ToUni(i32* %126, i32 %129)
  store i64 %130, i64* %19, align 8
  %131 = load i64, i64* %19, align 8
  %132 = add nsw i64 %131, 32
  %133 = call i8* @ZeroMalloc(i64 %132)
  store i8* %133, i8** %20, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @Utf8ToUni(i8* %134, i64 %135, i32* %139, i32 %142)
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %145, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = call i32 %146(%struct.TYPE_20__* %147, i8* %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_20__*, i8*)*, i32 (%struct.TYPE_20__*, i8*)** %151, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = call i32 %152(%struct.TYPE_20__* %153, i8* bitcast ([1 x i32]* @.str.9 to i8*))
  %155 = load i8*, i8** %20, align 8
  %156 = call i32 @Free(i8* %155)
  %157 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %157)
  br label %158

158:                                              ; preds = %102, %101
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %160 = call i32 @FreeBuf(%struct.TYPE_21__* %159)
  br label %161

161:                                              ; preds = %158, %76
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @FreeParamValueList(i32* %162)
  %164 = load i64, i64* %12, align 8
  store i64 %164, i64* %5, align 8
  br label %165

165:                                              ; preds = %161, %47
  %166 = load i64, i64* %5, align 8
  ret i64 %166
}

declare dso_local i8* @_UU(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i8*, %struct.TYPE_19__*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local %struct.TYPE_21__* @DownloadFileFromServer(i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @DumpBuf(%struct.TYPE_21__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @UniFormat(i8*, i32, i8*, i32) #1

declare dso_local i64 @CalcUtf8ToUni(i32*, i32) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @Utf8ToUni(i8*, i64, i32*, i32) #1

declare dso_local i32 @Free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @FreeBuf(%struct.TYPE_21__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
