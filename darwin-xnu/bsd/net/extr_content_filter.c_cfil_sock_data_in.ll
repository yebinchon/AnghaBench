; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_in.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.socket = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"so %llx drop set\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"so %llx control\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MT_OOBDATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"so %llx MSG_OOB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_data_in(%struct.socket* %0, %struct.sockaddr* %1, %struct.mbuf* %2, %struct.mbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = call i64 @IS_UDP(%struct.socket* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @cfil_sock_udp_handle_data(i32 %17, %struct.socket* %18, i32* null, %struct.sockaddr* %19, %struct.mbuf* %20, %struct.mbuf* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %89

24:                                               ; preds = %5
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %24
  store i32 0, i32* %6, align 4
  br label %89

37:                                               ; preds = %31
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = call i32 @socket_lock_assert_owned(%struct.socket* %38)
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CFIF_DROP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 @CFIL_LOG(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EPIPE, align 4
  store i32 %54, i32* %6, align 4
  br label %89

55:                                               ; preds = %37
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = icmp ne %struct.mbuf* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load %struct.socket*, %struct.socket** %7, align 8
  %61 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %60)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @CFIL_LOG(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cfil_stats, i32 0, i32 1))
  br label %65

65:                                               ; preds = %58, %55
  %66 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MT_OOBDATA, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @LOG_ERR, align 4
  %73 = load %struct.socket*, %struct.socket** %7, align 8
  %74 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %73)
  %75 = trunc i64 %74 to i32
  %76 = call i32 @CFIL_LOG(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cfil_stats, i32 0, i32 0))
  br label %78

78:                                               ; preds = %71, %65
  %79 = load %struct.socket*, %struct.socket** %7, align 8
  %80 = load %struct.socket*, %struct.socket** %7, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cfil_data_common(%struct.socket* %79, %struct.TYPE_4__* %82, i32 0, %struct.sockaddr* %83, %struct.mbuf* %84, %struct.mbuf* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %78, %48, %36, %16
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_handle_data(i32, %struct.socket*, i32*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_data_common(%struct.socket*, %struct.TYPE_4__*, i32, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
