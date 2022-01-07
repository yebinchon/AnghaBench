; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_LookupDistributionMethod.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_LookupDistributionMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ENUMOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid internal value for enum: %u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@DISTRIBUTE_BY_RANGE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid label for enum: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @LookupDistributionMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @LookupDistributionMethod(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %4, align 8
  store i8 0, i8* %5, align 1
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* @ENUMOID, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @ObjectIdGetDatum(i8* %8)
  %10 = call i32* @SearchSysCache1(i32 %7, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @HeapTupleIsValid(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @ereport(i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @GETSTRUCT(i32* %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %4, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @NameStr(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @NAMEDATALEN, align 4
  %29 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  store i8 %32, i8* %5, align 1
  br label %54

33:                                               ; preds = %19
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @NAMEDATALEN, align 4
  %36 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  store i8 %39, i8* %5, align 1
  br label %53

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @NAMEDATALEN, align 4
  %43 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8, i8* @DISTRIBUTE_BY_RANGE, align 1
  store i8 %46, i8* %5, align 1
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %45
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @ReleaseSysCache(i32* %55)
  %57 = load i8, i8* %5, align 1
  ret i8 %57
}

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
