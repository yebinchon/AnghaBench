; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_pre_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_pre_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.ether_header = type { i32, i32 }
%struct.sockaddr_dl = type { i32 }
%struct.sockaddr_in = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@M_LOOP = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: can't handle af%d\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.mbuf**, %struct.sockaddr*, i8*, i8*, i8*)* @ether_inet_pre_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_inet_pre_output(%struct.TYPE_5__* %0, i32 %1, %struct.mbuf** %2, %struct.sockaddr* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %struct.ether_header*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_dl, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  store %struct.mbuf* %22, %struct.mbuf** %16, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = load i32, i32* @IFF_RUNNING, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @IFF_UP, align 4
  %31 = load i32, i32* @IFF_RUNNING, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* @ENETDOWN, align 4
  store i32 %35, i32* %8, align 4
  br label %98

36:                                               ; preds = %7
  %37 = load i32, i32* @M_LOOP, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %88 [
    i32 130, label %45
    i32 128, label %67
    i32 129, label %67
  ]

45:                                               ; preds = %36
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %48 = ptrtoint %struct.sockaddr* %47 to i64
  %49 = inttoptr i64 %48 to %struct.sockaddr_in*
  %50 = load i8*, i8** %13, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  %54 = call i32 @arp_lookup_ip(%struct.TYPE_5__* %46, %struct.sockaddr_in* %49, %struct.sockaddr_dl* %19, i32 4, i32 %51, %struct.mbuf* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load i32, i32* @ETHERTYPE_IP, align 4
  %59 = call i32 @htons(i32 %58)
  store i32 %59, i32* %20, align 4
  %60 = call i32* @LLADDR(%struct.sockaddr_dl* %19)
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %63 = call i32 @bcopy(i32* %60, i8* %61, i32 %62)
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @bcopy(i32* %20, i8* %64, i32 4)
  br label %66

66:                                               ; preds = %57, %45
  br label %96

67:                                               ; preds = %36, %36
  %68 = load i32, i32* @M_LOOP, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %75 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.ether_header*
  store %struct.ether_header* %78, %struct.ether_header** %17, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.ether_header*, %struct.ether_header** %17, align 8
  %81 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i8* %79, i32 %82, i32 6)
  %84 = load %struct.ether_header*, %struct.ether_header** %17, align 8
  %85 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %84, i32 0, i32 0
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @bcopy(i32* %85, i8* %86, i32 4)
  br label %96

88:                                               ; preds = %36
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = call i8* @if_name(%struct.TYPE_5__* %89)
  %91 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %92 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %93)
  %95 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %88, %67, %66
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %34
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @arp_lookup_ip(%struct.TYPE_5__*, %struct.sockaddr_in*, %struct.sockaddr_dl*, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @if_name(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
