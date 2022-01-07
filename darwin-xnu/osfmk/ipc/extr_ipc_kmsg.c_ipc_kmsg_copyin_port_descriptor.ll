; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyin_port_descriptor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyin_port_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_SEND_KERNEL = common dso_local global i32 0, align 4
@kGUARD_EXC_SEND_INVALID_RIGHT = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_RIGHT = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_RECEIVE = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_CIRCULAR = common dso_local global i32 0, align 4
@MACH_MSG_PORT_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipc_kmsg_copyin_port_descriptor(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3, %struct.TYPE_11__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %16, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load volatile i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i64 @ipc_object_copyin_type(i64 %26)
  store i64 %27, i64* %18, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load volatile i64, i64* %29, align 8
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %19, align 8
  %32 = call i64 @MACH_PORT_VALID(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %7
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i64 @ipc_object_copyin(i32 %35, i64 %36, i64 %37, i64* %20)
  store i64 %38, i64* %21, align 8
  %39 = load i64, i64* %21, align 8
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MACH_SEND_KERNEL, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* @kGUARD_EXC_SEND_INVALID_RIGHT, align 4
  %51 = call i32 @mach_port_guard_exception(i64 %49, i32 0, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* @MACH_SEND_INVALID_RIGHT, align 4
  %54 = load i32*, i32** %15, align 8
  store i32 %53, i32* %54, align 4
  store i32* null, i32** %8, align 8
  br label %93

55:                                               ; preds = %34
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* @MACH_MSG_TYPE_PORT_RECEIVE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @ipc_port_check_circularity(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @MACH_MSGH_BITS_CIRCULAR, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %59, %55
  %73 = load i64, i64* %20, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store volatile i64 %73, i64* %75, align 8
  br label %81

76:                                               ; preds = %7
  %77 = load i64, i64* %19, align 8
  %78 = call i64 @CAST_MACH_NAME_TO_PORT(i64 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store volatile i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i64, i64* %18, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store volatile i64 %82, i64* %84, align 8
  %85 = load i32, i32* @MACH_MSG_PORT_DESCRIPTOR, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store volatile i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store volatile i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 1
  %92 = bitcast %struct.TYPE_10__* %91 to i32*
  store i32* %92, i32** %8, align 8
  br label %93

93:                                               ; preds = %81, %52
  %94 = load i32*, i32** %8, align 8
  ret i32* %94
}

declare dso_local i64 @ipc_object_copyin_type(i64) #1

declare dso_local i64 @MACH_PORT_VALID(i64) #1

declare dso_local i64 @ipc_object_copyin(i32, i64, i64, i64*) #1

declare dso_local i32 @mach_port_guard_exception(i64, i32, i32, i32) #1

declare dso_local i64 @ipc_port_check_circularity(i64, i64) #1

declare dso_local i64 @CAST_MACH_NAME_TO_PORT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
