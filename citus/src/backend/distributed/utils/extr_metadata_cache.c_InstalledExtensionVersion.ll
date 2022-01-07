; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_InstalledExtensionVersion.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_InstalledExtensionVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExtensionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_extension_extname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@ExtensionNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_extension_extversion = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"citus extension version is null\00", align 1
@MetadataCacheMemoryContext = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"citus extension is not loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @InstalledExtensionVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @InstalledExtensionVersion() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = call i32 (...) @InitializeCaches()
  %12 = load i32, i32* @ExtensionRelationId, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32* @heap_open(i32 %12, i32 %13)
  store i32* %14, i32** %1, align 8
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_extension_extname, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_NAMEEQ, align 4
  %19 = call i32 @CStringGetDatum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @ExtensionNameIndexId, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %24 = call i32 @systable_beginscan(i32* %21, i32 %22, i32 1, i32* null, i32 1, i32* %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32* @systable_getnext(i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @HeapTupleIsValid(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %0
  store i32* null, i32** %6, align 8
  %31 = load i32, i32* @Anum_pg_extension_extversion, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @RelationGetDescr(i32* %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @heap_getattr(i32* %34, i32 %35, i32 %36, i32* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32*, i32** @MetadataCacheMemoryContext, align 8
  %48 = call i32* @MemoryContextSwitchTo(i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @DatumGetTextPP(i32 %49)
  %51 = call i8* @text_to_cstring(i32 %50)
  store i8* %51, i8** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @MemoryContextSwitchTo(i32* %52)
  br label %60

54:                                               ; preds = %0
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @systable_endscan(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @AccessShareLock, align 4
  %65 = call i32 @heap_close(i32* %63, i32 %64)
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i32 @InitializeCaches(...) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @RelationGetDescr(i32*) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i8* @text_to_cstring(i32) #1

declare dso_local i32 @DatumGetTextPP(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
