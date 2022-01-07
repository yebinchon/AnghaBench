; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_SupportFunctionForColumn.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_SupportFunctionForColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"data type %s has no default operator class for specified partition method\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Partition column types must have a default operator class defined.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i32)* @SupportFunctionForColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SupportFunctionForColumn(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* @InvalidOid, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @InvalidOid, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @InvalidOid, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @GetDefaultOpClass(i64 %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @InvalidOid, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @format_type_be(i64 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @errdatatype(i64 %31)
  %33 = call i32 @errdetail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %25, i32 %33)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @get_opclass_family(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @get_opclass_input_type(i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @get_opfamily_proc(i64 %40, i64 %41, i64 %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local i64 @GetDefaultOpClass(i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @errdatatype(i64) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @get_opclass_family(i64) #1

declare dso_local i64 @get_opclass_input_type(i64) #1

declare dso_local i64 @get_opfamily_proc(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
