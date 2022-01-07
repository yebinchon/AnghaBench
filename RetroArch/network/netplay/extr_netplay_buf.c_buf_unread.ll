; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_buf_unread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_buf_unread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.socket_buffer*)* @buf_unread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buf_unread(%struct.socket_buffer* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.socket_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.socket_buffer* %0, %struct.socket_buffer** %3, align 8
  %5 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %22, %12
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %2, align 8
  br label %42

34:                                               ; preds = %1
  %35 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.socket_buffer*, %struct.socket_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %34, %28
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
