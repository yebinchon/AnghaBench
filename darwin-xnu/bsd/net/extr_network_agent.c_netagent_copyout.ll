; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_wrapper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@netagent_lock = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Requested netagent for nexus instance could not be found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Provided user buffer is too small (%u < %u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Copied agent content (error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_copyout(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netagent_wrapper*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @lck_rw_lock_shared(i32* @netagent_lock)
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32 %11)
  store %struct.netagent_wrapper* %12, %struct.netagent_wrapper** %8, align 8
  %13 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %8, align 8
  %14 = icmp eq %struct.netagent_wrapper* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @LOG_DEBUG, align 4
  %17 = call i32 @NETAGENTLOG0(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %7, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %8, align 8
  %21 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 4, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %9, align 8
  %33 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %51

35:                                               ; preds = %19
  %36 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %8, align 8
  %37 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @copyout(%struct.TYPE_2__* %37, i32 %38, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @LOG_ERR, align 4
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @LOG_DEBUG, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %28, %15
  %52 = call i32 @lck_rw_done(i32* @netagent_lock)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @copyout(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
