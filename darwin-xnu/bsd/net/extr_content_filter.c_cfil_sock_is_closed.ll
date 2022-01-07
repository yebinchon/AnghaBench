; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_is_closed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_is_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"so %llx\00", align 1
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@CFIF_SOCK_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_sock_is_closed(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call i64 @IS_UDP(%struct.socket* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.socket*, %struct.socket** %2, align 8
  %10 = call i32 @cfil_sock_udp_is_closed(%struct.socket* %9)
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.socket*, %struct.socket** %2, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.socket*, %struct.socket** %2, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %11
  br label %79

24:                                               ; preds = %18
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 @CFIL_LOG(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = call i32 @socket_lock_assert_owned(%struct.socket* %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %43, %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.socket*, %struct.socket** %2, align 8
  %38 = load %struct.socket*, %struct.socket** %2, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @cfil_dispatch_closed_event(%struct.socket* %37, %struct.TYPE_6__* %40, i32 %41)
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.socket*, %struct.socket** %2, align 8
  %48 = load %struct.socket*, %struct.socket** %2, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i64 @cfil_acquire_sockbuf(%struct.socket* %47, %struct.TYPE_6__* %50, i32 1)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.socket*, %struct.socket** %2, align 8
  %56 = load %struct.socket*, %struct.socket** %2, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @cfil_service_inject_queue(%struct.socket* %55, %struct.TYPE_6__* %58, i32 1)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.socket*, %struct.socket** %2, align 8
  %62 = call i32 @cfil_release_sockbuf(%struct.socket* %61, i32 1)
  %63 = load i32, i32* @CFIF_SOCK_CLOSED, align 4
  %64 = load %struct.socket*, %struct.socket** %2, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load %struct.socket*, %struct.socket** %2, align 8
  %71 = load %struct.socket*, %struct.socket** %2, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @cfil_flush_queues(%struct.socket* %70, %struct.TYPE_6__* %73)
  %75 = load %struct.socket*, %struct.socket** %2, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @CFIL_INFO_VERIFY(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %60, %23, %8
  ret void
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_is_closed(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i64 @cfil_dispatch_closed_event(%struct.socket*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @cfil_acquire_sockbuf(%struct.socket*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cfil_service_inject_queue(%struct.socket*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cfil_release_sockbuf(%struct.socket*, i32) #1

declare dso_local i32 @cfil_flush_queues(%struct.socket*, %struct.TYPE_6__*) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
