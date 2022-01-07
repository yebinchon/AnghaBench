; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_tcp.c_resolve_dns.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_tcp.c_resolve_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.hostent = type { i64 }
%struct.in_addr = type { i32 }

@ESP_FAIL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_in*)* @resolve_dns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_dns(i8* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.in_addr**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.hostent* @gethostbyname(i8* %8)
  store %struct.hostent* %9, %struct.hostent** %6, align 8
  %10 = load %struct.hostent*, %struct.hostent** %6, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ESP_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.hostent*, %struct.hostent** %6, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.in_addr**
  store %struct.in_addr** %18, %struct.in_addr*** %7, align 8
  %19 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %20 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %19, i64 0
  %21 = load %struct.in_addr*, %struct.in_addr** %20, align 8
  %22 = icmp eq %struct.in_addr* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @ESP_FAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %14
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %32 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %31, i64 0
  %33 = load %struct.in_addr*, %struct.in_addr** %32, align 8
  %34 = call i32 @memcpy(i32* %30, %struct.in_addr* %33, i32 4)
  %35 = load i32, i32* @ESP_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %23, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
