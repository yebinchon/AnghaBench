; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDebug.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ARG\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"CMD_Debug_Msg1\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"CMD_Debug_Msg2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsDebug(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x %struct.TYPE_15__], align 16
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x i32], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %11, align 8
  %19 = bitcast [2 x %struct.TYPE_15__]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 80, i1 false)
  %20 = bitcast i8* %19 to [2 x %struct.TYPE_15__]*
  %21 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %20, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %13, i64 0, i64 0
  %29 = call i32* @ParseCommandList(%struct.TYPE_16__* %25, i8* %26, i32* %27, %struct.TYPE_15__* %28, i32 2)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %5, align 8
  br label %80

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @GetParamInt(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %36, i64* %12, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_16__* %40, i32* %41)
  %43 = call i32 @Zero(%struct.TYPE_13__* %14, i32 16)
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @GetParamStr(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @StrCpy(i32 %47, i32 4, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ScDebug(i32 %53, %struct.TYPE_13__* %14)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %34
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @CmdPrintError(%struct.TYPE_16__* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeParamValueList(i32* %62)
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %5, align 8
  br label %80

65:                                               ; preds = %34
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %67 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @UniFormat(i32* %66, i32 16, i32* %67, i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %76 = call i32 %73(%struct.TYPE_16__* %74, i32* %75)
  br label %77

77:                                               ; preds = %65
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @FreeParamValueList(i32* %78)
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %77, %58, %32
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i64 @GetParamInt(i32*, i8*) #2

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

declare dso_local i64 @ScDebug(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
