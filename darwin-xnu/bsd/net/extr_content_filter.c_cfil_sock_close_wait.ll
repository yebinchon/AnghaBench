; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_close_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_close_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.socket = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_5__ = type { i32* }
%struct.timespec = type { i32, i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"so %llx\00", align 1
@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"so %llx waiting\00", align 1
@cfil_close_wait_timeout = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CFIF_CLOSE_WAIT = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cfil_sock_close_wait\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"so %llx timed out %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_sock_close_wait(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call i64 @IS_UDP(%struct.socket* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.socket*, %struct.socket** %2, align 8
  %11 = call i32 @cfil_sock_udp_close_wait(%struct.socket* %10)
  br label %123

12:                                               ; preds = %1
  %13 = load %struct.socket*, %struct.socket** %2, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %12
  br label %123

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG_INFO, align 4
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %27)
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %34, align 8
  %36 = icmp ne i32* (%struct.socket*, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.socket*, %struct.socket** %2, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %41, align 8
  %43 = load %struct.socket*, %struct.socket** %2, align 8
  %44 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %45 = call i32* %42(%struct.socket* %43, i32 %44)
  store i32* %45, i32** %3, align 8
  br label %54

46:                                               ; preds = %25
  %47 = load %struct.socket*, %struct.socket** %2, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %46, %37
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %57 = call i32 @LCK_MTX_ASSERT(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %122, %54
  %59 = load %struct.socket*, %struct.socket** %2, align 8
  %60 = call i64 @cfil_filters_attached(%struct.socket* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %58
  %63 = load %struct.socket*, %struct.socket** %2, align 8
  %64 = load i32, i32* @SHUT_RDWR, align 4
  %65 = call i32 @cfil_sock_notify_shutdown(%struct.socket* %63, i32 %64)
  %66 = load %struct.socket*, %struct.socket** %2, align 8
  %67 = call i64 @cfil_filters_attached(%struct.socket* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %123

70:                                               ; preds = %62
  %71 = load i32, i32* @LOG_INFO, align 4
  %72 = load %struct.socket*, %struct.socket** %2, align 8
  %73 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %72)
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @cfil_close_wait_timeout, align 4
  %77 = sdiv i32 %76, 1000
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @cfil_close_wait_timeout, align 4
  %80 = srem i32 %79, 1000
  %81 = load i32, i32* @NSEC_PER_USEC, align 4
  %82 = mul nsw i32 %80, %81
  %83 = mul nsw i32 %82, 1000
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cfil_stats, i32 0, i32 1))
  %86 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %87 = load %struct.socket*, %struct.socket** %2, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  %93 = load %struct.socket*, %struct.socket** %2, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = ptrtoint %struct.TYPE_7__* %95 to i32
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @PSOCK, align 4
  %99 = load i32, i32* @PCATCH, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @msleep(i32 %96, i32* %97, i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.timespec* %4)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.socket*, %struct.socket** %2, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @LOG_NOTICE, align 4
  %111 = load %struct.socket*, %struct.socket** %2, align 8
  %112 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %111)
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %70
  %121 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cfil_stats, i32 0, i32 0))
  br label %123

122:                                              ; preds = %70
  br label %58

123:                                              ; preds = %9, %24, %120, %69, %58
  ret void
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_close_wait(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @cfil_filters_attached(%struct.socket*) #1

declare dso_local i32 @cfil_sock_notify_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
