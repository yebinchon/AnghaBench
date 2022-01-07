; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_LocalTableEmpty.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_LocalTableEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32** }
%struct.TYPE_5__ = type { i32 }

@SPI_OK_CONNECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not connect to SPI manager\00", align 1
@SELECT_EXIST_QUERY = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"execution was not successful \22%s\22\00", align 1
@SPI_processed = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @LocalTableEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LocalTableEmpty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @get_rel_namespace(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @get_namespace_name(i32 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i8* @get_rel_name(i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @quote_qualified_identifier(i8* %23, i8* %24)
  store i8* %25, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = call %struct.TYPE_5__* (...) @makeStringInfo()
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @IsDistributedTable(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @AssertArg(i32 %31)
  %33 = call i32 (...) @SPI_connect()
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SPI_OK_CONNECT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = load i32, i32* @SELECT_EXIST_QUERY, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @appendStringInfo(%struct.TYPE_5__* %42, i32 %43, i8* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @SPI_execute(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SPI_OK_SELECT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load i32, i32* @ERROR, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %41
  %62 = load i32, i32* @SPI_processed, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @SPI_getbinval(i32* %73, i32 %76, i32 %77, i32* %13)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @DatumGetBool(i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = call i32 (...) @SPI_finish()
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @makeStringInfo(...) #1

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @SPI_execute(i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SPI_getbinval(i32*, i32, i32, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
