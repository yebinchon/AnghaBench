; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttytouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttytouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i32 }
%struct.kevent_internal_s = type { i32, i32 }
%struct.tty = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_ttytouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_ttytouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = call %struct.tty* @tty_lock_from_knote(%struct.knote* %8)
  store %struct.tty* %9, %struct.tty** %6, align 8
  %10 = load %struct.tty*, %struct.tty** %6, align 8
  %11 = icmp ne %struct.tty* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.knote*, %struct.knote** %4, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = call i32 @knote_set_error(%struct.knote* %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %18 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %23 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.knote*, %struct.knote** %4, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = load %struct.tty*, %struct.tty** %6, align 8
  %34 = call i32 @filt_tty_common(%struct.knote* %32, %struct.tty* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %16
  %36 = load %struct.tty*, %struct.tty** %6, align 8
  %37 = call i32 @tty_unlock(%struct.tty* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.tty* @tty_lock_from_knote(%struct.knote*) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @filt_tty_common(%struct.knote*, %struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
