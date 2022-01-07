; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifaddr_withroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifaddr_withroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ifaddr_withroute(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %9 = icmp eq %struct.sockaddr* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %12 = icmp eq %struct.sockaddr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32* null, i32** %4, align 8
  br label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = call i32* @ifa_ifwithroute(i32 %15, %struct.sockaddr* %16, %struct.sockaddr* %17)
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32*, i32** %4, align 8
  ret i32* %20
}

declare dso_local i32* @ifa_ifwithroute(i32, %struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
