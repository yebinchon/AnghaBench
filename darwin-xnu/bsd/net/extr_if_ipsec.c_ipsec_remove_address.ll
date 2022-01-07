; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_remove_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_remove_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.sockaddr, i32 }
%struct.sockaddr = type { i32 }
%struct.in6_ifreq = type { %struct.sockaddr, i32 }

@PF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ipsec_remove_address - ifaddr_address failed: %d\00", align 1
@SIOCDIFADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ipsec_remove_address - SIOCDIFADDR failed: %d\00", align 1
@PF_INET6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"ipsec_remove_address - ifaddr_address failed (v6): %d\00", align 1
@SIOCDIFADDR_IN6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"ipsec_remove_address - SIOCDIFADDR_IN6 failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @ipsec_remove_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_remove_address(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifreq, align 4
  %11 = alloca %struct.in6_ifreq, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %4
  %16 = bitcast %struct.ifreq* %10 to %struct.in6_ifreq*
  %17 = call i32 @bzero(%struct.in6_ifreq* %16, i32 8)
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @ifnet_name(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ifnet_unit(i32 %22)
  %24 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %27 = call i32 @ifaddr_address(i32 %25, %struct.sockaddr* %26, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %44

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SIOCDIFADDR, align 4
  %36 = bitcast %struct.ifreq* %10 to %struct.in6_ifreq*
  %37 = call i32 @sock_ioctl(i32 %34, i32 %35, %struct.in6_ifreq* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %30
  br label %78

45:                                               ; preds = %4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @PF_INET6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = call i32 @bzero(%struct.in6_ifreq* %11, i32 8)
  %51 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @ifnet_name(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ifnet_unit(i32 %55)
  %57 = call i32 @snprintf(i32 %52, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 0
  %60 = call i32 @ifaddr_address(i32 %58, %struct.sockaddr* %59, i32 4)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %76

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SIOCDIFADDR_IN6, align 4
  %69 = call i32 @sock_ioctl(i32 %67, i32 %68, %struct.in6_ifreq* %11)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %45
  br label %78

78:                                               ; preds = %77, %44
  ret void
}

declare dso_local i32 @bzero(%struct.in6_ifreq*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @ifnet_name(i32) #1

declare dso_local i32 @ifnet_unit(i32) #1

declare dso_local i32 @ifaddr_address(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @sock_ioctl(i32, i32, %struct.in6_ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
