; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_get_reply_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_get_reply_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i64* }
%struct.TYPE_3__ = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"msg hdr\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reply port valid\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mach_port_type\00", align 1
@MACH_PORT_TYPE_SEND_ONCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"send once received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kevent_qos_s*)* @get_reply_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reply_port(%struct.kevent_qos_s* %0) #0 {
  %2 = alloca %struct.kevent_qos_s*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kevent_qos_s* %0, %struct.kevent_qos_s** %2, align 8
  %7 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %2, align 8
  %8 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %3, align 8
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = call i32 @T_ASSERT_NOTNULL(%struct.TYPE_3__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @T_QUIET, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MACH_PORT_VALID(i32 %21)
  %23 = call i32 @T_ASSERT_TRUE(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @mach_task_self()
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mach_port_type(i32 %24, i32 %25, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @T_QUIET, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @T_QUIET, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @T_ASSERT_TRUE(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @T_ASSERT_NOTNULL(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @T_ASSERT_TRUE(i32, i8*) #1

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @mach_port_type(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
