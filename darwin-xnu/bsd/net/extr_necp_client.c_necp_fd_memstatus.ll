; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_memstatus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_memstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i32 }

@PROC_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @necp_fd_memstatus(i64 %0, i32 %1, %struct.necp_fd_data* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.necp_fd_data*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.necp_fd_data* %2, %struct.necp_fd_data** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PROC_NULL, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.necp_fd_data*, %struct.necp_fd_data** %6, align 8
  %13 = icmp ne %struct.necp_fd_data* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
