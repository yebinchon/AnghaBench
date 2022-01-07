; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_finalize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }

@TURNSTILE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Trying to free an active port. port %p\00", align 1
@IPR_NULL = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_finalize(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i64 @port_send_turnstile(%struct.TYPE_11__* %8)
  %10 = load i64, i64* @TURNSTILE_NULL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = call i64 @ipc_port_rcv_turnstile(%struct.TYPE_11__* %14)
  %16 = load i64, i64* @TURNSTILE_NULL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call i64 @ip_active(%struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IPR_NULL, align 8
  %29 = icmp ne %struct.TYPE_12__* %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = call i32 @it_requests_free(i32 %34, %struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IPR_NULL, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  br label %40

40:                                               ; preds = %30, %26
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @ipc_mqueue_deinit(i32* %42)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @port_send_turnstile(%struct.TYPE_11__*) #1

declare dso_local i64 @ipc_port_rcv_turnstile(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_11__*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @it_requests_free(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ipc_mqueue_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
