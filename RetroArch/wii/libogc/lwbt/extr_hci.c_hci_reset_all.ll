; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reset_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_link = type { %struct.hci_link* }
%struct.hci_link_key = type { %struct.hci_link_key*, %struct.hci_link_key*, %struct.hci_link_key* }
%struct.hci_inq_res = type { %struct.hci_inq_res*, %struct.hci_inq_res*, %struct.hci_inq_res* }

@hci_active_links = common dso_local global %struct.hci_link* null, align 8
@hci_dev = common dso_local global %struct.hci_link_key* null, align 8
@hci_inq_results = common dso_local global i32 0, align 4
@hci_pcbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_reset_all() #0 {
  %1 = alloca %struct.hci_link*, align 8
  %2 = alloca %struct.hci_link*, align 8
  %3 = alloca %struct.hci_inq_res*, align 8
  %4 = alloca %struct.hci_inq_res*, align 8
  %5 = alloca %struct.hci_link_key*, align 8
  %6 = alloca %struct.hci_link_key*, align 8
  %7 = load %struct.hci_link*, %struct.hci_link** @hci_active_links, align 8
  store %struct.hci_link* %7, %struct.hci_link** %1, align 8
  br label %8

8:                                                ; preds = %11, %0
  %9 = load %struct.hci_link*, %struct.hci_link** %1, align 8
  %10 = icmp ne %struct.hci_link* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.hci_link*, %struct.hci_link** %1, align 8
  %13 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %12, i32 0, i32 0
  %14 = load %struct.hci_link*, %struct.hci_link** %13, align 8
  store %struct.hci_link* %14, %struct.hci_link** %2, align 8
  %15 = load %struct.hci_link*, %struct.hci_link** %1, align 8
  %16 = call i32 @hci_close(%struct.hci_link* %15)
  %17 = load %struct.hci_link*, %struct.hci_link** %2, align 8
  store %struct.hci_link* %17, %struct.hci_link** %1, align 8
  br label %8

18:                                               ; preds = %8
  store %struct.hci_link* null, %struct.hci_link** @hci_active_links, align 8
  %19 = load %struct.hci_link_key*, %struct.hci_link_key** @hci_dev, align 8
  %20 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %19, i32 0, i32 2
  %21 = load %struct.hci_link_key*, %struct.hci_link_key** %20, align 8
  %22 = bitcast %struct.hci_link_key* %21 to %struct.hci_inq_res*
  store %struct.hci_inq_res* %22, %struct.hci_inq_res** %3, align 8
  br label %23

23:                                               ; preds = %26, %18
  %24 = load %struct.hci_inq_res*, %struct.hci_inq_res** %3, align 8
  %25 = icmp ne %struct.hci_inq_res* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.hci_inq_res*, %struct.hci_inq_res** %3, align 8
  %28 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %27, i32 0, i32 0
  %29 = load %struct.hci_inq_res*, %struct.hci_inq_res** %28, align 8
  store %struct.hci_inq_res* %29, %struct.hci_inq_res** %4, align 8
  %30 = load %struct.hci_inq_res*, %struct.hci_inq_res** %3, align 8
  %31 = bitcast %struct.hci_inq_res* %30 to %struct.hci_link_key*
  %32 = call i32 @btmemb_free(i32* @hci_inq_results, %struct.hci_link_key* %31)
  %33 = load %struct.hci_inq_res*, %struct.hci_inq_res** %4, align 8
  store %struct.hci_inq_res* %33, %struct.hci_inq_res** %3, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.hci_link_key*, %struct.hci_link_key** @hci_dev, align 8
  %36 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %35, i32 0, i32 1
  %37 = load %struct.hci_link_key*, %struct.hci_link_key** %36, align 8
  store %struct.hci_link_key* %37, %struct.hci_link_key** %5, align 8
  br label %38

38:                                               ; preds = %41, %34
  %39 = load %struct.hci_link_key*, %struct.hci_link_key** %5, align 8
  %40 = icmp ne %struct.hci_link_key* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.hci_link_key*, %struct.hci_link_key** %5, align 8
  %43 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %42, i32 0, i32 0
  %44 = load %struct.hci_link_key*, %struct.hci_link_key** %43, align 8
  store %struct.hci_link_key* %44, %struct.hci_link_key** %6, align 8
  %45 = load %struct.hci_link_key*, %struct.hci_link_key** %5, align 8
  %46 = call i32 @btmemb_free(i32* @hci_inq_results, %struct.hci_link_key* %45)
  %47 = load %struct.hci_link_key*, %struct.hci_link_key** %6, align 8
  store %struct.hci_link_key* %47, %struct.hci_link_key** %5, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load %struct.hci_link_key*, %struct.hci_link_key** @hci_dev, align 8
  %50 = call i32 @btmemb_free(i32* @hci_pcbs, %struct.hci_link_key* %49)
  %51 = call i32 (...) @hci_init()
  ret void
}

declare dso_local i32 @hci_close(%struct.hci_link*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.hci_link_key*) #1

declare dso_local i32 @hci_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
