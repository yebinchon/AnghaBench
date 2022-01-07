; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingController.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ONLY\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FARM_DEFAULT_WEIGHT = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterSettingController(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = bitcast [2 x %struct.TYPE_9__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 80, i1 false)
  %19 = bitcast i8* %18 to [2 x %struct.TYPE_9__]*
  %20 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %19, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %28 = call i32* @ParseCommandList(i32* %24, i8* %25, i32* %26, %struct.TYPE_9__* %27, i32 2)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %32, i64* %5, align 8
  br label %66

33:                                               ; preds = %4
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @GetParamInt(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @FARM_DEFAULT_WEIGHT, align 8
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = call i32 @Zero(%struct.TYPE_7__* %13, i32 24)
  %42 = load i32, i32* @SERVER_TYPE_FARM_CONTROLLER, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @GetParamYes(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ScSetFarmSetting(i32 %51, %struct.TYPE_7__* %13)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %40
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(i32* %57, i64 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @FreeParamValueList(i32* %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %66

63:                                               ; preds = %40
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @FreeParamValueList(i32* %64)
  store i64 0, i64* %5, align 8
  br label %66

66:                                               ; preds = %63, %56, %31
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i64 @GetParamInt(i32*, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @GetParamYes(i32*, i8*) #2

declare dso_local i64 @ScSetFarmSetting(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
