; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_RangeVarCallbackForReindexIndex.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_RangeVarCallbackForReindexIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ReindexIndexCallbackState = type { i64, i64 }

@ShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not an index\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_INDEX = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i8*)* @RangeVarCallbackForReindexIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForReindexIndex(%struct.TYPE_3__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.ReindexIndexCallbackState*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.ReindexIndexCallbackState*
  store %struct.ReindexIndexCallbackState* %14, %struct.ReindexIndexCallbackState** %10, align 8
  %15 = load i32, i32* @ShareLock, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @OidIsValid(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %25 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @UnlockRelationOid(i64 %26, i32 %27)
  %29 = load i64, i64* @InvalidOid, align 8
  %30 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %31 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %23, %19, %4
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @OidIsValid(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %94

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = call signext i8 @get_rel_relkind(i64 %38)
  store i8 %39, i8* %9, align 1
  %40 = load i8, i8* %9, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %94

43:                                               ; preds = %37
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @RELKIND_INDEX, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %55, %49, %43
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (...) @GetUserId()
  %67 = call i32 @pg_class_ownercheck(i64 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %71 = load i32, i32* @OBJECT_INDEX, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @aclcheck_error(i32 %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @IndexGetRelation(i64 %81, i32 1)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @OidIsValid(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @LockRelationOid(i64 %87, i32 %88)
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %92 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %80
  br label %94

94:                                               ; preds = %36, %42, %93, %76
  ret void
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local signext i8 @get_rel_relkind(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
