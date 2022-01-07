; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_kqtouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_kqtouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kevent_internal_s = type { i32 }
%struct.kqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_kqtouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_kqtouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.kqueue*
  store %struct.kqueue* %12, %struct.kqueue** %5, align 8
  %13 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %14 = call i32 @kqlock(%struct.kqueue* %13)
  %15 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.knote*, %struct.knote** %3, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.knote*, %struct.knote** %3, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %26 = call i32 @kqunlock(%struct.kqueue* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
