; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_aaaa_collision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_aaaa_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.esp_ip6_addr = type { i32 }

@_MDNS_SIZEOF_IP6_ADDR = common dso_local global i32 0, align 4
@MDNS_IF_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @_mdns_check_aaaa_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_check_aaaa_collision(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.esp_ip6_addr, align 4
  %7 = alloca %struct.esp_ip6_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @_ipv6_address_is_zero(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @_mdns_get_esp_netif(i64 %17)
  %19 = call i64 @esp_netif_get_ip6_linklocal(i32 %18, %struct.esp_ip6_addr* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %64

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.esp_ip6_addr, %struct.esp_ip6_addr* %6, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @_MDNS_SIZEOF_IP6_ADDR, align 4
  %29 = call i32 @memcmp(i32* %23, i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @_mdns_get_other_if(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MDNS_IF_MAX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %64

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @_mdns_get_esp_netif(i64 %44)
  %46 = call i64 @esp_netif_get_ip6_linklocal(i32 %45, %struct.esp_ip6_addr* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %64

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.esp_ip6_addr, %struct.esp_ip6_addr* %7, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @_MDNS_SIZEOF_IP6_ADDR, align 4
  %56 = call i32 @memcmp(i32* %50, i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %64

59:                                               ; preds = %49
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @_mdns_dup_interface(i64 %60)
  store i32 2, i32* %3, align 4
  br label %64

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %59, %58, %48, %42, %32, %21, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @_ipv6_address_is_zero(i64) #1

declare dso_local i64 @esp_netif_get_ip6_linklocal(i32, %struct.esp_ip6_addr*) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @_mdns_get_other_if(i64) #1

declare dso_local i32 @_mdns_dup_interface(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
