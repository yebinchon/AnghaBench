; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_get_agent_domain_and_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_get_agent_domain_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_wrapper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Invalid arguments for netagent_get_agent_domain_and_type %p %p\00", align 1
@netagent_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NETAGENT_DOMAINSIZE = common dso_local global i32 0, align 4
@NETAGENT_TYPESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Type requested for invalid netagent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_get_agent_domain_and_type(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netagent_wrapper*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @NETAGENTLOG(i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %13
  %23 = call i32 @lck_rw_lock_shared(i32* @netagent_lock)
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32 %24)
  store %struct.netagent_wrapper* %25, %struct.netagent_wrapper** %9, align 8
  %26 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %9, align 8
  %27 = icmp ne %struct.netagent_wrapper* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %9, align 8
  %32 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %36 = call i32 @memcpy(i8* %30, i32 %34, i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %9, align 8
  %39 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %43 = call i32 @memcpy(i8* %37, i32 %41, i32 %42)
  br label %47

44:                                               ; preds = %22
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = call i32 @NETAGENTLOG0(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %28
  %48 = call i32 @lck_rw_done(i32* @netagent_lock)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @NETAGENTLOG(i32, i8*, i8*, i8*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
