; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_process.c_mac_proc_check_inherit_ipc_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_process.c_mac_proc_check_inherit_ipc_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.vnode = type { i32 }

@proc_check_inherit_ipc_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_proc_check_inherit_ipc_ports(%struct.proc* %0, %struct.vnode* %1, i32 %2, %struct.vnode* %3, i32 %4, %struct.vnode* %5) #0 {
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vnode* %3, %struct.vnode** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.vnode* %5, %struct.vnode** %12, align 8
  %14 = load i32, i32* @proc_check_inherit_ipc_ports, align 4
  %15 = load %struct.proc*, %struct.proc** %7, align 8
  %16 = load %struct.vnode*, %struct.vnode** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.vnode*, %struct.vnode** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.vnode*, %struct.vnode** %12, align 8
  %21 = call i32 @MAC_CHECK(i32 %14, %struct.proc* %15, %struct.vnode* %16, i32 %17, %struct.vnode* %18, i32 %19, %struct.vnode* %20)
  %22 = load i32, i32* %13, align 4
  ret i32 %22
}

declare dso_local i32 @MAC_CHECK(i32, %struct.proc*, %struct.vnode*, i32, %struct.vnode*, i32, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
