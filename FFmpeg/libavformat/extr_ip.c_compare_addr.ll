; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_compare_addr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_compare_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.sockaddr_storage*)* @compare_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_addr(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %16 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %22 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %20, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
