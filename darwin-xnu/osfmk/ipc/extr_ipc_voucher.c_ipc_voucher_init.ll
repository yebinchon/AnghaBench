; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@task_max = common dso_local global i32 0, align 4
@thread_max = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ipc vouchers\00", align 1
@ipc_voucher_zone = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ipc voucher attr controls\00", align 1
@ipc_voucher_attr_control_zone = common dso_local global i32 0, align 4
@IV_HASH_BUCKETS = common dso_local global i64 0, align 8
@ivht_bucket = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_voucher_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @task_max, align 4
  %5 = load i32, i32* @thread_max, align 4
  %6 = add nsw i32 %4, %5
  %7 = mul nsw i32 %6, 2
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32 @zinit(i32 4, i32 %12, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* @ipc_voucher_zone, align 4
  %14 = load i32, i32* @ipc_voucher_zone, align 4
  %15 = load i32, i32* @Z_NOENCRYPT, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @zone_change(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @zinit(i32 4, i32 %21, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* @ipc_voucher_attr_control_zone, align 4
  %23 = load i32, i32* @ipc_voucher_attr_control_zone, align 4
  %24 = load i32, i32* @Z_NOENCRYPT, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @zone_change(i32 %23, i32 %24, i32 %25)
  %27 = call i32 (...) @ivht_lock_init()
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %37, %0
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @IV_HASH_BUCKETS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @ivht_bucket, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @queue_init(i32* %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %28

40:                                               ; preds = %28
  %41 = call i32 (...) @ivgt_lock_init()
  ret void
}

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i32 @ivht_lock_init(...) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @ivgt_lock_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
