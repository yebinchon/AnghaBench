; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_range_in_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_range_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*)* @necp_is_range_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_is_range_in_range(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = icmp eq %struct.sockaddr* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = icmp eq %struct.sockaddr* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = icmp eq %struct.sockaddr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %21 = icmp eq %struct.sockaddr* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %13, %4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %48

24:                                               ; preds = %19
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = call i32 @necp_addr_compare(%struct.sockaddr* %25, %struct.sockaddr* %26, i32 1)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %48

35:                                               ; preds = %30, %24
  %36 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %38 = call i32 @necp_addr_compare(%struct.sockaddr* %36, %struct.sockaddr* %37, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %41, %35
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %44, %33, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @necp_addr_compare(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
