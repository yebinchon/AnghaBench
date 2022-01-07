; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_get_device_from_uuid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_get_device_from_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32, i32 }

@nbpfilter = common dso_local global i32 0, align 4
@bpf_dtab = common dso_local global %struct.bpf_d** null, align 8
@BPF_DEV_RESERVED = common dso_local global %struct.bpf_d* null, align 8
@BPF_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_d* (i32)* @bpf_get_device_from_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_d* @bpf_get_device_from_uuid(i32 %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_d*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @nbpfilter, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.bpf_d**, %struct.bpf_d*** @bpf_dtab, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bpf_d*, %struct.bpf_d** %11, i64 %13
  %15 = load %struct.bpf_d*, %struct.bpf_d** %14, align 8
  store %struct.bpf_d* %15, %struct.bpf_d** %5, align 8
  %16 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %17 = icmp eq %struct.bpf_d* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %10
  %19 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %20 = load %struct.bpf_d*, %struct.bpf_d** @BPF_DEV_RESERVED, align 8
  %21 = icmp eq %struct.bpf_d* %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %24 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BPF_CLOSING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18, %10
  br label %40

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @uuid_compare(i32 %31, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  store %struct.bpf_d* %38, %struct.bpf_d** %2, align 8
  br label %44

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %6

43:                                               ; preds = %6
  store %struct.bpf_d* null, %struct.bpf_d** %2, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  ret %struct.bpf_d* %45
}

declare dso_local i64 @uuid_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
