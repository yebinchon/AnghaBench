; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_apply_qos_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_apply_qos_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i8*, i8* }
%struct.kqueue = type { i32 }
%struct.kqworkq = type { i32 }
%struct.kqworkloop = type { i32 }

@KN_QUEUED = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KQ_WORKQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, i8*)* @knote_apply_qos_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_apply_qos_override(%struct.knote* %0, i8* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.knote*, %struct.knote** %3, align 8
  %7 = getelementptr inbounds %struct.knote, %struct.knote* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KN_QUEUED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.knote*, %struct.knote** %3, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.knote*, %struct.knote** %3, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @KN_SUPPRESSED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.knote*, %struct.knote** %3, align 8
  %25 = call %struct.kqueue* @knote_get_kq(%struct.knote* %24)
  store %struct.kqueue* %25, %struct.kqueue** %5, align 8
  %26 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %27 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KQ_WORKQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %34 = bitcast %struct.kqueue* %33 to %struct.kqworkq*
  %35 = load %struct.knote*, %struct.knote** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @kqworkq_update_override(%struct.kqworkq* %34, %struct.knote* %35, i8* %36)
  br label %43

38:                                               ; preds = %23
  %39 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %40 = bitcast %struct.kqueue* %39 to %struct.kqworkloop*
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @kqworkloop_update_override(%struct.kqworkloop* %40, i8* %41)
  br label %43

43:                                               ; preds = %38, %32
  br label %48

44:                                               ; preds = %2
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.knote*, %struct.knote** %3, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqworkq_update_override(%struct.kqworkq*, %struct.knote*, i8*) #1

declare dso_local i32 @kqworkloop_update_override(%struct.kqworkloop*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
