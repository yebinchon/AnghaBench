; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/UserNotification/extr_KUNCUserNotifications.c_KUNCGetNotificationID.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/UserNotification/extr_KUNCUserNotifications.c_KUNCGetNotificationID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@UND_REPLY_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@IP_NULL = common dso_local global i64 0, align 8
@LockCompatGroup = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IKOT_UND_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KUNCGetNotificationID() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i64 @kalloc(i32 4)
  %3 = inttoptr i64 %2 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UND_REPLY_NULL, align 8
  %6 = icmp ne %struct.TYPE_4__* %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %0
  %8 = call i64 (...) @ipc_port_alloc_kernel()
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IP_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = call i32 @kfree(%struct.TYPE_4__* %17, i32 4)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UND_REPLY_NULL, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %1, align 8
  br label %37

20:                                               ; preds = %7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* @LCK_ATTR_NULL, align 4
  %24 = call i32 @lck_mtx_init(i32* %22, i32* @LockCompatGroup, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = ptrtoint %struct.TYPE_4__* %33 to i32
  %35 = load i32, i32* @IKOT_UND_REPLY, align 4
  %36 = call i32 @ipc_kobject_set(i64 %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20, %16
  br label %38

38:                                               ; preds = %37, %0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %40 = ptrtoint %struct.TYPE_4__* %39 to i32
  ret i32 %40
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
