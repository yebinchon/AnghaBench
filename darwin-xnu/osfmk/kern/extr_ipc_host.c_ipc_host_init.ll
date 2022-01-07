; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_ipc_host_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_ipc_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i64 }

@realhost = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@host_notify_lock_grp = common dso_local global i32 0, align 4
@host_notify_lock_attr = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ipc_host_init\00", align 1
@IKOT_HOST_SECURITY = common dso_local global i32 0, align 4
@HOST_SECURITY_PORT = common dso_local global i32 0, align 4
@IKOT_HOST = common dso_local global i32 0, align 4
@HOST_PORT = common dso_local global i32 0, align 4
@IKOT_HOST_PRIV = common dso_local global i32 0, align 4
@HOST_PRIV_PORT = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@pset0 = common dso_local global i32 0, align 4
@master_processor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_host_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @lck_mtx_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @realhost, i32 0, i32 1), i32* @host_notify_lock_grp, i32* @host_notify_lock_attr)
  %4 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @IP_NULL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* @IKOT_HOST_SECURITY, align 4
  %13 = call i32 @ipc_kobject_set(i64 %11, i32 ptrtoint (%struct.TYPE_5__* @realhost to i32), i32 %12)
  %14 = load i32, i32* @HOST_SECURITY_PORT, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ipc_port_make_send(i64 %15)
  %17 = call i32 @kernel_set_special_port(%struct.TYPE_5__* @realhost, i32 %14, i32 %16)
  %18 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @IP_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %10
  %25 = load i64, i64* %1, align 8
  %26 = load i32, i32* @IKOT_HOST, align 4
  %27 = call i32 @ipc_kobject_set(i64 %25, i32 ptrtoint (%struct.TYPE_5__* @realhost to i32), i32 %26)
  %28 = load i32, i32* @HOST_PORT, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ipc_port_make_send(i64 %29)
  %31 = call i32 @kernel_set_special_port(%struct.TYPE_5__* @realhost, i32 %28, i32 %30)
  %32 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @IP_NULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i64, i64* %1, align 8
  %40 = load i32, i32* @IKOT_HOST_PRIV, align 4
  %41 = call i32 @ipc_kobject_set(i64 %39, i32 ptrtoint (%struct.TYPE_5__* @realhost to i32), i32 %40)
  %42 = load i32, i32* @HOST_PRIV_PORT, align 4
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @ipc_port_make_send(i64 %43)
  %45 = call i32 @kernel_set_special_port(%struct.TYPE_5__* @realhost, i32 %42, i32 %44)
  %46 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %63, %38
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i64, i64* @IP_NULL, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @realhost, i32 0, i32 0), align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %52, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @realhost, i32 0, i32 0), align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %47

66:                                               ; preds = %47
  %67 = call i32 @ipc_pset_init(i32* @pset0)
  %68 = call i32 @ipc_pset_enable(i32* @pset0)
  %69 = load i32, i32* @master_processor, align 4
  %70 = call i32 @ipc_processor_init(i32 %69)
  %71 = load i32, i32* @master_processor, align 4
  %72 = call i32 @ipc_processor_enable(i32 %71)
  ret void
}

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32*) #1

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

declare dso_local i32 @kernel_set_special_port(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ipc_port_make_send(i64) #1

declare dso_local i32 @ipc_pset_init(i32*) #1

declare dso_local i32 @ipc_pset_enable(i32*) #1

declare dso_local i32 @ipc_processor_init(i32) #1

declare dso_local i32 @ipc_processor_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
