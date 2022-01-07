; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifproto_media_send_arp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifproto_media_send_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.sockaddr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.sockaddr_dl*, %struct.sockaddr*, %struct.sockaddr_dl*, %struct.sockaddr*)* @ifproto_media_send_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifproto_media_send_arp(%struct.ifnet* %0, i32 %1, %struct.sockaddr_dl* %2, %struct.sockaddr* %3, %struct.sockaddr_dl* %4, %struct.sockaddr* %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_dl*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr_dl*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr_dl* %2, %struct.sockaddr_dl** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.sockaddr_dl* %4, %struct.sockaddr_dl** %11, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %12, align 8
  %13 = load i32, i32* @ENXIO, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
