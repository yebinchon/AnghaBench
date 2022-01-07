; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_alloc_socket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_alloc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32*, %struct.netconn* }
%struct.netconn = type { i32 }

@netsocket_sem = common dso_local global i32 0, align 4
@NUM_SOCKETS = common dso_local global i64 0, align 8
@sockets = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netconn*)* @alloc_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_socket(%struct.netconn* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca i64, align 8
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  %5 = load i32, i32* @netsocket_sem, align 4
  %6 = call i32 @LWP_SemWait(i32 %5)
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @NUM_SOCKETS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  %16 = load %struct.netconn*, %struct.netconn** %15, align 8
  %17 = icmp ne %struct.netconn* %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %11
  %19 = load %struct.netconn*, %struct.netconn** %3, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  store %struct.netconn* %19, %struct.netconn** %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @netsocket_sem, align 4
  %49 = call i32 @LWP_SemPost(i32 %48)
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %58

51:                                               ; preds = %11
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %7

55:                                               ; preds = %7
  %56 = load i32, i32* @netsocket_sem, align 4
  %57 = call i32 @LWP_SemPost(i32 %56)
  store i64 -1, i64* %2, align 8
  br label %58

58:                                               ; preds = %55, %18
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local i32 @LWP_SemPost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
