; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_dist_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_dist_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @last_dist_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_dist_function(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_DATA_BLOCK_LOADED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TSQL_SO_ASC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12
  br label %68

25:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %61, %25
  %31 = load i64, i64* %4, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__* %34, i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @isNull(i8* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %61

49:                                               ; preds = %41, %33
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @last_data_assign_impl(%struct.TYPE_10__* %50, i8* %51, i64 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = call %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__* %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* @DATA_SET_FLAG, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %64

61:                                               ; preds = %48
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %4, align 8
  br label %30

64:                                               ; preds = %49, %30
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @SET_VAL(%struct.TYPE_10__* %65, i64 %66, i32 1)
  br label %68

68:                                               ; preds = %64, %24, %11
  ret void
}

declare dso_local i32 @IS_DATA_BLOCK_LOADED(i32) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @last_data_assign_impl(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
