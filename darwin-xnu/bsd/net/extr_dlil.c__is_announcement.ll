; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c__is_announcement.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c__is_announcement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, %struct.sockaddr_in*)* @_is_announcement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_is_announcement(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %6 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %7 = icmp eq %struct.sockaddr_in* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %10, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
