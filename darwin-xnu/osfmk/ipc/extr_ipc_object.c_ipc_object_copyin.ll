; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_copyin(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ipc_right_lookup_write(i32 %15, i32 %16, %struct.TYPE_6__** %10)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @KERN_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %5, align 8
  br label %66

23:                                               ; preds = %4
  %24 = load i64, i64* @IP_NULL, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @ipc_right_copyin(i32 %25, i32 %26, %struct.TYPE_6__* %27, i32 %28, i32 %29, i32* %30, i64* %11, i64* %12, i32* %14)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IE_BITS_TYPE(i32 %34)
  %36 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = call i32 @ipc_entry_dealloc(i32 %39, i32 %40, %struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @is_write_unlock(i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @IP_NULL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @ip_release(i64 %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @IP_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ipc_notify_port_deleted(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56, %52
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %64, %21
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @ipc_right_lookup_write(i32, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @ipc_right_copyin(i32, i32, %struct.TYPE_6__*, i32, i32, i32*, i64*, i64*, i32*) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ipc_entry_dealloc(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @ip_release(i64) #1

declare dso_local i32 @ipc_notify_port_deleted(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
