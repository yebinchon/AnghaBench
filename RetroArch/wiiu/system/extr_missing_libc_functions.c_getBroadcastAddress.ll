; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_getBroadcastAddress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_getBroadcastAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.sockaddr_in*)* @getBroadcastAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getBroadcastAddress(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %8 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %9 = icmp ne %struct.sockaddr_in* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %12 = icmp ne %struct.sockaddr_in* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %15 = icmp ne %struct.sockaddr_in* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = or i32 %21, %26
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
