; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_port_name_to_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_port_name_to_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i32 0, align 4
@IV_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_port_name_to_voucher(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @MACH_PORT_VALID(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = call i32 (...) @current_space()
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ipc_port_translate_send(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @KERN_SUCCESS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @IV_NULL, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @convert_port_to_voucher(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ip_unlock(i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @IV_NULL, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %19, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @ipc_port_translate_send(i32, i32, i32*) #1

declare dso_local i32 @current_space(...) #1

declare dso_local i32 @convert_port_to_voucher(i32) #1

declare dso_local i32 @ip_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
