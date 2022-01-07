; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSkipDataBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSkipDataBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i64, i64, i64, %struct.TYPE_18__, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i64 }

@vnodeSearchKeyFunc = common dso_local global i32* null, align 8
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@BLK_FILE_BLOCK = common dso_local global i64 0, align 8
@BLK_CACHE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"QInfo:%p skip rows:%d, offset:%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @doSkipDataBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doSkipDataBlock(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %4, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i32*, i32** @vnodeSearchKeyFunc, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %1, %148
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @moveToNextBlock(%struct.TYPE_19__* %29, i64 %30, i32 %31, i32 0)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %37 = call i64 @Q_STATUS_EQUAL(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %149

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @getGenericDataBlock(%struct.TYPE_21__* %41, %struct.TYPE_20__* %42, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_20__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i64, i64* @BLK_FILE_BLOCK, align 8
  br label %58

56:                                               ; preds = %40
  %57 = load i64, i64* @BLK_CACHE_BLOCK, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  store i64 %59, i64* %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  call void @getBlockBasicInfo(%struct.TYPE_22__* sret %9, i8* %60, i64 %61)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  br label %77

72:                                               ; preds = %58
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  br label %77

77:                                               ; preds = %72, %65
  %78 = phi i64 [ %71, %65 ], [ %76, %72 ]
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %111, label %89

89:                                               ; preds = %77
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %103, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107, %96, %77
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @updateOffsetVal(%struct.TYPE_19__* %112, %struct.TYPE_22__* %9, i8* %113)
  br label %149

115:                                              ; preds = %107, %100
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %116
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  br label %131

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i64 [ %127, %125 ], [ %130, %128 ]
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = call i32 @GET_QINFO_ADDR(%struct.TYPE_20__* %140)
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @qTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %141, i64 %142, i64 %146)
  br label %148

148:                                              ; preds = %131
  br label %28

149:                                              ; preds = %111, %39
  ret i64 0
}

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i32 @moveToNextBlock(%struct.TYPE_19__*, i64, i32, i32) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i8* @getGenericDataBlock(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_20__*) #1

declare dso_local void @getBlockBasicInfo(%struct.TYPE_22__* sret, i8*, i64) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__*) #1

declare dso_local i32 @updateOffsetVal(%struct.TYPE_19__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qTrace(i8*, i32, i64, i64) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
