; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsKeepGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsKeepGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CMD_KeepGet_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_KeepGet_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_KeepGet_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CMD_KeepGet_COLUMN_4\00", align 1
@.str.4 = private unnamed_addr constant [7 x i32] [i32 84, i32 67, i32 80, i32 47, i32 73, i32 80, i32 0], align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 85, i32 68, i32 80, i32 47, i32 73, i32 80, i32 0], align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_KeepGet_COLUMN_5\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SM_ACCESS_ENABLE\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SM_ACCESS_DISABLE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsKeepGet(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32* @ParseCommandList(i32* %19, i8* %20, i8* %21, i32* null, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %26, i64* %5, align 8
  br label %96

27:                                               ; preds = %4
  %28 = call i32 @Zero(%struct.TYPE_5__* %13, i32 32)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ScGetKeep(i32 %31, %struct.TYPE_5__* %13)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ERR_NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @CmdPrintError(i32* %37, i64 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @FreeParamValueList(i32* %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %5, align 8
  br label %96

43:                                               ; preds = %27
  %44 = load i32, i32* @MAX_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %14, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %15, align 8
  %48 = call i32* (...) @CtNewStandard()
  store i32* %48, i32** %16, align 8
  %49 = trunc i64 %45 to i32
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @StrToUni(i8* %47, i32 %49, i32 %51)
  %53 = load i32*, i32** %16, align 8
  %54 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @CtInsert(i32* %53, i8* %54, i8* %47)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UniToStru(i8* %47, i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @CtInsert(i32* %59, i8* %60, i8* %47)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @UniToStru(i8* %47, i32 %63)
  %65 = load i32*, i32** %16, align 8
  %66 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @CtInsert(i32* %65, i8* %66, i8* %47)
  %68 = load i32*, i32** %16, align 8
  %69 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.5, i64 0, i64 0)
  %75 = bitcast i32* %74 to i8*
  %76 = call i32 @CtInsert(i32* %68, i8* %69, i8* %75)
  %77 = load i32*, i32** %16, align 8
  %78 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %43
  %83 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %86

84:                                               ; preds = %43
  %85 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 @CtInsert(i32* %77, i8* %78, i8* %87)
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @CtFree(i32* %89, i32* %90)
  %92 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %86
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @FreeParamValueList(i32* %94)
  store i64 0, i64* %5, align 8
  br label %96

96:                                               ; preds = %93, %36, %25
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ScGetKeep(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @StrToUni(i8*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
