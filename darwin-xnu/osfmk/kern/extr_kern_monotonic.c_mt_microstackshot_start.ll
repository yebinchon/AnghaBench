; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_microstackshot_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_microstackshot_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT_CORE_NFIXED = common dso_local global i32 0, align 4
@MT_MIN_FIXED_PERIOD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mt_microstackshots = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@mt_microstackshot_ctr = common dso_local global i32 0, align 4
@mt_microstackshot_pmi_handler = common dso_local global i32 0, align 4
@mt_microstackshot_ctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt_microstackshot_start(i32 %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MT_CORE_NFIXED, align 4
  %13 = icmp ult i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MT_MIN_FIXED_PERIOD, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %37

21:                                               ; preds = %4
  %22 = load i32, i32* @mt_microstackshots, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EBUSY, align 4
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* @mt_microstackshot_ctr, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* @mt_microstackshot_pmi_handler, align 4
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** @mt_microstackshot_ctx, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @mt_microstackshot_start_arch(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* @mt_microstackshots, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %34, %24, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mt_microstackshot_start_arch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
