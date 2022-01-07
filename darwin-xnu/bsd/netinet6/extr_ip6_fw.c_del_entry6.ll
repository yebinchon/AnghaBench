; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_del_entry6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_del_entry6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_fw_head = type { %struct.ip6_fw_chain* }
%struct.ip6_fw_chain = type { i64, %struct.ip6_fw_chain*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ip6_fw_chain* }

@chain = common dso_local global i32 0, align 4
@M_IP6FW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_fw_head*, i64)* @del_entry6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_entry6(%struct.ip6_fw_head* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_fw_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ip6_fw_chain*, align 8
  store %struct.ip6_fw_head* %0, %struct.ip6_fw_head** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %8 = getelementptr inbounds %struct.ip6_fw_head, %struct.ip6_fw_head* %7, i32 0, i32 0
  %9 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  store %struct.ip6_fw_chain* %9, %struct.ip6_fw_chain** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, -1
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %37, %12
  %14 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %15 = icmp ne %struct.ip6_fw_chain* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %18 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %17, i32 0, i32 1
  %19 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %18, align 8
  %20 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %26 = load i32, i32* @chain, align 4
  %27 = call i32 @LIST_REMOVE(%struct.ip6_fw_chain* %25, i32 %26)
  %28 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %29 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %28, i32 0, i32 1
  %30 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %29, align 8
  %31 = load i32, i32* @M_IP6FW, align 4
  %32 = call i32 @FREE(%struct.ip6_fw_chain* %30, i32 %31)
  %33 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %34 = load i32, i32* @M_IP6FW, align 4
  %35 = call i32 @FREE(%struct.ip6_fw_chain* %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %45

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %6, align 8
  %39 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %40, align 8
  store %struct.ip6_fw_chain* %41, %struct.ip6_fw_chain** %6, align 8
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @LIST_REMOVE(%struct.ip6_fw_chain*, i32) #1

declare dso_local i32 @FREE(%struct.ip6_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
