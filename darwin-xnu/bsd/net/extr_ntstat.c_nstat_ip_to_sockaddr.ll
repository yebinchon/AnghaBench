; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ip_to_sockaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ip_to_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_addr*, i32, %struct.sockaddr_in*, i32)* @nstat_ip_to_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_ip_to_sockaddr(%struct.in_addr* %0, i32 %1, %struct.sockaddr_in* %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %27

13:                                               ; preds = %4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  %24 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %25 = bitcast %struct.in_addr* %23 to i8*
  %26 = bitcast %struct.in_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
