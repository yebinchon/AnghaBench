; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConfigGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConfigGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*, i8*)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { i8*, i32*, i32*, i32*, i32* }
%struct.TYPE_20__ = type { i64, i8** }

@.str = private unnamed_addr constant [7 x i8] c"[path]\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CMD_ConfigGet_FILENAME\00", align 1
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_ConfigGet_FILE_SAVE_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsConfigGet(%struct.TYPE_24__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca [1 x %struct.TYPE_23__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = bitcast [1 x %struct.TYPE_23__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 40, i1 false)
  %26 = bitcast i8* %25 to [1 x %struct.TYPE_23__]*
  %27 = getelementptr inbounds [1 x %struct.TYPE_23__], [1 x %struct.TYPE_23__]* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %28, align 16
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds [1 x %struct.TYPE_23__], [1 x %struct.TYPE_23__]* %14, i64 0, i64 0
  %33 = call i32* @ParseCommandList(%struct.TYPE_24__* %29, i8* %30, i8* %31, %struct.TYPE_23__* %32, i32 1)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %37, i64* %5, align 8
  br label %170

38:                                               ; preds = %4
  %39 = call i32 @Zero(%struct.TYPE_21__* %13, i32 16)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ScGetConfig(i32 %42, %struct.TYPE_21__* %13)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @ERR_NO_ERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @CmdPrintError(%struct.TYPE_24__* %48, i64 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @FreeParamValueList(i32* %51)
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %5, align 8
  br label %170

54:                                               ; preds = %38
  %55 = load i32*, i32** %10, align 8
  %56 = call i8* @GetParamUniStr(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i64 @IsEmptyUniStr(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %140

60:                                               ; preds = %54
  %61 = load i32, i32* @MAX_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %16, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %17, align 8
  %65 = trunc i64 %62 to i32
  %66 = call i8* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @StrLen(i64 %70)
  %72 = call i32 @UniFormat(i8* %64, i32 %65, i8* %66, i32 %68, i32 %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_24__*, i8*)*, i32 (%struct.TYPE_24__*, i8*)** %74, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %77 = call i32 %75(%struct.TYPE_24__* %76, i8* %64)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_24__*, i8*)*, i32 (%struct.TYPE_24__*, i8*)** %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = call i32 %80(%struct.TYPE_24__* %81, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @StrLen(i64 %87)
  %89 = call i64 @CalcUtf8ToUni(i32* %85, i32 %88)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = add nsw i64 %90, 32
  %92 = call i8* @ZeroMalloc(i64 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @StrLen(i64 %99)
  %101 = call i32 @Utf8ToUni(i8* %93, i64 %94, i32* %97, i32 %100)
  %102 = load i8*, i8** %19, align 8
  %103 = call %struct.TYPE_20__* @UniGetLines(i8* %102)
  store %struct.TYPE_20__* %103, %struct.TYPE_20__** %20, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %105 = icmp ne %struct.TYPE_20__* %104, null
  br i1 %105, label %106, label %131

106:                                              ; preds = %60
  store i64 0, i64* %21, align 8
  br label %107

107:                                              ; preds = %125, %106
  %108 = load i64, i64* %21, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_24__*, i8*)*, i32 (%struct.TYPE_24__*, i8*)** %115, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* %21, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 %116(%struct.TYPE_24__* %117, i8* %123)
  br label %125

125:                                              ; preds = %113
  %126 = load i64, i64* %21, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %21, align 8
  br label %107

128:                                              ; preds = %107
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %130 = call i32 @UniFreeToken(%struct.TYPE_20__* %129)
  br label %131

131:                                              ; preds = %128, %60
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_24__*, i8*)*, i32 (%struct.TYPE_24__*, i8*)** %133, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = call i32 %134(%struct.TYPE_24__* %135, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  %137 = load i8*, i8** %19, align 8
  %138 = call i32 @Free(i8* %137)
  %139 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %139)
  br label %164

140:                                              ; preds = %54
  %141 = load i8*, i8** %15, align 8
  %142 = call i32* @FileCreateW(i8* %141)
  store i32* %142, i32** %22, align 8
  %143 = load i32*, i32** %22, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_24__*, i8*)*, i32 (%struct.TYPE_24__*, i8*)** %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %151 = call i32 %148(%struct.TYPE_24__* %149, i8* %150)
  %152 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %152, i64* %12, align 8
  br label %163

153:                                              ; preds = %140
  %154 = load i32*, i32** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @StrLen(i64 %158)
  %160 = call i32 @FileWrite(i32* %154, i64 %156, i32 %159)
  %161 = load i32*, i32** %22, align 8
  %162 = call i32 @FileClose(i32* %161)
  br label %163

163:                                              ; preds = %153, %145
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164
  %166 = call i32 @FreeRpcConfig(%struct.TYPE_21__* %13)
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @FreeParamValueList(i32* %167)
  %169 = load i64, i64* %12, align 8
  store i64 %169, i64* %5, align 8
  br label %170

170:                                              ; preds = %165, %47, %36
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_24__*, i8*, i8*, %struct.TYPE_23__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_21__*, i32) #2

declare dso_local i64 @ScGetConfig(i32, %struct.TYPE_21__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_24__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i8* @GetParamUniStr(i32*, i8*) #2

declare dso_local i64 @IsEmptyUniStr(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @UniFormat(i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @StrLen(i64) #2

declare dso_local i64 @CalcUtf8ToUni(i32*, i32) #2

declare dso_local i8* @ZeroMalloc(i64) #2

declare dso_local i32 @Utf8ToUni(i8*, i64, i32*, i32) #2

declare dso_local %struct.TYPE_20__* @UniGetLines(i8*) #2

declare dso_local i32 @UniFreeToken(%struct.TYPE_20__*) #2

declare dso_local i32 @Free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32* @FileCreateW(i8*) #2

declare dso_local i32 @FileWrite(i32*, i64, i32) #2

declare dso_local i32 @FileClose(i32*) #2

declare dso_local i32 @FreeRpcConfig(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
