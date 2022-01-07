; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_shardinterval_utils.c_FindShardIntervalIndex.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_shardinterval_utils.c_FindShardIntervalIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i32, i32*, i32** }

@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@INVALID_SHARD_INDEX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot find shard interval\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Hash of the partition column value does not fall into any shards.\00", align 1
@HASH_TOKEN_COUNT = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindShardIntervalIndex(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32**, i32*** %15, align 8
  store i32** %16, i32*** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 4
  store i8 %22, i8* %8, align 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %2
  %38 = phi i1 [ true, %2 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  store i32 %44, i32* %3, align 4
  br label %123

45:                                               ; preds = %37
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @SearchCachedShardInterval(i32 %59, i32** %60, i32 %61, i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %54
  br label %98

75:                                               ; preds = %51
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @DatumGetInt32(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @HASH_TOKEN_COUNT, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @INT32_MIN, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sle i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %75
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %75
  br label %98

98:                                               ; preds = %97, %74
  br label %121

99:                                               ; preds = %45
  %100 = load i8, i8* %8, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 1
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  store i32 0, i32* %11, align 4
  br label %120

110:                                              ; preds = %99
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = load i32**, i32*** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @SearchCachedShardInterval(i32 %115, i32** %116, i32 %117, i32* %118)
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %110, %105
  br label %121

121:                                              ; preds = %120, %98
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %43
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SearchCachedShardInterval(i32, i32**, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
