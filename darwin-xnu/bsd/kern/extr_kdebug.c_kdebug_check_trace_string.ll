; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_check_trace_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_check_trace_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDBG_EVENTID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@STR_ID_SIG_MASK = common dso_local global i32 0, align 4
@g_str_id_signature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kdebug_check_trace_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdebug_check_trace_string(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @kdebug_validate_debugid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EPERM, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @STR_ID_SIG_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @g_str_id_signature, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %17, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @kdebug_validate_debugid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
