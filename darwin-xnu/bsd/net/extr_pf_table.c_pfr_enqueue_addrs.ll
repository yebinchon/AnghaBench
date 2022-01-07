; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_enqueue_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_enqueue_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { i32, %struct.pfr_kentryworkq*, i32 }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_kentryworkq = type { i32 }

@PFRW_SWEEP = common dso_local global i32 0, align 4
@PFRW_ENQUEUE = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pfr_enqueue_addrs: IPv4 walktree failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"pfr_enqueue_addrs: IPv6 walktree failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32)* @pfr_enqueue_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_enqueue_addrs(%struct.pfr_ktable* %0, %struct.pfr_kentryworkq* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfr_kentryworkq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfr_walktree, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pfr_kentryworkq* %1, %struct.pfr_kentryworkq** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pfr_kentryworkq*, %struct.pfr_kentryworkq** %6, align 8
  %11 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %10)
  %12 = call i32 @bzero(%struct.pfr_walktree* %9, i32 24)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @PFRW_SWEEP, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @PFRW_ENQUEUE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.pfr_kentryworkq*, %struct.pfr_kentryworkq** %6, align 8
  %23 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 1
  store %struct.pfr_kentryworkq* %22, %struct.pfr_kentryworkq** %23, align 8
  %24 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %25 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)*, i64 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)** %32, align 8
  %34 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %35 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* @pfr_walktree, align 4
  %38 = call i64 %33(%struct.TYPE_4__* %36, i32 %37, %struct.pfr_walktree* %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %28
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %45 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %50 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)*, i64 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)** %52, align 8
  %54 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %55 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* @pfr_walktree, align 4
  %58 = call i64 %53(%struct.TYPE_3__* %56, i32 %57, %struct.pfr_walktree* %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
