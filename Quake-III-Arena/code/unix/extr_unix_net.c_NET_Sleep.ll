; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_Sleep.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_Sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i32 }

@ip_socket = common dso_local global i64 0, align 8
@com_dedicated = common dso_local global %struct.TYPE_2__* null, align 8
@stdin_active = external dso_local global i64, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @ip_socket, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_dedicated, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %32

13:                                               ; preds = %7
  %14 = call i32 @FD_ZERO(i32* %4)
  %15 = load i64, i64* @stdin_active, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @FD_SET(i64 0, i32* %4)
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i64, i64* @ip_socket, align 8
  %21 = call i32 @FD_SET(i64 %20, i32* %4)
  %22 = load i32, i32* %2, align 4
  %23 = sdiv i32 %22, 1000
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = srem i32 %25, 1000
  %27 = mul nsw i32 %26, 1000
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* @ip_socket, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @select(i64 %30, i32* %4, i32* null, i32* null, %struct.timeval* %3)
  br label %32

32:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
