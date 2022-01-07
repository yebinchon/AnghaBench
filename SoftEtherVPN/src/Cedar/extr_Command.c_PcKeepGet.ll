; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcKeepGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcKeepGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
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
define dso_local i64 @PcKeepGet(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32* @ParseCommandList(i32* %20, i8* %21, i8* %22, i32* null, i32 0)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %99

28:                                               ; preds = %4
  %29 = call i32 @Zero(%struct.TYPE_6__* %13, i32 32)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CcGetClientConfig(i32 %32, %struct.TYPE_6__* %13)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ERR_NO_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %28
  %38 = load i32, i32* @MAX_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = call i32* (...) @CtNewStandard()
  store i32* %42, i32** %16, align 8
  %43 = trunc i64 %39 to i32
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @StrToUni(i8* %41, i32 %43, i32 %45)
  %47 = load i32*, i32** %16, align 8
  %48 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @CtInsert(i32* %47, i8* %48, i8* %41)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @UniToStru(i8* %41, i32 %51)
  %53 = load i32*, i32** %16, align 8
  %54 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @CtInsert(i32* %53, i8* %54, i8* %41)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @UniToStru(i8* %41, i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @CtInsert(i32* %59, i8* %60, i8* %41)
  %62 = load i32*, i32** %16, align 8
  %63 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.5, i64 0, i64 0)
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 @CtInsert(i32* %62, i8* %63, i8* %69)
  %71 = load i32*, i32** %16, align 8
  %72 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %37
  %77 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %80

78:                                               ; preds = %37
  %79 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i8* [ %77, %76 ], [ %79, %78 ]
  %82 = call i32 @CtInsert(i32* %71, i8* %72, i8* %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @CtFree(i32* %83, i32* %84)
  %86 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %80, %28
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @ERR_NO_ERROR, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @CmdPrintError(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @FreeParamValueList(i32* %96)
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %95, %26
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @CcGetClientConfig(i32, %struct.TYPE_6__*) #1

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

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
