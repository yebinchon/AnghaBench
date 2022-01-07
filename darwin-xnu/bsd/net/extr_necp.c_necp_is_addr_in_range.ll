; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_addr_in_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_addr_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*)* @necp_is_addr_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_is_addr_in_range(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = icmp eq %struct.sockaddr* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = icmp eq %struct.sockaddr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = icmp eq %struct.sockaddr* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %14
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = call i32 @necp_addr_compare(%struct.sockaddr* %20, %struct.sockaddr* %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %25, %19
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = call i32 @necp_addr_compare(%struct.sockaddr* %31, %struct.sockaddr* %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %36, %30
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39, %28, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @necp_addr_compare(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
