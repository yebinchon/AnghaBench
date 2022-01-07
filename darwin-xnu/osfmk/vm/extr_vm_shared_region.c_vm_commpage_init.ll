; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"commpage: -> init()\0A\00", align 1
@commpage32_handle = common dso_local global %struct.TYPE_10__* null, align 8
@_COMM_PAGE32_AREA_LENGTH = common dso_local global i32 0, align 4
@commpage32_entry = common dso_local global %struct.TYPE_12__* null, align 8
@commpage32_map = common dso_local global i32 0, align 4
@commpage64_handle = common dso_local global %struct.TYPE_10__* null, align 8
@_COMM_PAGE64_AREA_LENGTH = common dso_local global i32 0, align 4
@commpage64_entry = common dso_local global %struct.TYPE_11__* null, align 8
@commpage64_map = common dso_local global i32 0, align 4
@__commpage_setup = common dso_local global i32 0, align 4
@__system_power_source = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"commpage: init() <-\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_commpage_init() #0 {
  %1 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @_COMM_PAGE32_AREA_LENGTH, align 4
  %3 = call i32 @_vm_commpage_init(%struct.TYPE_10__** @commpage32_handle, i32 %2)
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @commpage32_handle, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** @commpage32_entry, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commpage32_entry, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @commpage32_map, align 4
  %13 = load i32, i32* @_COMM_PAGE64_AREA_LENGTH, align 4
  %14 = call i32 @_vm_commpage_init(%struct.TYPE_10__** @commpage64_handle, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @commpage64_handle, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** @commpage64_entry, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @commpage64_entry, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @commpage64_map, align 4
  %24 = call i32 (...) @commpage_populate()
  store i32 1, i32* @__commpage_setup, align 4
  %25 = load i64, i64* @__system_power_source, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %0
  %28 = call i32 @post_sys_powersource_internal(i32 0, i32 1)
  br label %29

29:                                               ; preds = %27, %0
  %30 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i32 @_vm_commpage_init(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @commpage_populate(...) #1

declare dso_local i32 @post_sys_powersource_internal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
