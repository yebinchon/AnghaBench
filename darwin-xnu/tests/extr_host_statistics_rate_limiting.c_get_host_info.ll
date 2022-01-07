; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_get_host_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_get_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.all_host_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HOST_VM_INFO64_REV0_COUNT = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@HOST_VM_INFO64 = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV1_COUNT = common dso_local global i32 0, align 4
@HOST_EXTMOD_INFO64_COUNT = common dso_local global i32 0, align 4
@HOST_EXTMOD_INFO64 = common dso_local global i32 0, align 4
@HOST_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_LOAD_INFO = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV0_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV1_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV2_COUNT = common dso_local global i32 0, align 4
@HOST_CPU_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_CPU_LOAD_INFO = common dso_local global i32 0, align 4
@TASK_POWER_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_EXPIRED_TASK_INFO = common dso_local global i32 0, align 4
@TASK_POWER_INFO_V2_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.all_host_info*, i32, i32)* @get_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_host_info(%struct.all_host_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.all_host_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.all_host_info* %0, %struct.all_host_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %134, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %137

13:                                               ; preds = %9
  %14 = load i32, i32* @HOST_VM_INFO64_REV0_COUNT, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @T_QUIET, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HOST_VM_INFO64, align 4
  %18 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %18, i64 %20
  %22 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %21, i32 0, i32 9
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @host_statistics64(i32 %16, i32 %17, i32 %23, i32* %8)
  %25 = call i32 @T_ASSERT_POSIX_ZERO(i32 %24, i32* null)
  %26 = load i32, i32* @HOST_VM_INFO64_REV1_COUNT, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @T_QUIET, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HOST_VM_INFO64, align 4
  %30 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %30, i64 %32
  %34 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %33, i32 0, i32 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @host_statistics64(i32 %28, i32 %29, i32 %35, i32* %8)
  %37 = call i32 @T_ASSERT_POSIX_ZERO(i32 %36, i32* null)
  %38 = load i32, i32* @HOST_EXTMOD_INFO64_COUNT, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @T_QUIET, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HOST_EXTMOD_INFO64, align 4
  %42 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %42, i64 %44
  %46 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %45, i32 0, i32 7
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @host_statistics64(i32 %40, i32 %41, i32 %47, i32* %8)
  %49 = call i32 @T_ASSERT_POSIX_ZERO(i32 %48, i32* null)
  %50 = load i32, i32* @HOST_LOAD_INFO_COUNT, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @T_QUIET, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @HOST_LOAD_INFO, align 4
  %54 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %54, i64 %56
  %58 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %57, i32 0, i32 6
  %59 = ptrtoint i32* %58 to i32
  %60 = call i32 @host_statistics(i32 %52, i32 %53, i32 %59, i32* %8)
  %61 = call i32 @T_ASSERT_POSIX_ZERO(i32 %60, i32* null)
  %62 = load i32, i32* @HOST_VM_INFO_REV0_COUNT, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @T_QUIET, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @HOST_VM_INFO, align 4
  %66 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %66, i64 %68
  %70 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %69, i32 0, i32 5
  %71 = ptrtoint i32* %70 to i32
  %72 = call i32 @host_statistics(i32 %64, i32 %65, i32 %71, i32* %8)
  %73 = call i32 @T_ASSERT_POSIX_ZERO(i32 %72, i32* null)
  %74 = load i32, i32* @HOST_VM_INFO_REV1_COUNT, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @T_QUIET, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @HOST_VM_INFO, align 4
  %78 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %78, i64 %80
  %82 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %81, i32 0, i32 4
  %83 = ptrtoint i32* %82 to i32
  %84 = call i32 @host_statistics(i32 %76, i32 %77, i32 %83, i32* %8)
  %85 = call i32 @T_ASSERT_POSIX_ZERO(i32 %84, i32* null)
  %86 = load i32, i32* @HOST_VM_INFO_REV2_COUNT, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @T_QUIET, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @HOST_VM_INFO, align 4
  %90 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %90, i64 %92
  %94 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %93, i32 0, i32 3
  %95 = ptrtoint i32* %94 to i32
  %96 = call i32 @host_statistics(i32 %88, i32 %89, i32 %95, i32* %8)
  %97 = call i32 @T_ASSERT_POSIX_ZERO(i32 %96, i32* null)
  %98 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @T_QUIET, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @HOST_CPU_LOAD_INFO, align 4
  %102 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %102, i64 %104
  %106 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %105, i32 0, i32 2
  %107 = ptrtoint i32* %106 to i32
  %108 = call i32 @host_statistics(i32 %100, i32 %101, i32 %107, i32* %8)
  %109 = call i32 @T_ASSERT_POSIX_ZERO(i32 %108, i32* null)
  %110 = load i32, i32* @TASK_POWER_INFO_COUNT, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @T_QUIET, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @HOST_EXPIRED_TASK_INFO, align 4
  %114 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %114, i64 %116
  %118 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %117, i32 0, i32 1
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 @host_statistics(i32 %112, i32 %113, i32 %119, i32* %8)
  %121 = call i32 @T_ASSERT_POSIX_ZERO(i32 %120, i32* null)
  %122 = load i32, i32* @TASK_POWER_INFO_V2_COUNT, align 4
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @T_QUIET, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HOST_EXPIRED_TASK_INFO, align 4
  %126 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %126, i64 %128
  %130 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %129, i32 0, i32 0
  %131 = ptrtoint i32* %130 to i32
  %132 = call i32 @host_statistics(i32 %124, i32 %125, i32 %131, i32* %8)
  %133 = call i32 @T_ASSERT_POSIX_ZERO(i32 %132, i32* null)
  br label %134

134:                                              ; preds = %13
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %9

137:                                              ; preds = %9
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @host_statistics64(i32, i32, i32, i32*) #1

declare dso_local i32 @host_statistics(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
