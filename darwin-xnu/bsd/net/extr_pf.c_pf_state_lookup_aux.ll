; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_lookup_aux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_lookup_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i64, %struct.pfi_kif*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.pfi_kif = type { i32 }

@PFTM_PURGE = common dso_local global i64 0, align 8
@PF_DROP = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PF_ROUTETO = common dso_local global i64 0, align 8
@PF_REPLYTO = common dso_local global i64 0, align 8
@PF_IN = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pf_state**, %struct.pfi_kif*, i32, i32*)* @pf_state_lookup_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pf_state_lookup_aux(%struct.pf_state** %0, %struct.pfi_kif* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pf_state**, align 8
  %7 = alloca %struct.pfi_kif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %6, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %11 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %12 = icmp eq %struct.pf_state* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %15 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %16 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PFTM_PURGE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %4
  %21 = load i32, i32* @PF_DROP, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %5, align 8
  br label %86

24:                                               ; preds = %13
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PF_OUT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %30 = load %struct.pf_state*, %struct.pf_state** %29, align 8
  %31 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PF_ROUTETO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %40 = load %struct.pf_state*, %struct.pf_state** %39, align 8
  %41 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PF_OUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %50 = load %struct.pf_state*, %struct.pf_state** %49, align 8
  %51 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PF_REPLYTO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %48
  %59 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %60 = load %struct.pf_state*, %struct.pf_state** %59, align 8
  %61 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PF_IN, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %58, %38
  %69 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %70 = load %struct.pf_state*, %struct.pf_state** %69, align 8
  %71 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %70, i32 0, i32 1
  %72 = load %struct.pfi_kif*, %struct.pfi_kif** %71, align 8
  %73 = icmp ne %struct.pfi_kif* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.pf_state**, %struct.pf_state*** %6, align 8
  %76 = load %struct.pf_state*, %struct.pf_state** %75, align 8
  %77 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %76, i32 0, i32 1
  %78 = load %struct.pfi_kif*, %struct.pfi_kif** %77, align 8
  %79 = load %struct.pfi_kif*, %struct.pfi_kif** %7, align 8
  %80 = icmp ne %struct.pfi_kif* %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @PF_PASS, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %9, align 8
  store i32* %84, i32** %5, align 8
  br label %86

85:                                               ; preds = %74, %68, %58, %48, %24
  store i32* null, i32** %5, align 8
  br label %86

86:                                               ; preds = %85, %81, %20
  %87 = load i32*, i32** %5, align 8
  ret i32* %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
