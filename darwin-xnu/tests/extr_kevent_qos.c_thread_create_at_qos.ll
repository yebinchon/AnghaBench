; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_thread_create_at_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_thread_create_at_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIO_DARWIN_ROLE = common dso_local global i32 0, align 4
@PRIO_DARWIN_ROLE_UI_FOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set priority failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pthread created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8* (i8*)*)* @thread_create_at_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_create_at_qos(i64 %0, i8* (i8*)* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8* (i8*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* (i8*)* %1, i8* (i8*)** %4, align 8
  %9 = load i32, i32* @PRIO_DARWIN_ROLE, align 4
  %10 = load i32, i32* @PRIO_DARWIN_ROLE_UI_FOCAL, align 4
  %11 = call i32 @setpriority(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = call i32 @pthread_attr_init(i32* %7)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @pthread_attr_set_qos_class_np(i32* %7, i64 %18, i32 0)
  %20 = load i8* (i8*)*, i8* (i8*)** %4, align 8
  %21 = call i32 @pthread_create(i32* %6, i32* %7, i8* (i8*)* %20, i32* null)
  %22 = call i32 @T_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pthread_get_qos_class_np(i32 %23, i64* %5, i32* null)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @T_EXPECT_EQ(i64 %25, i64 %26, i32* null)
  ret void
}

declare dso_local i32 @setpriority(i32, i32, i32) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_set_qos_class_np(i32*, i64, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i32*) #1

declare dso_local i32 @pthread_get_qos_class_np(i32, i64*, i32*) #1

declare dso_local i32 @T_EXPECT_EQ(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
