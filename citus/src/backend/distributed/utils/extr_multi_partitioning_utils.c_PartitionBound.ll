; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_PartitionBound.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_PartitionBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Anum_pg_class_relpartbound = common dso_local global i32 0, align 4
@pg_get_expr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @PartitionBound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PartitionBound(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @RELOID, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @SearchSysCache1(i32 %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @HeapTupleIsValid(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @GETSTRUCT(i32* %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ReleaseSysCache(i32* %27)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %49

29:                                               ; preds = %19
  %30 = load i32, i32* @RELOID, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @Anum_pg_class_relpartbound, align 4
  %33 = call i32 @SysCacheGetAttr(i32 %30, i32* %31, i32 %32, i32* %7)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* @pg_get_expr, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ObjectIdGetDatum(i32 %41)
  %43 = call i32 @DirectFunctionCall2(i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @TextDatumGetCString(i32 %44)
  store i8* %45, i8** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ReleaseSysCache(i32* %46)
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %29, %26
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
