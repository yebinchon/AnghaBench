; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_waitq_set__CALLING_PREPOST_HOOK__.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_waitq_set__CALLING_PREPOST_HOOK__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.kqworkq = type { i32 }
%struct.kqworkloop = type { i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQWQ_QOS_MANAGER = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQWL_BUCKET_STAYACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_set__CALLING_PREPOST_HOOK__(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca %struct.kqworkq*, align 8
  %9 = alloca %struct.kqworkloop*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.kqueue*
  store %struct.kqueue* %11, %struct.kqueue** %7, align 8
  %12 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %13 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KQ_WORKQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %20 = bitcast %struct.kqueue* %19 to %struct.kqworkq*
  store %struct.kqworkq* %20, %struct.kqworkq** %8, align 8
  %21 = load %struct.kqworkq*, %struct.kqworkq** %8, align 8
  %22 = load i32, i32* @KQWQ_QOS_MANAGER, align 4
  %23 = call i32 @kqworkq_request_help(%struct.kqworkq* %21, i32 %22)
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %26 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KQ_WORKLOOP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %33 = bitcast %struct.kqueue* %32 to %struct.kqworkloop*
  store %struct.kqworkloop* %33, %struct.kqworkloop** %9, align 8
  %34 = load %struct.kqworkloop*, %struct.kqworkloop** %9, align 8
  %35 = load i32, i32* @KQWL_BUCKET_STAYACTIVE, align 4
  %36 = call i32 @kqworkloop_request_help(%struct.kqworkloop* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  br label %38

38:                                               ; preds = %37, %18
  ret void
}

declare dso_local i32 @kqworkq_request_help(%struct.kqworkq*, i32) #1

declare dso_local i32 @kqworkloop_request_help(%struct.kqworkloop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
