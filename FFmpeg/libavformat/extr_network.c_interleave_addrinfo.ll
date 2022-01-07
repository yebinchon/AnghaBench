; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_interleave_addrinfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_interleave_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, %struct.addrinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo*)* @interleave_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interleave_addrinfo(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo**, align 8
  %4 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %2, align 8
  %5 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %6 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store %struct.addrinfo** %6, %struct.addrinfo*** %3, align 8
  br label %7

7:                                                ; preds = %34, %30, %21, %1
  %8 = load %struct.addrinfo**, %struct.addrinfo*** %3, align 8
  %9 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %10 = icmp ne %struct.addrinfo* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load %struct.addrinfo**, %struct.addrinfo*** %3, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %13, %struct.addrinfo** %4, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 1
  store %struct.addrinfo** %23, %struct.addrinfo*** %3, align 8
  br label %7

24:                                               ; preds = %11
  %25 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  %28 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %29 = icmp eq %struct.addrinfo* %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %31, %struct.addrinfo** %2, align 8
  %32 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 1
  store %struct.addrinfo** %33, %struct.addrinfo*** %3, align 8
  br label %7

34:                                               ; preds = %24
  %35 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 1
  %37 = load %struct.addrinfo*, %struct.addrinfo** %36, align 8
  %38 = load %struct.addrinfo**, %struct.addrinfo*** %3, align 8
  store %struct.addrinfo* %37, %struct.addrinfo** %38, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 1
  %41 = load %struct.addrinfo*, %struct.addrinfo** %40, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  store %struct.addrinfo* %41, %struct.addrinfo** %43, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %45 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  store %struct.addrinfo* %44, %struct.addrinfo** %46, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load %struct.addrinfo*, %struct.addrinfo** %48, align 8
  store %struct.addrinfo* %49, %struct.addrinfo** %2, align 8
  br label %7

50:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
