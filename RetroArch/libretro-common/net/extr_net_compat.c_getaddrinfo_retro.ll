; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_compat.c_getaddrinfo_retro.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_compat.c_getaddrinfo_retro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, %struct.sockaddr*, %struct.TYPE_2__, i8*, i32, i32, i8* }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr_in = type { i32, i32, %struct.sockaddr*, %struct.TYPE_2__, i8*, i32, i32, i8* }

@AF_UNSPEC = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo_retro(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo**, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %8, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %12 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 7
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** @AF_UNSPEC, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %25 = bitcast %struct.addrinfo* %24 to %struct.sockaddr_in*
  %26 = load %struct.addrinfo**, %struct.addrinfo*** %8, align 8
  %27 = bitcast %struct.addrinfo** %26 to %struct.sockaddr_in**
  %28 = call i32 @getaddrinfo(i8* %22, i8* %23, %struct.sockaddr_in* %25, %struct.sockaddr_in** %27)
  ret i32 %28
}

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.sockaddr_in*, %struct.sockaddr_in**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
