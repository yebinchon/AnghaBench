; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_pptp_unlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_pptp_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pf_app_state* }
%struct.pf_app_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.pf_state* }
%struct.TYPE_5__ = type { i32* }

@PFTM_MAX = common dso_local global i64 0, align 8
@PFTM_PURGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*)* @pf_pptp_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_pptp_unlink(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  %3 = alloca %struct.pf_app_state*, align 8
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.pf_app_state*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %6 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %7 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.pf_app_state*, %struct.pf_app_state** %9, align 8
  store %struct.pf_app_state* %10, %struct.pf_app_state** %3, align 8
  %11 = load %struct.pf_app_state*, %struct.pf_app_state** %3, align 8
  %12 = getelementptr inbounds %struct.pf_app_state, %struct.pf_app_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  store %struct.pf_state* %15, %struct.pf_state** %4, align 8
  %16 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %17 = icmp ne %struct.pf_state* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %20 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.pf_app_state*, %struct.pf_app_state** %22, align 8
  store %struct.pf_app_state* %23, %struct.pf_app_state** %5, align 8
  %24 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %25 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PFTM_MAX, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i64, i64* @PFTM_PURGE, align 8
  %31 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %32 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.pf_app_state*, %struct.pf_app_state** %5, align 8
  %35 = getelementptr inbounds %struct.pf_app_state, %struct.pf_app_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.pf_app_state*, %struct.pf_app_state** %3, align 8
  %39 = getelementptr inbounds %struct.pf_app_state, %struct.pf_app_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.pf_state* null, %struct.pf_state** %41, align 8
  br label %42

42:                                               ; preds = %33, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
