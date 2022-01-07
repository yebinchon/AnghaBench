; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumIpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumIpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_19__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumIpTable(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @CHECK_RIGHT, align 4
  %28 = trunc i64 %24 to i32
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @StrCpy(i8* %26, i32 %28, i8* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = call i32 @FreeRpcEnumIpTable(%struct.TYPE_18__* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = call i32 @Zero(%struct.TYPE_18__* %35, i32 8)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @StrCpy(i8* %39, i32 8, i8* %26)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = call i64 @SiEnumIpTable(%struct.TYPE_17__* %41, i8* %26, %struct.TYPE_18__* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @ERR_NO_ERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %96

49:                                               ; preds = %2
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @LockList(i32 %58)
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %86, %55
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @LIST_NUM(i32 %64)
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call %struct.TYPE_19__* @LIST_DATA(i32 %70, i64 %71)
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %13, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = call i32 @Zero(%struct.TYPE_18__* %14, i32 8)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %81 = call i32 @SiCallEnumIpTable(%struct.TYPE_17__* %79, %struct.TYPE_19__* %80, i8* %26, %struct.TYPE_18__* %14)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = call i32 @AdjoinRpcEnumIpTable(%struct.TYPE_18__* %82, %struct.TYPE_18__* %14)
  %84 = call i32 @FreeRpcEnumIpTable(%struct.TYPE_18__* %14)
  br label %85

85:                                               ; preds = %77, %67
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %60

89:                                               ; preds = %60
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @UnlockList(i32 %92)
  br label %94

94:                                               ; preds = %89, %49
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %47
  %97 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i64, i64* %3, align 8
  ret i64 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumIpTable(%struct.TYPE_18__*) #2

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #2

declare dso_local i64 @SiEnumIpTable(%struct.TYPE_17__*, i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @SiCallEnumIpTable(%struct.TYPE_17__*, %struct.TYPE_19__*, i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @AdjoinRpcEnumIpTable(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

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
