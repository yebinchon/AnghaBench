; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_kpc.c_sysctl_get_int.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_kpc.c_sysctl_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_oid*, %struct.sysctl_req*, i32)* @sysctl_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_get_int(%struct.sysctl_oid* %0, %struct.sysctl_req* %1, i32 %2) #0 {
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %4, align 8
  store %struct.sysctl_req* %1, %struct.sysctl_req** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %9 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %10 = call i32 @sysctl_handle_int(%struct.sysctl_oid* %8, i32* %6, i32 0, %struct.sysctl_req* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  ret i32 %11
}

declare dso_local i32 @sysctl_handle_int(%struct.sysctl_oid*, i32*, i32, %struct.sysctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
