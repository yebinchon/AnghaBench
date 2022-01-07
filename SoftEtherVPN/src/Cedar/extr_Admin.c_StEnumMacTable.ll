; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumMacTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumMacTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumMacTable(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = trunc i64 %25 to i32
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @StrCpy(i8* %27, i32 %29, i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = call i32 @FreeRpcEnumMacTable(%struct.TYPE_18__* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = call i32 @Zero(%struct.TYPE_18__* %36, i32 4)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = call i64 @SiEnumMacTable(%struct.TYPE_17__* %38, i8* %27, %struct.TYPE_18__* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ERR_NO_ERROR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %93

46:                                               ; preds = %2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @LockList(i32 %55)
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %83, %52
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @LIST_NUM(i32 %61)
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call %struct.TYPE_19__* @LIST_DATA(i32 %67, i64 %68)
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %14, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = call i32 @Zero(%struct.TYPE_18__* %15, i32 4)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %78 = call i32 @SiCallEnumMacTable(%struct.TYPE_17__* %76, %struct.TYPE_19__* %77, i8* %27, %struct.TYPE_18__* %15)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = call i32 @AdjoinRpcEnumMacTable(%struct.TYPE_18__* %79, %struct.TYPE_18__* %15)
  %81 = call i32 @FreeRpcEnumMacTable(%struct.TYPE_18__* %15)
  br label %82

82:                                               ; preds = %74, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %57

86:                                               ; preds = %57
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @UnlockList(i32 %89)
  br label %91

91:                                               ; preds = %86, %46
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %93

93:                                               ; preds = %91, %44
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @FreeRpcEnumMacTable(%struct.TYPE_18__*) #2

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #2

declare dso_local i64 @SiEnumMacTable(%struct.TYPE_17__*, i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @SiCallEnumMacTable(%struct.TYPE_17__*, %struct.TYPE_19__*, i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @AdjoinRpcEnumMacTable(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

declare dso_local i32 @UnlockList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
