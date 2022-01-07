; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_util.c_util_local_addr.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_util.c_util_local_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @util_local_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  store i32 12, i32* %4, align 4
  store i32 0, i32* @errno, align 4
  %5 = load i32, i32* @AF_INET, align 4
  %6 = load i32, i32* @SOCK_DGRAM, align 4
  %7 = call i32 @socket(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %29

10:                                               ; preds = %0
  %11 = load i32, i32* @AF_INET, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = call i32 @INET_ADDR(i32 8, i32 8, i32 8, i32 8)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32 @htons(i32 53)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %2, align 4
  %19 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %20 = call i32 @connect(i32 %18, %struct.sockaddr* %19, i32 12)
  %21 = load i32, i32* %2, align 4
  %22 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %23 = call i32 @getsockname(i32 %21, %struct.sockaddr* %22, i32* %4)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @close(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %10, %9
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @INET_ADDR(i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
