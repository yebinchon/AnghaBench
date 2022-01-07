; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.ether_header = type { i64, i32 }
%struct.ifnet = type { i32 }

@ETHERTYPE_IP = common dso_local global i32 0, align 4
@etherbroadcastaddr = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_9__*)* @ether_inet_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_inet_input(i32 %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.ether_header*, align 8
  %11 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__** %6, %struct.TYPE_9__*** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  br label %13

13:                                               ; preds = %68, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = call %struct.ether_header* @mbuf_pkthdr_header(%struct.TYPE_9__* %17)
  store %struct.ether_header* %18, %struct.ether_header** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = call %struct.ifnet* @mbuf_pkthdr_rcvif(%struct.TYPE_9__* %19)
  store %struct.ifnet* %20, %struct.ifnet** %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.ether_header*, %struct.ether_header** %10, align 8
  %25 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETHERTYPE_IP, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %16
  %31 = load %struct.ether_header*, %struct.ether_header** %10, align 8
  %32 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @etherbroadcastaddr, align 4
  %35 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %36 = call i64 @bcmp(i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %40 = load %struct.ether_header*, %struct.ether_header** %10, align 8
  %41 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %44 = call i32 @arp_llreach_set_reachable(%struct.ifnet* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.TYPE_9__** %49, %struct.TYPE_9__*** %8, align 8
  br label %67

50:                                               ; preds = %16
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.ether_header*, %struct.ether_header** %10, align 8
  %54 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ETHERTYPE_ARP, align 4
  %57 = call i64 @htons(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = call i32 @ether_inet_arp_input(%struct.ifnet* %60, %struct.TYPE_9__* %61)
  br label %66

63:                                               ; preds = %50
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = call i32 @mbuf_freem(%struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %7, align 8
  br label %13

70:                                               ; preds = %13
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @PF_INET, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = call i64 @proto_input(i32 %75, %struct.TYPE_9__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = call i32 @mbuf_freem_list(%struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %79, %74, %70
  %83 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %83
}

declare dso_local %struct.ether_header* @mbuf_pkthdr_header(%struct.TYPE_9__*) #1

declare dso_local %struct.ifnet* @mbuf_pkthdr_rcvif(%struct.TYPE_9__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i32 @arp_llreach_set_reachable(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ether_inet_arp_input(%struct.ifnet*, %struct.TYPE_9__*) #1

declare dso_local i32 @mbuf_freem(%struct.TYPE_9__*) #1

declare dso_local i64 @proto_input(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mbuf_freem_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
