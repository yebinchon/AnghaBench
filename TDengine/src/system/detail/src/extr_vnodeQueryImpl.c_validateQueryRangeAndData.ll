; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_validateQueryRangeAndData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_validateQueryRangeAndData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64*, %struct.TYPE_11__*)* @validateQueryRangeAndData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validateQueryRangeAndData(%struct.TYPE_9__* %0, i64* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  store i64 -1, i64* %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @IS_DATA_BLOCK_LOADED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = call i64 @needPrimaryTimestampCol(%struct.TYPE_10__* %19, %struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i64*, i64** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  br label %63

30:                                               ; preds = %18, %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_10__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42, %30
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_10__* %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i1 [ false, %46 ], [ %56, %52 ]
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i1 [ true, %42 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %63

63:                                               ; preds = %59, %23
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_10__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %83, %75, %69, %63
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_10__* %108)
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %107, %99, %93, %87
  %113 = phi i1 [ false, %99 ], [ false, %93 ], [ false, %87 ], [ %111, %107 ]
  br label %114

114:                                              ; preds = %112, %83
  %115 = phi i1 [ true, %83 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  ret void
}

declare dso_local i64 @IS_DATA_BLOCK_LOADED(i32) #1

declare dso_local i64 @needPrimaryTimestampCol(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
