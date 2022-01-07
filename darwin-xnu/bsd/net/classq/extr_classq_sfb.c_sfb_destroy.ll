; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { %struct.sfb*, %struct.sfb* }

@sfb_bins_zone = common dso_local global i32 0, align 4
@sfb_fcl_zone = common dso_local global i32 0, align 4
@sfb_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfb_destroy(%struct.sfb* %0) #0 {
  %2 = alloca %struct.sfb*, align 8
  store %struct.sfb* %0, %struct.sfb** %2, align 8
  %3 = load %struct.sfb*, %struct.sfb** %2, align 8
  %4 = call i32 @sfb_fclists_clean(%struct.sfb* %3)
  %5 = load %struct.sfb*, %struct.sfb** %2, align 8
  %6 = getelementptr inbounds %struct.sfb, %struct.sfb* %5, i32 0, i32 1
  %7 = load %struct.sfb*, %struct.sfb** %6, align 8
  %8 = icmp ne %struct.sfb* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @sfb_bins_zone, align 4
  %11 = load %struct.sfb*, %struct.sfb** %2, align 8
  %12 = getelementptr inbounds %struct.sfb, %struct.sfb* %11, i32 0, i32 1
  %13 = load %struct.sfb*, %struct.sfb** %12, align 8
  %14 = call i32 @zfree(i32 %10, %struct.sfb* %13)
  %15 = load %struct.sfb*, %struct.sfb** %2, align 8
  %16 = getelementptr inbounds %struct.sfb, %struct.sfb* %15, i32 0, i32 1
  store %struct.sfb* null, %struct.sfb** %16, align 8
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.sfb*, %struct.sfb** %2, align 8
  %19 = getelementptr inbounds %struct.sfb, %struct.sfb* %18, i32 0, i32 0
  %20 = load %struct.sfb*, %struct.sfb** %19, align 8
  %21 = icmp ne %struct.sfb* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @sfb_fcl_zone, align 4
  %24 = load %struct.sfb*, %struct.sfb** %2, align 8
  %25 = getelementptr inbounds %struct.sfb, %struct.sfb* %24, i32 0, i32 0
  %26 = load %struct.sfb*, %struct.sfb** %25, align 8
  %27 = call i32 @zfree(i32 %23, %struct.sfb* %26)
  %28 = load %struct.sfb*, %struct.sfb** %2, align 8
  %29 = getelementptr inbounds %struct.sfb, %struct.sfb* %28, i32 0, i32 0
  store %struct.sfb* null, %struct.sfb** %29, align 8
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* @sfb_zone, align 4
  %32 = load %struct.sfb*, %struct.sfb** %2, align 8
  %33 = call i32 @zfree(i32 %31, %struct.sfb* %32)
  ret void
}

declare dso_local i32 @sfb_fclists_clean(%struct.sfb*) #1

declare dso_local i32 @zfree(i32, %struct.sfb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
