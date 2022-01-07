; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_convert_from_latest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_convert_from_latest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw = type { i32 }
%struct.ip_old_fw = type { i32 }
%struct.ip_fw_64 = type { i32 }
%struct.ip_fw_compat_64 = type { i32 }
%struct.ip_fw_32 = type { i32 }
%struct.ip_fw_compat_32 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_convert_from_latest(%struct.ip_fw* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ip_fw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_old_fw*, align 8
  store %struct.ip_fw* %0, %struct.ip_fw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %18
    i32 130, label %34
  ]

11:                                               ; preds = %4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ip_old_fw*
  store %struct.ip_old_fw* %13, %struct.ip_old_fw** %9, align 8
  %14 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %15 = load %struct.ip_old_fw*, %struct.ip_old_fw** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ipfw_version_latest_to_zero(%struct.ip_fw* %14, %struct.ip_old_fw* %15, i32 %16)
  br label %36

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %23 = bitcast %struct.ip_fw* %22 to %struct.ip_fw_64*
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.ip_fw_compat_64*
  %26 = call i32 @ipfw_version_latest_to_one_64(%struct.ip_fw_64* %23, %struct.ip_fw_compat_64* %25)
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %29 = bitcast %struct.ip_fw* %28 to %struct.ip_fw_32*
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.ip_fw_compat_32*
  %32 = call i32 @ipfw_version_latest_to_one_32(%struct.ip_fw_32* %29, %struct.ip_fw_compat_32* %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %36

34:                                               ; preds = %4
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %34, %33, %11
  ret void
}

declare dso_local i32 @ipfw_version_latest_to_zero(%struct.ip_fw*, %struct.ip_old_fw*, i32) #1

declare dso_local i32 @ipfw_version_latest_to_one_64(%struct.ip_fw_64*, %struct.ip_fw_compat_64*) #1

declare dso_local i32 @ipfw_version_latest_to_one_32(%struct.ip_fw_32*, %struct.ip_fw_compat_32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
