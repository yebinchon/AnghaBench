; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_trigger.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.netagent_trigger_args = type { i32, i64 }
%struct.netagent_wrapper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"uap == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Incorrect length (got %llu, expected %lu)\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"copyin error (%d)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Requested netagent UUID is empty\00", align 1
@netagent_lock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Requested netagent UUID is not registered\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NETAGENT_FLAG_USER_ACTIVATED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Requested netagent UUID is not eligible for triggering\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@NETAGENT_FLAG_ACTIVE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Requested netagent UUID is already active\00", align 1
@NETAGENT_TRIGGER_FLAG_USER = common dso_local global i32 0, align 4
@NETAGENT_MESSAGE_TYPE_TRIGGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Triggered netagent (error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_trigger(%struct.proc* %0, %struct.netagent_trigger_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.netagent_trigger_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netagent_wrapper*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.netagent_trigger_args* %1, %struct.netagent_trigger_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.netagent_trigger_args*, %struct.netagent_trigger_args** %6, align 8
  %12 = icmp eq %struct.netagent_trigger_args* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = call i32 @NETAGENTLOG0(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %109

17:                                               ; preds = %3
  %18 = load %struct.netagent_trigger_args*, %struct.netagent_trigger_args** %6, align 8
  %19 = getelementptr inbounds %struct.netagent_trigger_args, %struct.netagent_trigger_args* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.netagent_trigger_args*, %struct.netagent_trigger_args** %6, align 8
  %24 = getelementptr inbounds %struct.netagent_trigger_args, %struct.netagent_trigger_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.netagent_trigger_args*, %struct.netagent_trigger_args** %6, align 8
  %31 = getelementptr inbounds %struct.netagent_trigger_args, %struct.netagent_trigger_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 4)
  %34 = load i32, i32* @ERANGE, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %22
  %36 = load %struct.netagent_trigger_args*, %struct.netagent_trigger_args** %6, align 8
  %37 = getelementptr inbounds %struct.netagent_trigger_args, %struct.netagent_trigger_args* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @copyin(i64 %38, i32 %39, i32 4)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @uuid_is_null(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = call i32 @NETAGENTLOG0(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %109

57:                                               ; preds = %49
  %58 = call i32 @lck_rw_lock_shared(i32* @netagent_lock)
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32 %59)
  store %struct.netagent_wrapper* %60, %struct.netagent_wrapper** %10, align 8
  %61 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %10, align 8
  %62 = icmp eq %struct.netagent_wrapper* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = call i32 @NETAGENTLOG0(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @ENOENT, align 4
  store i32 %66, i32* %9, align 4
  br label %106

67:                                               ; preds = %57
  %68 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %10, align 8
  %69 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NETAGENT_FLAG_USER_ACTIVATED, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* @LOG_ERR, align 4
  %77 = call i32 @NETAGENTLOG0(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @ENOTSUP, align 4
  store i32 %78, i32* %9, align 4
  br label %106

79:                                               ; preds = %67
  %80 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %10, align 8
  %81 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NETAGENT_FLAG_ACTIVE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @LOG_INFO, align 4
  %89 = call i32 @NETAGENTLOG0(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %106

90:                                               ; preds = %79
  %91 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %10, align 8
  %92 = load %struct.proc*, %struct.proc** %5, align 8
  %93 = load i32, i32* @NETAGENT_TRIGGER_FLAG_USER, align 4
  %94 = load i32, i32* @NETAGENT_MESSAGE_TYPE_TRIGGER, align 4
  %95 = call i32 @netagent_send_trigger(%struct.netagent_wrapper* %91, %struct.proc* %92, i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @LOG_ERR, align 4
  br label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @LOG_INFO, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %87, %75, %63
  %107 = call i32 @lck_rw_done(i32* @netagent_lock)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %53, %43, %28, %13
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @copyin(i64, i32, i32) #1

declare dso_local i64 @uuid_is_null(i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32) #1

declare dso_local i32 @netagent_send_trigger(%struct.netagent_wrapper*, %struct.proc*, i32, i32) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
