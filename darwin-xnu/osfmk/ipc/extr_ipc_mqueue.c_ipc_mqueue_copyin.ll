; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@MACH_RCV_INVALID_NAME = common dso_local global i32 0, align 4
@IE_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@MACH_PORT_TYPE_PORT_SET = common dso_local global i32 0, align 4
@IPS_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_mqueue_copyin(i64 %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @is_read_lock(i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @is_active(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @is_read_unlock(i64 %21)
  %23 = load i32, i32* @MACH_RCV_INVALID_NAME, align 4
  store i32 %23, i32* %5, align 4
  br label %117

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_14__* @ipc_entry_lookup(i64 %25, i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %10, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IE_NULL, align 8
  %30 = icmp eq %struct.TYPE_14__* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @is_read_unlock(i64 %32)
  %34 = load i32, i32* @MACH_RCV_INVALID_NAME, align 4
  store i32 %34, i32* %5, align 4
  br label %117

35:                                               ; preds = %24
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %13, align 8
  %48 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IP_NULL, align 8
  %51 = icmp ne %struct.TYPE_13__* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %55 = call i32 @ip_lock(%struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %57 = call i32 @ip_active(%struct.TYPE_13__* %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @is_read_unlock(i64 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  store i32* %76, i32** %12, align 8
  br label %107

77:                                               ; preds = %35
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  %85 = load i64, i64* %11, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %14, align 8
  %87 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_13__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IPS_NULL, align 8
  %90 = icmp ne %struct.TYPE_13__* %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %94 = call i32 @ips_lock(%struct.TYPE_13__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %96 = call i32 @ips_active(%struct.TYPE_13__* %95)
  %97 = call i32 @assert(i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @is_read_unlock(i64 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i32* %101, i32** %12, align 8
  br label %106

102:                                              ; preds = %77
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @is_read_unlock(i64 %103)
  %105 = load i32, i32* @MACH_RCV_INVALID_NAME, align 4
  store i32 %105, i32* %5, align 4
  br label %117

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %45
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @io_reference(i64 %108)
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @io_unlock(i64 %110)
  %112 = load i64, i64* %11, align 8
  %113 = load i64*, i64** %9, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32**, i32*** %8, align 8
  store i32* %114, i32** %115, align 8
  %116 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %107, %102, %31, %20
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @is_read_lock(i64) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @is_read_unlock(i64) #1

declare dso_local %struct.TYPE_14__* @ipc_entry_lookup(i64, i32) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_13__*) #1

declare dso_local i32 @ips_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @ips_active(%struct.TYPE_13__*) #1

declare dso_local i32 @io_reference(i64) #1

declare dso_local i32 @io_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
