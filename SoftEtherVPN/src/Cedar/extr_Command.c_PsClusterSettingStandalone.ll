; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingStandalone.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingStandalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterSettingStandalone(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @ParseCommandList(i32* %16, i8* %17, i32* %18, i32* null, i32 0)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %23, i64* %5, align 8
  br label %45

24:                                               ; preds = %4
  %25 = call i32 @Zero(%struct.TYPE_5__* %13, i32 4)
  %26 = load i32, i32* @SERVER_TYPE_STANDALONE, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ScSetFarmSetting(i32 %30, %struct.TYPE_5__* %13)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ERR_NO_ERROR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @CmdPrintError(i32* %36, i64 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @FreeParamValueList(i32* %39)
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %5, align 8
  br label %45

42:                                               ; preds = %24
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @FreeParamValueList(i32* %43)
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %42, %35, %22
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ScSetFarmSetting(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
