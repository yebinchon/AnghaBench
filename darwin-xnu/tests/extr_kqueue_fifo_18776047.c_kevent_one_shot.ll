; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_fifo_18776047.c_kevent_one_shot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_fifo_18776047.c_kevent_one_shot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.kevent = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ensure kq is valid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"kevent doing ONESHOT %s\00", align 1
@EVFILT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"ONESHOT kevent for fd %d, filter %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kevent_one_shot(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca [1 x %struct.kevent], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @T_QUIET, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @T_ASSERT_GE(i32 %12, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EVFILT_READ, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 @T_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [1 x %struct.kevent], [1 x %struct.kevent]* %9, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EV_ADD, align 4
  %24 = load i32, i32* @EV_ONESHOT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @EV_SET(%struct.kevent* %20, i32 %21, i32 %22, i32 %25, i32 0, i32 0, i32* null)
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [1 x %struct.kevent], [1 x %struct.kevent]* %9, i64 0, i64 0
  %29 = call i32 @kevent(i32 %27, %struct.kevent* %28, i32 1, i32* null, i32 0, %struct.timespec* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @T_QUIET, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @T_ASSERT_POSIX_ZERO(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @T_ASSERT_GE(i32, i32, i8*) #2

declare dso_local i32 @T_LOG(i8*, i8*) #2

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #2

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
