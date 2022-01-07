; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_copy_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_copy_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@IP_DEAD = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ipc_port_copy_send(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @IP_VALID(%struct.TYPE_10__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %2, align 8
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @ip_lock(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i64 @ip_active(%struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @ip_reference(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  br label %32

30:                                               ; preds = %10
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IP_DEAD, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %4, align 8
  br label %32

32:                                               ; preds = %30, %16
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @ip_unlock(%struct.TYPE_10__* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %2, align 8
  br label %36

36:                                               ; preds = %32, %8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %37
}

declare dso_local i32 @IP_VALID(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_reference(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
