; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_service_pending_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_service_pending_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.cfil_entry* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfil_entry = type { %struct.cfe_buf, %struct.cfe_buf }
%struct.cfe_buf = type { i32, %struct.cfil_queue }
%struct.cfil_queue = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"so %llx kcunit %u outgoing %d\00", align 1
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32, i32)* @cfil_service_pending_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_service_pending_queue(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.cfil_entry*, align 8
  %15 = alloca %struct.cfe_buf*, align 8
  %16 = alloca %struct.cfil_queue*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, i32, i32, i32, ...) @CFIL_LOG(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = call i32 @socket_lock_assert_owned(%struct.socket* %24)
  %26 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %27 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %26, i32 0, i32 2
  %28 = load %struct.cfil_entry*, %struct.cfil_entry** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %28, i64 %31
  store %struct.cfil_entry* %32, %struct.cfil_entry** %14, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %37 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %36, i32 0, i32 1
  store %struct.cfe_buf* %37, %struct.cfe_buf** %15, align 8
  br label %41

38:                                               ; preds = %4
  %39 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %40 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %39, i32 0, i32 0
  store %struct.cfe_buf* %40, %struct.cfe_buf** %15, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %43 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %42, i32 0, i32 1
  store %struct.cfil_queue* %43, %struct.cfil_queue** %16, align 8
  %44 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %45 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cfil_queue*, %struct.cfil_queue** %16, align 8
  %48 = getelementptr inbounds %struct.cfil_queue, %struct.cfil_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %46, %49
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %118, %41
  %52 = load %struct.cfil_queue*, %struct.cfil_queue** %16, align 8
  %53 = call %struct.socket* @cfil_queue_first(%struct.cfil_queue* %52)
  store %struct.socket* %53, %struct.socket** %11, align 8
  %54 = icmp ne %struct.socket* %53, null
  br i1 %54, label %55, label %119

55:                                               ; preds = %51
  %56 = load %struct.socket*, %struct.socket** %11, align 8
  %57 = call i32 @cfil_data_length(%struct.socket* %56, i32* null, i32* null)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %119

64:                                               ; preds = %55
  %65 = load %struct.cfil_queue*, %struct.cfil_queue** %16, align 8
  %66 = load %struct.socket*, %struct.socket** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @cfil_queue_remove(%struct.cfil_queue* %65, %struct.socket* %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %90, %64
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.socket*, %struct.socket** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @cfil_data_filter(%struct.socket* %79, %struct.cfil_info* %80, i32 %81, i32 %82, %struct.socket* %83, i32 %84)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %74

93:                                               ; preds = %88, %74
  %94 = load i64, i64* %13, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %101 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.socket*, %struct.socket** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @cfil_queue_enqueue(i32* %102, %struct.socket* %103, i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @OSAddAtomic64(i32 %106, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cfil_stats, i32 0, i32 1))
  br label %117

108:                                              ; preds = %96
  %109 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %110 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.socket*, %struct.socket** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @cfil_queue_enqueue(i32* %111, %struct.socket* %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @OSAddAtomic64(i32 %115, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cfil_stats, i32 0, i32 0))
  br label %117

117:                                              ; preds = %108, %99
  br label %118

118:                                              ; preds = %117, %93
  br label %51

119:                                              ; preds = %63, %51
  %120 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %121 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %120)
  %122 = load i64, i64* %13, align 8
  %123 = trunc i64 %122 to i32
  ret i32 %123
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local %struct.socket* @cfil_queue_first(%struct.cfil_queue*) #1

declare dso_local i32 @cfil_data_length(%struct.socket*, i32*, i32*) #1

declare dso_local i32 @cfil_queue_remove(%struct.cfil_queue*, %struct.socket*, i32) #1

declare dso_local i64 @cfil_data_filter(%struct.socket*, %struct.cfil_info*, i32, i32, %struct.socket*, i32) #1

declare dso_local i32 @cfil_queue_enqueue(i32*, %struct.socket*, i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
