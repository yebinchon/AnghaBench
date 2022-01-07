; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_tprintf_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_tprintf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64 }
%struct.proc = type { i32 }

@P_CONTROLT = common dso_local global i32 0, align 4
@SESSION_NULL = common dso_local global %struct.session* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tprintf_open(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.session*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %5 = load %struct.proc*, %struct.proc** %3, align 8
  %6 = call %struct.session* @proc_session(%struct.proc* %5)
  store %struct.session* %6, %struct.session** %4, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @P_CONTROLT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.session*, %struct.session** %4, align 8
  %15 = getelementptr inbounds %struct.session, %struct.session* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.session*, %struct.session** %4, align 8
  %20 = ptrtoint %struct.session* %19 to i32
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %13, %1
  %22 = load %struct.session*, %struct.session** %4, align 8
  %23 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %24 = icmp ne %struct.session* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.session*, %struct.session** %4, align 8
  %27 = call i32 @session_rele(%struct.session* %26)
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.session* @proc_session(%struct.proc*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
