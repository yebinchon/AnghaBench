; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_text_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_text_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"commpage text: ->init()\0A\00", align 1
@_PFZ32_SLIDE_RANGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@commpage_text32_handle = common dso_local global %struct.TYPE_10__* null, align 8
@_COMM_PAGE_TEXT_AREA_LENGTH = common dso_local global i32 0, align 4
@commpage_text32_entry = common dso_local global %struct.TYPE_12__* null, align 8
@commpage_text32_map = common dso_local global i32 0, align 4
@_COMM_PAGE32_TEXT_START = common dso_local global i64 0, align 8
@commpage_text32_location = common dso_local global i64 0, align 8
@_PFZ64_SLIDE_RANGE = common dso_local global i32 0, align 4
@commpage_text64_handle = common dso_local global %struct.TYPE_10__* null, align 8
@commpage_text64_entry = common dso_local global %struct.TYPE_11__* null, align 8
@commpage_text64_map = common dso_local global i32 0, align 4
@_COMM_PAGE64_TEXT_START = common dso_local global i64 0, align 8
@commpage_text64_location = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"commpage text: init() <-\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_commpage_text_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @random()
  %4 = load i32, i32* @_PFZ32_SLIDE_RANGE, align 4
  %5 = urem i32 %3, %4
  %6 = load i32, i32* @PAGE_SHIFT, align 4
  %7 = shl i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @_COMM_PAGE_TEXT_AREA_LENGTH, align 4
  %9 = call i32 @_vm_commpage_init(%struct.TYPE_10__** @commpage_text32_handle, i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @commpage_text32_handle, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** @commpage_text32_entry, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commpage_text32_entry, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @commpage_text32_map, align 4
  %19 = load i64, i64* @_COMM_PAGE32_TEXT_START, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* @commpage_text32_location, align 8
  %23 = call i32 (...) @random()
  %24 = load i32, i32* @_PFZ64_SLIDE_RANGE, align 4
  %25 = urem i32 %23, %24
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @_COMM_PAGE_TEXT_AREA_LENGTH, align 4
  %29 = call i32 @_vm_commpage_init(%struct.TYPE_10__** @commpage_text64_handle, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @commpage_text64_handle, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** @commpage_text64_entry, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @commpage_text64_entry, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @commpage_text64_map, align 4
  %39 = load i64, i64* @_COMM_PAGE64_TEXT_START, align 8
  %40 = load i32, i32* %1, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* @commpage_text64_location, align 8
  %43 = call i32 (...) @commpage_text_populate()
  %44 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @_vm_commpage_init(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @commpage_text_populate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
