; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_assign_nexus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_assign_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot assign nexus from NULL session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Session has no agent\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Client assignment failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Agent assigned nexus properties to client\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_assign_nexus(i64 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netagent_session*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.netagent_session*
  store %struct.netagent_session* %13, %struct.netagent_session** %10, align 8
  %14 = load %struct.netagent_session*, %struct.netagent_session** %10, align 8
  %15 = icmp eq %struct.netagent_session* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = call i32 @NETAGENTLOG0(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.netagent_session*, %struct.netagent_session** %10, align 8
  %22 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = call i32 @NETAGENTLOG0(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.netagent_session*, %struct.netagent_session** %10, align 8
  %31 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @necp_assign_client_result(i32 %35, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @LOG_DEBUG, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @LOG_ERR, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @NETAGENTLOG(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %29
  %56 = load i32, i32* @LOG_DEBUG, align 4
  %57 = call i32 @NETAGENTLOG0(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %50, %25, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @necp_assign_client_result(i32, i32, i8*, i64) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
