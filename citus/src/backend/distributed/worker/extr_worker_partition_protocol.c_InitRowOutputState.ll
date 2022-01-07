; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_InitRowOutputState.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_InitRowOutputState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@BinaryWorkerCopyFormat = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"cannot repartition into encoding caller cannot receive\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"WorkerRowOutputContext\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* ()* @InitRowOutputState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @InitRowOutputState() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = call i32 @palloc0(i32 4)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %1, align 8
  %11 = call i32 (...) @pg_get_client_encoding()
  store i32 %11, i32* %2, align 4
  %12 = call i32 (...) @GetDatabaseEncoding()
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @pg_database_encoding_max_length()
  store i32 %13, i32* %4, align 4
  %14 = call i8* @pstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i8* @pg_server_to_any(i8* %17, i32 %18, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @pstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @BinaryWorkerCopyFormat, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @PG_ENCODING_IS_CLIENT_ONLY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %0
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %0
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @CurrentMemoryContext, align 4
  %58 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %59 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %60 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %61 = call i32 @AllocSetContextCreateExtended(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = call i32 (...) @makeStringInfo()
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %67
}

declare dso_local i32 @palloc0(i32) #1

declare dso_local i32 @pg_get_client_encoding(...) #1

declare dso_local i32 @GetDatabaseEncoding(...) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @pg_server_to_any(i8*, i32, i32) #1

declare dso_local i64 @PG_ENCODING_IS_CLIENT_ONLY(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @AllocSetContextCreateExtended(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @makeStringInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
