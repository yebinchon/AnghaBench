; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_filter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { %struct.cfil_entry* }
%struct.cfil_entry = type { i32*, %struct.cfe_buf, %struct.cfe_buf }
%struct.cfe_buf = type { i32 }
%struct.mbuf = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"so %llx kcunit %u outgoing %d\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cfil_data_service_ctl_q() error %d\00", align 1
@EJUSTRETURN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"return %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_data_filter(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3, %struct.mbuf* %4, i32 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.cfil_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.cfil_entry*, align 8
  %15 = alloca %struct.cfe_buf*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %17)
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %22)
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = call i32 @socket_lock_assert_owned(%struct.socket* %24)
  %26 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %27 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %26, i32 0, i32 0
  %28 = load %struct.cfil_entry*, %struct.cfil_entry** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %28, i64 %31
  store %struct.cfil_entry* %32, %struct.cfil_entry** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %37 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %36, i32 0, i32 2
  store %struct.cfe_buf* %37, %struct.cfe_buf** %15, align 8
  br label %41

38:                                               ; preds = %6
  %39 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %40 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %39, i32 0, i32 1
  store %struct.cfe_buf* %40, %struct.cfe_buf** %15, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %43 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i64 0, i64* %13, align 8
  br label %75

47:                                               ; preds = %41
  %48 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %49 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %48, i32 0, i32 0
  %50 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @cfil_queue_enqueue(i32* %49, %struct.mbuf* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @OSAddAtomic64(i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 1))
  br label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @OSAddAtomic64(i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.socket*, %struct.socket** %7, align 8
  %63 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @cfil_data_service_ctl_q(%struct.socket* %62, %struct.cfil_info* %63, i32 %64, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i64, i64* %13, align 8
  %72 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i64, i64* @EJUSTRETURN, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %73, %46
  %76 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %77 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %76)
  %78 = load i32, i32* @LOG_INFO, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_queue_enqueue(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i64 @cfil_data_service_ctl_q(%struct.socket*, %struct.cfil_info*, i32, i32) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
