; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_tvservice_wait_for_reply.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_tvservice_wait_for_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@VCOS_FUNCTION = common dso_local global i64 0, align 8
@tvservice_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@tvservice_message_available_event = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"TV service got reply %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"TV service wait for reply failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @tvservice_wait_for_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvservice_wait_for_reply(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* @VCOS_FUNCTION, align 8
  %8 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %7)
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tvservice_client, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %16 = call i32 @vchi_msg_dequeue(i32 %12, i8* %13, i64 %14, i64* %6, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %9
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i64 @vcos_event_wait(i32* @tvservice_message_available_event)
  %22 = load i64, i64* @VCOS_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %9, label %26

26:                                               ; preds = %24
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %34

32:                                               ; preds = %26
  %33 = call i32 @vcos_log_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @vcos_log_trace(i8*, i64) #1

declare dso_local i32 @vchi_msg_dequeue(i32, i8*, i64, i64*, i32) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i32 @vcos_log_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
