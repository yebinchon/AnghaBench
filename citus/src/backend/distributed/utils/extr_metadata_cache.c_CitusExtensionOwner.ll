; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusExtensionOwner.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusExtensionOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MetadataCache = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@InvalidOid = common dso_local global i64 0, align 8
@ExtensionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_extension_extname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@ExtensionNameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"citus extension needs to be owned by superuser\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"citus extension not loaded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CitusExtensionOwner() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MetadataCache, i32 0, i32 0), align 8
  %8 = load i64, i64* @InvalidOid, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MetadataCache, i32 0, i32 0), align 8
  store i64 %11, i64* %1, align 8
  br label %66

12:                                               ; preds = %0
  %13 = load i32, i32* @ExtensionRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32* @heap_open(i32 %13, i32 %14)
  store i32* %15, i32** %2, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_extension_extname, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_NAMEEQ, align 4
  %20 = call i32 @CStringGetDatum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @ExtensionNameIndexId, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %25 = call i32 @systable_beginscan(i32* %22, i32 %23, i32 1, i32* null, i32 1, i32* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @systable_getnext(i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @HeapTupleIsValid(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %12
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @GETSTRUCT(i32* %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @superuser_arg(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MetadataCache, i32 0, i32 0), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MetadataCache, i32 0, i32 0), align 8
  %51 = call i32 @OidIsValid(i64 %50)
  %52 = call i32 @Assert(i32 %51)
  br label %59

53:                                               ; preds = %12
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @AccessShareLock, align 4
  %64 = call i32 @heap_close(i32* %62, i32 %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MetadataCache, i32 0, i32 0), align 8
  store i64 %65, i64* %1, align 8
  br label %66

66:                                               ; preds = %59, %10
  %67 = load i64, i64* %1, align 8
  ret i64 %67
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @superuser_arg(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
