; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_make_port_of_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_make_port_of_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @iokit_make_port_of_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iokit_make_port_of_type(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @IP_NULL, align 8
  store i64 %11, i64* %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @iokit_port_for_object(i32* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @ipc_port_make_send(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @iokit_release_port(i64 %21)
  br label %25

23:                                               ; preds = %12
  %24 = load i64, i64* @IP_NULL, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @iokit_remove_reference(i32* %26)
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %25, %10
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @iokit_port_for_object(i32*, i32) #1

declare dso_local i64 @ipc_port_make_send(i64) #1

declare dso_local i32 @iokit_release_port(i64) #1

declare dso_local i32 @iokit_remove_reference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
