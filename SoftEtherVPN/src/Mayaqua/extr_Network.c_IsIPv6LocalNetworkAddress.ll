; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsIPv6LocalNetworkAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsIPv6LocalNetworkAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPV6_ADDR_LOCAL_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_GLOBAL_UNICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsIPv6LocalNetworkAddress(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @IsIP6(i32* %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @IsZeroIp(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %77

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @GetIPAddrType6(i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IPV6_ADDR_LOCAL_UNICAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IPV6_ADDR_GLOBAL_UNICAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %77

37:                                               ; preds = %31
  %38 = call i32 @IntToSubnetMask6(i32* %8, i32 64)
  %39 = call i32* (...) @GetHostIPAddressList()
  store i32* %39, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %70, %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @LIST_NUM(i32* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @LIST_DATA(i32* %46, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @IsIP6(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @IsZeroIp(i32* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @IsLocalHostIP6(i32* %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @IsInSameNetwork6(i32* %61, i32* %62, i32* %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @FreeHostIPAddressList(i32* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %36, %30, %22, %17, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @IsIP6(i32*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i32 @GetIPAddrType6(i32*) #1

declare dso_local i32 @IntToSubnetMask6(i32*, i32) #1

declare dso_local i32* @GetHostIPAddressList(...) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @IsLocalHostIP6(i32*) #1

declare dso_local i64 @IsInSameNetwork6(i32*, i32*, i32*) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
