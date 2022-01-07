; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_merge_protocol.c_RemoveJobSchema.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_merge_protocol.c_RemoveJobSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@NAMESPACENAME = common dso_local global i32 0, align 4
@Anum_pg_namespace_oid = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@DROP_CASCADE = common dso_local global i32 0, align 4
@PERFORM_DELETION_INTERNAL = common dso_local global i32 0, align 4
@PERFORM_DELETION_QUIETLY = common dso_local global i32 0, align 4
@PERFORM_DELETION_SKIP_ORIGINAL = common dso_local global i32 0, align 4
@PERFORM_DELETION_SKIP_EXTENSIONS = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"schema \22%s\22 does not exist, skipping\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveJobSchema(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CStringGetDatum(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @InvalidOid, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @NAMESPACENAME, align 4
  %13 = load i32, i32* @Anum_pg_namespace_oid, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GetSysCacheOid1Compat(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @OidIsValid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (...) @GetUserId()
  %23 = call i32 @pg_namespace_ownercheck(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %28 = load i32, i32* @OBJECT_SCHEMA, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @aclcheck_error(i32 %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* @NamespaceRelationId, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @DROP_CASCADE, align 4
  %40 = load i32, i32* @PERFORM_DELETION_INTERNAL, align 4
  %41 = load i32, i32* @PERFORM_DELETION_QUIETLY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PERFORM_DELETION_SKIP_ORIGINAL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PERFORM_DELETION_SKIP_EXTENSIONS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @performDeletion(%struct.TYPE_6__* %5, i32 %39, i32 %46)
  %48 = call i32 (...) @CommandCounterIncrement()
  %49 = load i32, i32* @DROP_RESTRICT, align 4
  %50 = call i32 @performDeletion(%struct.TYPE_6__* %5, i32 %49, i32 0)
  %51 = call i32 (...) @CommandCounterIncrement()
  br label %59

52:                                               ; preds = %1
  %53 = load i32, i32* @DEBUG2, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %33
  ret void
}

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @GetSysCacheOid1Compat(i32, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pg_namespace_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @performDeletion(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
