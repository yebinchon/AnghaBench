; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_GetFunctionInfo.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_GetFunctionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not find function for data typeId %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetFunctionInfo(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i64 @palloc0(i32 4)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @GetDefaultOpClass(i64 %14, i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @get_opclass_family(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @get_opclass_input_type(i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @get_opfamily_proc(i64 %21, i64 %22, i64 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @InvalidOid, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = call i32 @ereport(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %29, %3
  %35 = load i64, i64* %11, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fmgr_info(i64 %35, i32* %36)
  %38 = load i32*, i32** %7, align 8
  ret i32* %38
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @GetDefaultOpClass(i64, i64) #1

declare dso_local i64 @get_opclass_family(i64) #1

declare dso_local i64 @get_opclass_input_type(i64) #1

declare dso_local i64 @get_opfamily_proc(i64, i64, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i32 @fmgr_info(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
