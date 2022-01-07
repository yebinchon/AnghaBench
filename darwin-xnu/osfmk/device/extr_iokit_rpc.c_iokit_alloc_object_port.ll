; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_alloc_object_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_alloc_object_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP_NULL = common dso_local global i64 0, align 8
@gIOKitPortCount = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iokit_alloc_object_port(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IP_NULL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %33

13:                                               ; preds = %7
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ipc_kobject_set(i64 %14, i32 %16, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @ip_lock(i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ipc_port_make_sonce_locked(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ipc_port_nsrequest(i64 %23, i32 1, i64 %24, i64* %5)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @IP_NULL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @gIOKitPortCount, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @gIOKitPortCount, align 4
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i64, i64* @FALSE, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %7, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  ret i64 %37
}

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

declare dso_local i32 @ip_lock(i64) #1

declare dso_local i64 @ipc_port_make_sonce_locked(i64) #1

declare dso_local i32 @ipc_port_nsrequest(i64, i32, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
