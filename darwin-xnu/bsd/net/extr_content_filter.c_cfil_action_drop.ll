; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_action_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_action_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32* }
%struct.cfil_info = type { i32, %struct.cfil_entry* }
%struct.cfil_entry = type { i32, i32* }
%struct.proc = type { i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CFEF_CFIL_DETACHED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"so %llx detached %u\00", align 1
@CFIF_CLOSE_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"so %llx waking\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_action_drop(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfil_entry*, align 8
  %9 = alloca %struct.proc*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %18 = icmp eq %struct.cfil_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  br label %103

20:                                               ; preds = %16
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = call i32 @socket_lock_assert_owned(%struct.socket* %21)
  %23 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %24 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %23, i32 0, i32 1
  %25 = load %struct.cfil_entry*, %struct.cfil_entry** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %25, i64 %28
  store %struct.cfil_entry* %29, %struct.cfil_entry** %8, align 8
  %30 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %31 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %103

35:                                               ; preds = %20
  %36 = load i32, i32* @CFIF_DROP, align 4
  %37 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %38 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %41, %struct.proc** %9, align 8
  %42 = load %struct.socket*, %struct.socket** %4, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %35
  %47 = load %struct.proc*, %struct.proc** %9, align 8
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER, align 4
  %50 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i64 @sosetdefunct(%struct.proc* %47, %struct.socket* %48, i32 %51, i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.proc*, %struct.proc** %9, align 8
  %58 = load %struct.socket*, %struct.socket** %4, align 8
  %59 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER, align 4
  %60 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL, align 4
  %61 = or i32 %59, %60
  %62 = call i64 @sodefunct(%struct.proc* %57, %struct.socket* %58, i32 %61)
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %56, %46
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* @CFEF_CFIL_DETACHED, align 4
  %66 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %67 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @LOG_INFO, align 4
  %71 = load %struct.socket*, %struct.socket** %4, align 8
  %72 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %71)
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %78 = call i32 @cfil_flush_queues(%struct.socket* %76, %struct.cfil_info* %77)
  %79 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %80 = icmp ne %struct.cfil_info* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %64
  %82 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %83 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load %struct.socket*, %struct.socket** %4, align 8
  %90 = call i64 @cfil_filters_attached(%struct.socket* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @LOG_INFO, align 4
  %94 = load %struct.socket*, %struct.socket** %4, align 8
  %95 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %94)
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %99 = ptrtoint %struct.cfil_info* %98 to i32
  %100 = call i32 @wakeup(i32 %99)
  br label %101

101:                                              ; preds = %92, %88
  br label %102

102:                                              ; preds = %101, %81, %64
  br label %103

103:                                              ; preds = %102, %34, %19
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  ret i32 %105
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i64 @sosetdefunct(%struct.proc*, %struct.socket*, i32, i32) #1

declare dso_local i64 @sodefunct(%struct.proc*, %struct.socket*, i32) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_flush_queues(%struct.socket*, %struct.cfil_info*) #1

declare dso_local i64 @cfil_filters_attached(%struct.socket*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
