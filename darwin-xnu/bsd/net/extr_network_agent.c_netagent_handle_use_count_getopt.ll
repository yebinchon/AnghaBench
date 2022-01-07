; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_handle_use_count_getopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_handle_use_count_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to find session\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No payload received\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Buffer length is invalid (%lu)\00", align 1
@netagent_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Session has no agent registered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_handle_use_count_getopt(%struct.netagent_session* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.netagent_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netagent_session* %0, %struct.netagent_session** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.netagent_session*, %struct.netagent_session** %4, align 8
  %10 = icmp eq %struct.netagent_session* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @NETAGENTLOG0(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %7, align 4
  br label %53

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @NETAGENTLOG0(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %53

22:                                               ; preds = %15
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @NETAGENTLOG(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %53

32:                                               ; preds = %22
  %33 = call i32 @lck_rw_lock_shared(i32* @netagent_lock)
  %34 = load %struct.netagent_session*, %struct.netagent_session** %4, align 8
  %35 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp eq %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = call i32 @NETAGENTLOG0(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %7, align 4
  %42 = call i32 @lck_rw_done(i32* @netagent_lock)
  br label %53

43:                                               ; preds = %32
  %44 = load %struct.netagent_session*, %struct.netagent_session** %4, align 8
  %45 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = call i32 @lck_rw_done(i32* @netagent_lock)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @memcpy(i32* %50, i32* %8, i32 4)
  %52 = load i64*, i64** %6, align 8
  store i64 4, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %38, %26, %18, %11
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i64) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
