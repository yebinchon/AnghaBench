; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_handle_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i64 }
%struct.cfil_hash_entry = type { %struct.cfil_info*, i32 }
%struct.cfil_info = type { i32 }

@cfil_active_count = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CFIL: UDP no active filter\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CFIL: UDP failed to get control unit\00", align 1
@NECP_MASK_USERSPACE_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CFIL: UDP user space only\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"CFIL: Falied to create UDP flow\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@MT_OOBDATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"so %llx MSG_OOB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_udp_handle_data(i32 %0, %struct.socket* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.mbuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cfil_hash_entry*, align 8
  %19 = alloca %struct.cfil_info*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.socket* %1, %struct.socket** %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store %struct.mbuf* %4, %struct.mbuf** %13, align 8
  store %struct.mbuf* %5, %struct.mbuf** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.cfil_hash_entry* null, %struct.cfil_hash_entry** %18, align 8
  store %struct.cfil_info* null, %struct.cfil_info** %19, align 8
  %20 = load %struct.socket*, %struct.socket** %10, align 8
  %21 = call i32 @socket_lock_assert_owned(%struct.socket* %20)
  %22 = load i64, i64* @cfil_active_count, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load i32, i32* @LOG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 3))
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %8, align 4
  br label %109

29:                                               ; preds = %7
  %30 = load %struct.socket*, %struct.socket** %10, align 8
  %31 = call i32 @necp_socket_get_content_filter_control_unit(%struct.socket* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @LOG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %8, align 4
  br label %109

38:                                               ; preds = %29
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @NECP_MASK_USERSPACE_ONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @LOG_DEBUG, align 4
  %45 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 2))
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %109

48:                                               ; preds = %38
  %49 = load %struct.socket*, %struct.socket** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %54 = call %struct.cfil_hash_entry* @cfil_sock_udp_get_flow(%struct.socket* %49, i32 %50, i32 %51, %struct.sockaddr* %52, %struct.sockaddr* %53)
  store %struct.cfil_hash_entry* %54, %struct.cfil_hash_entry** %18, align 8
  %55 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %18, align 8
  %56 = icmp eq %struct.cfil_hash_entry* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %18, align 8
  %59 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %58, i32 0, i32 0
  %60 = load %struct.cfil_info*, %struct.cfil_info** %59, align 8
  %61 = icmp eq %struct.cfil_info* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %48
  %63 = load i32, i32* @LOG_ERR, align 4
  %64 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EPIPE, align 4
  store i32 %65, i32* %8, align 4
  br label %109

66:                                               ; preds = %57
  %67 = call i32 (...) @net_uptime()
  %68 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %18, align 8
  %69 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %18, align 8
  %71 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %70, i32 0, i32 0
  %72 = load %struct.cfil_info*, %struct.cfil_info** %71, align 8
  store %struct.cfil_info* %72, %struct.cfil_info** %19, align 8
  %73 = load %struct.cfil_info*, %struct.cfil_info** %19, align 8
  %74 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CFIF_DROP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @EPIPE, align 4
  store i32 %80, i32* %8, align 4
  br label %109

81:                                               ; preds = %66
  %82 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %83 = icmp ne %struct.mbuf* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 1))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MT_OOBDATA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = load %struct.socket*, %struct.socket** %10, align 8
  %95 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %94)
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 0))
  br label %99

99:                                               ; preds = %92, %86
  %100 = load %struct.socket*, %struct.socket** %10, align 8
  %101 = load %struct.cfil_info*, %struct.cfil_info** %19, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @cfil_data_common(%struct.socket* %100, %struct.cfil_info* %101, i32 %102, %struct.sockaddr* %103, %struct.mbuf* %104, %struct.mbuf* %105, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %99, %79, %62, %43, %34, %24
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, ...) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @necp_socket_get_content_filter_control_unit(%struct.socket*) #1

declare dso_local %struct.cfil_hash_entry* @cfil_sock_udp_get_flow(%struct.socket*, i32, i32, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @net_uptime(...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_data_common(%struct.socket*, %struct.cfil_info*, i32, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
