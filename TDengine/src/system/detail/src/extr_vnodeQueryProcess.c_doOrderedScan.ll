; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doOrderedScan.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doOrderedScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @doOrderedScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doOrderedScan(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @QUERY_IS_ASC_QUERY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @queryOnMultiDataFiles(%struct.TYPE_6__* %14, i8* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %57

27:                                               ; preds = %13
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @queryOnMultiDataCache(%struct.TYPE_6__* %28, i8* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %57

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @queryOnMultiDataCache(%struct.TYPE_6__* %36, i8* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %57

49:                                               ; preds = %35
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @queryOnMultiDataFiles(%struct.TYPE_6__* %50, i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %26, %48, %49, %27
  ret void
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(i32*) #1

declare dso_local i8* @queryOnMultiDataFiles(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @queryOnMultiDataCache(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
