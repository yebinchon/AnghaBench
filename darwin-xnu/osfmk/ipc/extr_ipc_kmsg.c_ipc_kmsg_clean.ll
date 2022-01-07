; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_clean.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_SEND = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_kmsg_clean(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @ipc_importance_clean(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @IO_VALID(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MACH_MSGH_BITS_REMOTE(i32 %23)
  %25 = call i32 @ipc_object_destroy_dest(i64 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @IO_VALID(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MACH_MSGH_BITS_LOCAL(i32 %37)
  %39 = call i32 @ipc_object_destroy(i64 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @IO_VALID(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @MACH_MSGH_BITS_VOUCHER(i32 %48)
  %50 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND, align 4
  %56 = call i32 @ipc_object_destroy(i64 %54, i32 %55)
  %57 = load i64, i64* @IP_NULL, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %47, %40
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 1
  %70 = bitcast %struct.TYPE_7__* %69 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 1
  %77 = bitcast %struct.TYPE_8__* %76 to i32*
  %78 = call i32 @ipc_kmsg_clean_body(%struct.TYPE_9__* %71, i32 %74, i32* %77)
  br label %79

79:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @ipc_importance_clean(%struct.TYPE_9__*) #1

declare dso_local i64 @IO_VALID(i64) #1

declare dso_local i32 @ipc_object_destroy_dest(i64, i32) #1

declare dso_local i32 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i32 @ipc_object_destroy(i64, i32) #1

declare dso_local i32 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_VOUCHER(i32) #1

declare dso_local i32 @ipc_kmsg_clean_body(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
