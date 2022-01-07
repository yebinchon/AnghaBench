; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_msg = type { i64, i64, i64, i64 }

@KEV_VENDOR_APPLE = common dso_local global i64 0, align 8
@KEV_NETWORK_CLASS = common dso_local global i64 0, align 8
@KEV_DL_SUBCLASS = common dso_local global i64 0, align 8
@KEV_DL_LINK_ADDRESS_CHANGED = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.kev_msg*)* @ether_inet_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether_inet_event(i32 %0, i32 %1, %struct.kev_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kev_msg*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.kev_msg* %2, %struct.kev_msg** %6, align 8
  %9 = load %struct.kev_msg*, %struct.kev_msg** %6, align 8
  %10 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KEV_VENDOR_APPLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = load %struct.kev_msg*, %struct.kev_msg** %6, align 8
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KEV_NETWORK_CLASS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.kev_msg*, %struct.kev_msg** %6, align 8
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KEV_DL_SUBCLASS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.kev_msg*, %struct.kev_msg** %6, align 8
  %28 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KEV_DL_LINK_ADDRESS_CHANGED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %14, %3
  br label %60

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @AF_INET, align 4
  %36 = call i64 @ifnet_get_address_list_family(i32 %34, i32*** %7, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @inet_arp_init_ifaddr(i32 %47, i32* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load i32**, i32*** %7, align 8
  %59 = call i32 @ifnet_free_address_list(i32** %58)
  br label %60

60:                                               ; preds = %32, %57, %33
  ret void
}

declare dso_local i64 @ifnet_get_address_list_family(i32, i32***, i32) #1

declare dso_local i32 @inet_arp_init_ifaddr(i32, i32*) #1

declare dso_local i32 @ifnet_free_address_list(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
