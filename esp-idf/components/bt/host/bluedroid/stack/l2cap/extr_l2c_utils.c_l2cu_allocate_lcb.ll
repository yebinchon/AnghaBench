; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_allocate_lcb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_allocate_lcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 (...)* }

@l2cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@LST_DISCONNECTED = common dso_local global i32 0, align 4
@HCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @l2cu_allocate_lcb(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 3), align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 0
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %105, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %110

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 14
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %104, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 11
  %24 = call i32 @btu_free_timer(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 10
  %27 = call i32 @btu_free_timer(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 9
  %30 = call i32 @btu_free_timer(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = call i32 @memset(%struct.TYPE_7__* %31, i32 0, i32 96)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BD_ADDR_LEN, align 4
  %38 = call i32 @memcpy(i32 %35, i32 %36, i32 %37)
  %39 = load i64, i64* @TRUE, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 14
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @LST_DISCONNECTED, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @HCI_INVALID_HANDLE, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 65535, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = bitcast %struct.TYPE_7__* %50 to i8*
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = bitcast %struct.TYPE_7__* %55 to i8*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = bitcast %struct.TYPE_7__* %60 to i8*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 2), align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 6
  store i64 %73, i64* %75, align 8
  %76 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %83 = call i32 @fixed_queue_new(i32 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %21
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 1), align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 1), align 4
  %92 = call i32 (...) @l2c_ble_link_adjust_allocation()
  br label %97

93:                                               ; preds = %21
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 0), align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 0), align 8
  %96 = call i32 (...) @l2c_link_adjust_allocation()
  br label %97

97:                                               ; preds = %93, %89
  %98 = call i32 @list_new(i32* null)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %4, align 8
  br label %111

104:                                              ; preds = %16
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 1
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %9, align 8
  br label %12

110:                                              ; preds = %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %112
}

declare dso_local i32 @btu_free_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @controller_get_interface(...) #1

declare dso_local i32 @fixed_queue_new(i32) #1

declare dso_local i32 @l2c_ble_link_adjust_allocation(...) #1

declare dso_local i32 @l2c_link_adjust_allocation(...) #1

declare dso_local i32 @list_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
