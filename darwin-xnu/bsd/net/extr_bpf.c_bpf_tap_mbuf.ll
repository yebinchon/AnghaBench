; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.bpf_packet = type { i64, i64, i8*, i8*, i32 }
%struct.mbuf = type { i64, %struct.mbuf* }

@BPF_PACKET_TYPE_MBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8*, i8*, i64, i32)* @bpf_tap_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_tap_mbuf(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_packet, align 8
  %14 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %61

20:                                               ; preds = %6
  %21 = load i32, i32* @BPF_PACKET_TYPE_MBUF, align 4
  %22 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.mbuf*
  store %struct.mbuf* %27, %struct.mbuf** %14, align 8
  br label %28

28:                                               ; preds = %38, %20
  %29 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 1
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  store %struct.mbuf* %41, %struct.mbuf** %14, align 8
  br label %28

42:                                               ; preds = %28
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  br label %56

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %13, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @bpf_tap_imp(%struct.TYPE_4__* %57, i32 %58, %struct.bpf_packet* %13, i32 %59)
  br label %61

61:                                               ; preds = %56, %19
  ret void
}

declare dso_local i32 @bpf_tap_imp(%struct.TYPE_4__*, i32, %struct.bpf_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
