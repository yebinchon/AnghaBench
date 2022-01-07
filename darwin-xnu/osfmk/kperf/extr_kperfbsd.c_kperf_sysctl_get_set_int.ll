; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_kperf_sysctl_get_set_int.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_kperf_sysctl_get_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i32 ()*, i32 (i32)*)* @kperf_sysctl_get_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kperf_sysctl_get_set_int(%struct.sysctl_req* %0, i32 ()* %1, i32 (i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i32 ()*, align 8
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %5, align 8
  store i32 ()* %1, i32 ()** %6, align 8
  store i32 (i32)* %2, i32 (i32)** %7, align 8
  %10 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %11 = icmp ne %struct.sysctl_req* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32 ()*, i32 ()** %6, align 8
  %15 = icmp ne i32 ()* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32 (i32)*, i32 (i32)** %7, align 8
  %19 = icmp ne i32 (i32)* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i32 0, i32* %8, align 4
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32 ()*, i32 ()** %6, align 8
  %28 = call i32 %27()
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @sysctl_io_number(%struct.sysctl_req* %30, i32 %31, i32 4, i32* %8, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %37 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load i32 (i32)*, i32 (i32)** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %43(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sysctl_io_number(%struct.sysctl_req*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
