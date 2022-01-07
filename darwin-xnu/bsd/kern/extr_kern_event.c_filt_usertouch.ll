; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_usertouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_usertouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64, i32 }
%struct.kevent_internal_s = type { i32, i32 }

@NOTE_FFCTRLMASK = common dso_local global i32 0, align 4
@NOTE_FFLAGSMASK = common dso_local global i32 0, align 4
@NOTE_TRIGGER = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_usertouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_usertouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %7 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %8 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NOTE_FFCTRLMASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %13 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NOTE_FFLAGSMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %35 [
    i32 129, label %18
    i32 131, label %19
    i32 128, label %25
    i32 130, label %31
  ]

18:                                               ; preds = %2
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.knote*, %struct.knote** %3, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.knote*, %struct.knote** %3, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.knote*, %struct.knote** %3, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %2, %31, %25, %19, %18
  %36 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %37 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.knote*, %struct.knote** %3, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %42 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NOTE_TRIGGER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i64, i64* @FILTER_ACTIVE, align 8
  %49 = load %struct.knote*, %struct.knote** %3, align 8
  %50 = getelementptr inbounds %struct.knote, %struct.knote* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.knote*, %struct.knote** %3, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
