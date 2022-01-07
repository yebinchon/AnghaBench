; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_notify_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_notify_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32* }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"so %llx how %d\00", align 1
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_sock_notify_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call i64 @IS_UDP(%struct.socket* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cfil_sock_udp_notify_shutdown(%struct.socket* %11, i32 %12, i32 0, i32 0)
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %14
  br label %66

27:                                               ; preds = %21
  %28 = load i32, i32* @LOG_INFO, align 4
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CFIL_LOG(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = call i32 @socket_lock_assert_owned(%struct.socket* %34)
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %63, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SHUT_WR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @cfil_dispatch_disconnect_event(%struct.socket* %45, i32* %48, i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SHUT_RD, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.socket*, %struct.socket** %3, align 8
  %57 = load %struct.socket*, %struct.socket** %3, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @cfil_dispatch_disconnect_event(%struct.socket* %56, i32* %59, i32 %60, i32 1)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %36

66:                                               ; preds = %10, %26, %36
  ret void
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_notify_shutdown(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_dispatch_disconnect_event(%struct.socket*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
