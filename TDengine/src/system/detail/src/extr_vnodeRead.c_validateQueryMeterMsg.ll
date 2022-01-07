; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_validateQueryMeterMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_validateQueryMeterMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"qmsg:%p illegal value of aggTimeInterval %ld\00", align 1
@TSDB_MAX_TAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"qmsg:%p illegal value of numOfTagsCols %ld\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"qmsg:%p illegal value of numOfCols %ld\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"qmsg:%p illegal value of numOfSids %ld\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"qmsg:%p illegal value of numOfGroupbyCols %ld\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"qmsg:%p illegal value of output columns %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"qmsg:%p illegal value of tag length %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @validateQueryMeterMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateQueryMeterMsg(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %9, i64 %12)
  store i32 -1, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TSDB_MAX_TAGS, align 8
  %24 = add nsw i64 %23, 1
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19, %14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %27, i64 %30)
  store i32 -1, i32* %2, align 4
  br label %100

32:                                               ; preds = %19
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TSDB_MAX_COLUMNS, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %44, i64 %47)
  store i32 -1, i32* %2, align 4
  br label %100

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %55, i64 %58)
  store i32 -1, i32* %2, align 4
  br label %100

60:                                               ; preds = %49
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %66, i64 %69)
  store i32 -1, i32* %2, align 4
  br label %100

71:                                               ; preds = %60
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TSDB_MAX_COLUMNS, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77, %71
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %83, i64 %86)
  store i32 -1, i32* %2, align 4
  br label %100

88:                                               ; preds = %77
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @dError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_4__* %94, i64 %97)
  store i32 -1, i32* %2, align 4
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %93, %82, %65, %54, %43, %26, %8
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dError(i8*, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
