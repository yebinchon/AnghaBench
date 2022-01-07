; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_insert_kentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_insert_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfr_kentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_insert_kentry(%struct.pfr_ktable* %0, %struct.pfr_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfr_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfr_kentry*, align 8
  %9 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %11 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %12 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %10, %struct.pfr_addr* %11, i32 1)
  store %struct.pfr_kentry* %12, %struct.pfr_kentry** %8, align 8
  %13 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %14 = icmp ne %struct.pfr_kentry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %18 = call %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr* %17, i32 1)
  store %struct.pfr_kentry* %18, %struct.pfr_kentry** %8, align 8
  %19 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %20 = icmp eq %struct.pfr_kentry* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %16
  %24 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %25 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %26 = call i32 @pfr_route_kentry(%struct.pfr_ktable* %24, %struct.pfr_kentry* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %34 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %36 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %29, %21, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr*, i32) #1

declare dso_local i32 @pfr_route_kentry(%struct.pfr_ktable*, %struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
