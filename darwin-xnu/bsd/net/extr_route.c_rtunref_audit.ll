; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtunref_audit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtunref_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry_dbg = type { i64, i32*, i32 }

@RTD_INUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"rtunref: on freed rte=%p\0A\00", align 1
@CTRACE_HIST_SIZE = common dso_local global i64 0, align 8
@rte_debug = common dso_local global i32 0, align 4
@RTD_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry_dbg*)* @rtunref_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtunref_audit(%struct.rtentry_dbg* %0) #0 {
  %2 = alloca %struct.rtentry_dbg*, align 8
  %3 = alloca i64, align 8
  store %struct.rtentry_dbg* %0, %struct.rtentry_dbg** %2, align 8
  %4 = load %struct.rtentry_dbg*, %struct.rtentry_dbg** %2, align 8
  %5 = getelementptr inbounds %struct.rtentry_dbg, %struct.rtentry_dbg* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RTD_INUSE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.rtentry_dbg*, %struct.rtentry_dbg** %2, align 8
  %11 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.rtentry_dbg* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.rtentry_dbg*, %struct.rtentry_dbg** %2, align 8
  %14 = getelementptr inbounds %struct.rtentry_dbg, %struct.rtentry_dbg* %13, i32 0, i32 2
  %15 = call i64 @atomic_add_16_ov(i32* %14, i32 1)
  %16 = load i64, i64* @CTRACE_HIST_SIZE, align 8
  %17 = urem i64 %15, %16
  store i64 %17, i64* %3, align 8
  %18 = load i32, i32* @rte_debug, align 4
  %19 = load i32, i32* @RTD_TRACE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.rtentry_dbg*, %struct.rtentry_dbg** %2, align 8
  %24 = getelementptr inbounds %struct.rtentry_dbg, %struct.rtentry_dbg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @ctrace_record(i32* %27)
  br label %29

29:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @panic(i8*, %struct.rtentry_dbg*) #1

declare dso_local i64 @atomic_add_16_ov(i32*, i32) #1

declare dso_local i32 @ctrace_record(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
