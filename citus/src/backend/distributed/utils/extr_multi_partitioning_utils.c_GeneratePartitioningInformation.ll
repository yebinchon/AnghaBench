; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GeneratePartitioningInformation.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GeneratePartitioningInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a parent table\00", align 1
@pg_get_partkeydef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GeneratePartitioningInformation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @PartitionedTable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i8* @get_rel_name(i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = call i32 @ereport(i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @pg_get_partkeydef, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @DirectFunctionCall1(i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @TextDatumGetCString(i32 %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i32 @PartitionedTable(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
