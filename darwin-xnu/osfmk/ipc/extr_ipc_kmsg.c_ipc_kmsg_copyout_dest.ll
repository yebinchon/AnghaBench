; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_dest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@MACH_PORT_DEAD = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_kmsg_copyout_dest(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @MACH_MSGH_BITS_REMOTE(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @MACH_MSGH_BITS_LOCAL(i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @MACH_MSGH_BITS_VOUCHER(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @IO_VALID(i64 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = call i32 @ipc_importance_assert_clean(%struct.TYPE_9__* %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @io_lock(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @io_active(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @ipc_object_copyout_dest(i32 %58, i64 %59, i64 %60, i32* %12)
  br label %68

62:                                               ; preds = %2
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @io_unlock(i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @io_release(i64 %65)
  %67 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @IO_VALID(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @ipc_object_destroy(i64 %73, i64 %74)
  %76 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %76, i32* %13, align 4
  br label %80

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @CAST_MACH_PORT_TO_NAME(i64 %78)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @IO_VALID(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64, i64* @IP_NULL, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @ipc_object_destroy(i64 %93, i64 %94)
  %96 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %84, %80
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @MACH_MSGH_BITS_SET(i64 %98, i64 %99, i64 %100, i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i8* %108, i8** %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i8* %114, i8** %118, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %97
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 1
  %133 = bitcast %struct.TYPE_7__* %132 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %15, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 1
  %140 = bitcast %struct.TYPE_8__* %139 to i32*
  %141 = call i32 @ipc_kmsg_clean_body(%struct.TYPE_9__* %134, i32 %137, i32* %140)
  br label %142

142:                                              ; preds = %128, %97
  ret void
}

declare dso_local i64 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_VOUCHER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i32 @ipc_importance_assert_clean(%struct.TYPE_9__*) #1

declare dso_local i32 @io_lock(i64) #1

declare dso_local i64 @io_active(i64) #1

declare dso_local i32 @ipc_object_copyout_dest(i32, i64, i64, i32*) #1

declare dso_local i32 @io_unlock(i64) #1

declare dso_local i32 @io_release(i64) #1

declare dso_local i32 @ipc_object_destroy(i64, i64) #1

declare dso_local i32 @CAST_MACH_PORT_TO_NAME(i64) #1

declare dso_local i32 @MACH_MSGH_BITS_SET(i64, i64, i64, i32) #1

declare dso_local i8* @CAST_MACH_NAME_TO_PORT(i32) #1

declare dso_local i32 @ipc_kmsg_clean_body(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
