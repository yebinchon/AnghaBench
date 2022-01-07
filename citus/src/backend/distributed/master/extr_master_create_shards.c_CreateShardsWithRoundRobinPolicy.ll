; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_create_shards.c_CreateShardsWithRoundRobinPolicy.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_create_shards.c_CreateShardsWithRoundRobinPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@NIL = common dso_local global i32* null, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"table \22%s\22 has already had shards created for it\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"shard_count must be positive\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"replication_factor must be positive\00", align 1
@REPLICATION_MODEL_STREAMING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"using replication factor %d with the streaming replication model is not supported\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"The table %s is marked as streaming replicated and the shard replication factor of streaming replicated tables must be 1.\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Use replication factor 1.\00", align 1
@HASH_TOKEN_COUNT = common dso_local global i32 0, align 4
@RowShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@CompareWorkerNodes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"replication_factor (%d) exceeds number of worker nodes (%d)\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Add more worker nodes or try again with a lower replication factor.\00", align 1
@INT32_MIN = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateShardsWithRoundRobinPolicy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %28 = load i32*, i32** @NIL, align 8
  store i32* %28, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load i32*, i32** @NIL, align 8
  store i32* %29, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_3__* @DistributedTableCacheEntry(i32 %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %16, align 8
  store i32 0, i32* %17, align 4
  %32 = load i32*, i32** @NIL, align 8
  store i32* %32, i32** %18, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CheckHashPartitionedTable(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @EnsureTableOwner(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ExclusiveLock, align 4
  %39 = call i32 @LockRelationOid(i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @LoadShardList(i32 %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** @NIL, align 8
  %44 = icmp ne i32* %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %4
  %46 = load i32, i32* %5, align 4
  %47 = call i8* @get_rel_name(i32 %46)
  store i8* %47, i8** %19, align 8
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %45, %4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %7, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @ereport(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @REPLICATION_MODEL_STREAMING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @get_rel_name(i32 %84)
  store i8* %85, i8** %20, align 8
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @errdetail(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  %93 = call i32 @errhint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %81, %78, %72
  %96 = load i32, i32* @HASH_TOKEN_COUNT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = call i32 (...) @DistNodeRelationId()
  %100 = load i32, i32* @RowShareLock, align 4
  %101 = call i32 @LockRelationOid(i32 %99, i32 %100)
  %102 = load i32, i32* @NoLock, align 4
  %103 = call i32* @DistributedTablePlacementNodeList(i32 %102)
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* @CompareWorkerNodes, align 4
  %106 = call i32* @SortList(i32* %104, i32 %105)
  store i32* %106, i32** %10, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @list_length(i32* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %95
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %117)
  %119 = call i32 @errhint(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  %120 = call i32 @ereport(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %112, %95
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %5, align 4
  %131 = call signext i8 @ShardStorageType(i32 %130)
  store i8 %131, i8* %9, align 1
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %180, %129
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %183

136:                                              ; preds = %132
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %11, align 4
  %139 = srem i32 %137, %138
  store i32 %139, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  %140 = load i32, i32* @INT32_MIN, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %146, 1
  %148 = add nsw i32 %145, %147
  store i32 %148, i32* %25, align 4
  %149 = call i32 (...) @GetNextShardId()
  store i32 %149, i32* %26, align 4
  %150 = load i32*, i32** @NIL, align 8
  store i32* %150, i32** %27, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %136
  %156 = load i32, i32* @INT32_MAX, align 4
  store i32 %156, i32* %25, align 4
  br label %157

157:                                              ; preds = %155, %136
  %158 = load i32, i32* %24, align 4
  %159 = call i32* @IntegerToText(i32 %158)
  store i32* %159, i32** %22, align 8
  %160 = load i32, i32* %25, align 4
  %161 = call i32* @IntegerToText(i32 %160)
  store i32* %161, i32** %23, align 8
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* @ExclusiveLock, align 4
  %164 = call i32 @LockShardDistributionMetadata(i32 %162, i32 %163)
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %26, align 4
  %167 = load i8, i8* %9, align 1
  %168 = load i32*, i32** %22, align 8
  %169 = load i32*, i32** %23, align 8
  %170 = call i32 @InsertShardRow(i32 %165, i32 %166, i8 signext %167, i32* %168, i32* %169)
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %26, align 4
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32* @InsertShardPlacementRows(i32 %171, i32 %172, i32* %173, i32 %174, i32 %175)
  store i32* %176, i32** %27, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = load i32*, i32** %27, align 8
  %179 = call i32* @list_concat(i32* %177, i32* %178)
  store i32* %179, i32** %18, align 8
  br label %180

180:                                              ; preds = %157
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %132

183:                                              ; preds = %132
  %184 = load i32, i32* %5, align 4
  %185 = load i32*, i32** %18, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @CreateShardsOnWorkers(i32 %184, i32* %185, i32 %186, i32 %187)
  ret void
}

declare dso_local %struct.TYPE_3__* @DistributedTableCacheEntry(i32) #1

declare dso_local i32 @CheckHashPartitionedTable(i32) #1

declare dso_local i32 @EnsureTableOwner(i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32* @LoadShardList(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32* @DistributedTablePlacementNodeList(i32) #1

declare dso_local i32* @SortList(i32*, i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local signext i8 @ShardStorageType(i32) #1

declare dso_local i32 @GetNextShardId(...) #1

declare dso_local i32* @IntegerToText(i32) #1

declare dso_local i32 @LockShardDistributionMetadata(i32, i32) #1

declare dso_local i32 @InsertShardRow(i32, i32, i8 signext, i32*, i32*) #1

declare dso_local i32* @InsertShardPlacementRows(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32 @CreateShardsOnWorkers(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
