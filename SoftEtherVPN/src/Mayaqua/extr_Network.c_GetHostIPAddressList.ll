; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostIPAddressList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostIPAddressList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@host_ip_address_list_cache_lock = common dso_local global i32* null, align 8
@host_ip_address_list_cache_last = common dso_local global i64 0, align 8
@HOST_IP_ADDRESS_LIST_CACHE = common dso_local global i64 0, align 8
@host_ip_address_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetHostIPAddressList() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %4 = load i32*, i32** @host_ip_address_list_cache_lock, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32* (...) @GetHostIPAddressListInternal()
  store i32* %7, i32** %1, align 8
  br label %43

8:                                                ; preds = %0
  %9 = load i32*, i32** @host_ip_address_list_cache_lock, align 8
  %10 = call i32 @Lock(i32* %9)
  %11 = call i64 (...) @Tick64()
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @host_ip_address_list_cache_last, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = load i64, i64* @host_ip_address_list_cache_last, align 8
  %16 = load i64, i64* @HOST_IP_ADDRESS_LIST_CACHE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** @host_ip_address_cache, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %14, %8
  %24 = load i32*, i32** @host_ip_address_cache, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** @host_ip_address_cache, align 8
  %28 = call i32 @FreeHostIPAddressList(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = call i32* (...) @GetHostIPAddressListInternal()
  store i32* %30, i32** @host_ip_address_cache, align 8
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* @host_ip_address_list_cache_last, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32*, i32** @host_ip_address_cache, align 8
  %34 = call i32* @CloneIPAddressList(i32* %33)
  store i32* %34, i32** %2, align 8
  %35 = load i32*, i32** @host_ip_address_list_cache_lock, align 8
  %36 = call i32 @Unlock(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32* (...) @GetHostIPAddressListInternal()
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32*, i32** %2, align 8
  store i32* %42, i32** %1, align 8
  br label %43

43:                                               ; preds = %41, %6
  %44 = load i32*, i32** %1, align 8
  ret i32* %44
}

declare dso_local i32* @GetHostIPAddressListInternal(...) #1

declare dso_local i32 @Lock(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

declare dso_local i32* @CloneIPAddressList(i32*) #1

declare dso_local i32 @Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
