; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_aclcheckAggregate.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_aclcheckAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @aclcheckAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aclcheckAggregate(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @InvalidOid, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @ACL_EXECUTE, align 4
  %15 = call i64 @pg_proc_aclcheck(i64 %12, i64 %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ACLCHECK_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @get_func_name(i64 %22)
  %24 = call i32 @aclcheck_error(i64 %20, i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %26

26:                                               ; preds = %25, %3
  ret void
}

declare dso_local i64 @pg_proc_aclcheck(i64, i64, i32) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_func_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
