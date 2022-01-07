; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_buf_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_buf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sockbuf = type { i32, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@cfil_sbtrim = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@CFIF_RETRY_INJECT_OUT = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CFIF_RETRY_INJECT_IN = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"so %llx outgoing %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_sock_buf_update(%struct.sockbuf* %0) #0 {
  %2 = alloca %struct.sockbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %2, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %7 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %6, i32 0, i32 1
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = call i64 @IS_UDP(%struct.socket* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %14 = call i32 @cfil_sock_udp_buf_update(%struct.sockbuf* %13)
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %15
  br label %91

28:                                               ; preds = %22
  %29 = load i32, i32* @cfil_sbtrim, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %91

32:                                               ; preds = %28
  %33 = load %struct.socket*, %struct.socket** %5, align 8
  %34 = call i32 @socket_lock_assert_owned(%struct.socket* %33)
  %35 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SB_RECV, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CFIF_RETRY_INJECT_OUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %91

51:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  %52 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 1))
  br label %65

53:                                               ; preds = %32
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CFIF_RETRY_INJECT_IN, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %91

63:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  %64 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 0))
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i32, i32* @LOG_NOTICE, align 4
  %67 = load %struct.socket*, %struct.socket** %5, align 8
  %68 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %67)
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CFIL_LOG(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @cfil_acquire_sockbuf(%struct.socket* %72, %struct.TYPE_5__* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load %struct.socket*, %struct.socket** %5, align 8
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @cfil_service_inject_queue(%struct.socket* %81, %struct.TYPE_5__* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %65
  %88 = load %struct.socket*, %struct.socket** %5, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @cfil_release_sockbuf(%struct.socket* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %62, %50, %31, %27, %12
  ret void
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_buf_update(%struct.sockbuf*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_acquire_sockbuf(%struct.socket*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cfil_service_inject_queue(%struct.socket*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cfil_release_sockbuf(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
