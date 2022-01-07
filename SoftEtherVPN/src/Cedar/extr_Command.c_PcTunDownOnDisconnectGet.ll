; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcTunDownOnDisconnectGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcTunDownOnDisconnectGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CMD_TUNDownOnDisconnectGet_COLUMN1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_ACCESS_ENABLE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SM_ACCESS_DISABLE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcTunDownOnDisconnectGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %11, align 8
  %17 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @ParseCommandList(i32* %18, i8* %19, i32* %20, i32* null, i32 0)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %25, i64* %5, align 8
  br label %64

26:                                               ; preds = %4
  %27 = call i32 @Zero(%struct.TYPE_6__* %13, i32 8)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @CcGetClientConfig(i32 %30, %struct.TYPE_6__* %13)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ERR_NO_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = call i32* (...) @CtNewStandard()
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %46

44:                                               ; preds = %35
  %45 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @CtInsert(i32* %37, i32 %38, i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @CtFree(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %46, %26
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @FreeParamValueList(i32* %61)
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %60, %24
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @CcGetClientConfig(i32, %struct.TYPE_6__*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
