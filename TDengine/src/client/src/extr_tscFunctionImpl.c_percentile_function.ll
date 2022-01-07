; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_percentile_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_percentile_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @percentile_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @percentile_function(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__* %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__* %20, i64 %21)
  store i8* %22, i8** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @isNull(i8* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %43

35:                                               ; preds = %27, %19
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @tMemBucketPut(i32 %40, i8* %41, i32 1)
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @SET_VAL(%struct.TYPE_10__* %47, i64 %48, i32 1)
  %50 = load i32, i32* @DATA_SET_FLAG, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__*) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @tMemBucketPut(i32, i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
