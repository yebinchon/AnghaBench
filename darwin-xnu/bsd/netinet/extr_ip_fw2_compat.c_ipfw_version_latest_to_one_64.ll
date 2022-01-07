; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_version_latest_to_one_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_version_latest_to_one_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_64 = type { i32, i32, i32, i32, i32 }
%struct.ip_fw_compat_64 = type { i32, i32, i32, i32, i32, i32 }

@IP_FW_VERSION_1 = common dso_local global i32 0, align 4
@__uint64_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_64*, %struct.ip_fw_compat_64*)* @ipfw_version_latest_to_one_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_version_latest_to_one_64(%struct.ip_fw_64* %0, %struct.ip_fw_compat_64* %1) #0 {
  %3 = alloca %struct.ip_fw_64*, align 8
  %4 = alloca %struct.ip_fw_compat_64*, align 8
  store %struct.ip_fw_64* %0, %struct.ip_fw_64** %3, align 8
  store %struct.ip_fw_compat_64* %1, %struct.ip_fw_compat_64** %4, align 8
  %5 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %6 = icmp ne %struct.ip_fw_compat_64* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %47

8:                                                ; preds = %2
  %9 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %10 = call i32 @bzero(%struct.ip_fw_compat_64* %9, i32 24)
  %11 = load i32, i32* @IP_FW_VERSION_1, align 4
  %12 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %13 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @__uint64_t, align 4
  %15 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %16 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CAST_DOWN_EXPLICIT(i32 %14, i32 %17)
  %19 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %20 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %22 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %25 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %27 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %30 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %32 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %35 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %37 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %40 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %42 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %43 = call i32 @ipfw_map_from_actions_64(%struct.ip_fw_64* %41, %struct.ip_fw_compat_64* %42)
  %44 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %45 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %46 = call i32 @ipfw_map_from_cmds_64(%struct.ip_fw_64* %44, %struct.ip_fw_compat_64* %45)
  br label %47

47:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @bzero(%struct.ip_fw_compat_64*, i32) #1

declare dso_local i32 @CAST_DOWN_EXPLICIT(i32, i32) #1

declare dso_local i32 @ipfw_map_from_actions_64(%struct.ip_fw_64*, %struct.ip_fw_compat_64*) #1

declare dso_local i32 @ipfw_map_from_cmds_64(%struct.ip_fw_64*, %struct.ip_fw_compat_64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
