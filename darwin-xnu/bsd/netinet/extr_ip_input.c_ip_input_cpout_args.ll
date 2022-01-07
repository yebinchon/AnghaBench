; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_cpout_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_cpout_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_in_args = type { i32, i32, i32, i32 }
%struct.ip_fw_args = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_in_args*, %struct.ip_fw_args*, i64*)* @ip_input_cpout_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_input_cpout_args(%struct.ip_fw_in_args* %0, %struct.ip_fw_args* %1, i64* %2) #0 {
  %4 = alloca %struct.ip_fw_in_args*, align 8
  %5 = alloca %struct.ip_fw_args*, align 8
  %6 = alloca i64*, align 8
  store %struct.ip_fw_in_args* %0, %struct.ip_fw_in_args** %4, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %13 = call i32 @bzero(%struct.ip_fw_args* %12, i32 16)
  %14 = load i64, i64* @TRUE, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.ip_fw_in_args*, %struct.ip_fw_in_args** %4, align 8
  %18 = getelementptr inbounds %struct.ip_fw_in_args, %struct.ip_fw_in_args* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %21 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ip_fw_in_args*, %struct.ip_fw_in_args** %4, align 8
  %23 = getelementptr inbounds %struct.ip_fw_in_args, %struct.ip_fw_in_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %26 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ip_fw_in_args*, %struct.ip_fw_in_args** %4, align 8
  %28 = getelementptr inbounds %struct.ip_fw_in_args, %struct.ip_fw_in_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %31 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ip_fw_in_args*, %struct.ip_fw_in_args** %4, align 8
  %33 = getelementptr inbounds %struct.ip_fw_in_args, %struct.ip_fw_in_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %36 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.ip_fw_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
