; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_copy_bpf_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_copy_bpf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_packet = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_packet*, i8*, i64)* @copy_bpf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_bpf_packet(%struct.bpf_packet* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bpf_packet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bpf_packet* %0, %struct.bpf_packet** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bpf_packet*, %struct.bpf_packet** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.bpf_packet*, %struct.bpf_packet** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @min(i64 %13, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.bpf_packet*, %struct.bpf_packet** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @bcopy(i32 %20, i8* %21, i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr i8, i8* %28, i64 %27
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %12, %3
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %46

34:                                               ; preds = %30
  %35 = load %struct.bpf_packet*, %struct.bpf_packet** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %45 [
    i32 128, label %38
  ]

38:                                               ; preds = %34
  %39 = load %struct.bpf_packet*, %struct.bpf_packet** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @bpf_mcopy(i32 %41, i8* %42, i64 %43)
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %33, %45, %38
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @bpf_mcopy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
