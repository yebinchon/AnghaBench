; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_post_msg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_event_data = type { %struct.TYPE_2__*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.kev_msg* }
%struct.kev_msg = type { %struct.TYPE_2__*, i8*, i8*, i32, i32, i32 }

@ctl_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_SYSTEM_CLASS = common dso_local global i32 0, align 4
@KEV_CTL_SUBCLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @ctl_post_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_post_msg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctl_event_data, align 8
  %6 = alloca %struct.kev_msg, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @ctl_mtx, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %9 = call i32 @lck_mtx_assert(i32 %7, i32 %8)
  %10 = call i32 @bzero(%struct.kev_msg* %6, i32 40)
  %11 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %12 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 5
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @KEV_SYSTEM_CLASS, align 4
  %14 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @KEV_CTL_SUBCLASS, align 4
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = bitcast %struct.ctl_event_data* %5 to %struct.kev_msg*
  %20 = call i32 @bzero(%struct.kev_msg* %19, i32 40)
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds %struct.ctl_event_data, %struct.ctl_event_data* %5, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = bitcast %struct.ctl_event_data* %5 to %struct.kev_msg*
  %24 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.kev_msg* %23, %struct.kev_msg** %27, align 8
  %28 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 40, i32* %31, align 8
  %32 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = call i32 @kev_post_msg(%struct.kev_msg* %6)
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
