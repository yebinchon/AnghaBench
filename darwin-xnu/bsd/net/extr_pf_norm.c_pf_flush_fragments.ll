; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_flush_fragments.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_flush_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }

@pf_nfrents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"trying to free > %d frents\0A\00", align 1
@pf_fragqueue = common dso_local global i32 0, align 4
@pf_ncache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"trying to free > %d cache entries\0A\00", align 1
@pf_cachequeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_flush_fragments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_flush_fragments() #0 {
  %1 = alloca %struct.pf_fragment*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pf_nfrents, align 4
  %4 = mul nsw i32 %3, 9
  %5 = sdiv i32 %4, 10
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @pf_nfrents, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @DPFPRINTF(i8* %10)
  br label %12

12:                                               ; preds = %22, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @pf_nfrents, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @pf_fragqueue, align 4
  %18 = call %struct.pf_fragment* @TAILQ_LAST(i32* @pf_fragqueue, i32 %17)
  store %struct.pf_fragment* %18, %struct.pf_fragment** %1, align 8
  %19 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %20 = icmp eq %struct.pf_fragment* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %24 = call i32 @pf_free_fragment(%struct.pf_fragment* %23)
  br label %12

25:                                               ; preds = %21, %12
  %26 = load i32, i32* @pf_ncache, align 4
  %27 = mul nsw i32 %26, 9
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* @pf_ncache, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DPFPRINTF(i8* %33)
  br label %35

35:                                               ; preds = %45, %25
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @pf_ncache, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @pf_cachequeue, align 4
  %41 = call %struct.pf_fragment* @TAILQ_LAST(i32* @pf_cachequeue, i32 %40)
  store %struct.pf_fragment* %41, %struct.pf_fragment** %1, align 8
  %42 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %43 = icmp eq %struct.pf_fragment* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %48

45:                                               ; preds = %39
  %46 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %47 = call i32 @pf_free_fragment(%struct.pf_fragment* %46)
  br label %35

48:                                               ; preds = %44, %35
  ret void
}

declare dso_local i32 @DPFPRINTF(i8*) #1

declare dso_local %struct.pf_fragment* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @pf_free_fragment(%struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
