; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_natt.c_natt_open_port.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_natt.c_natt_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.natt_status = type { i32, i32, %struct.sockaddr_in6, %struct.sockaddr_in }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@SOCKET_PROTOCOL_UDP = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@urls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.natt_status*, %struct.sockaddr*, i32, i32)* @natt_open_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @natt_open_port(%struct.natt_status* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.natt_status*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.natt_status* %0, %struct.natt_status** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
