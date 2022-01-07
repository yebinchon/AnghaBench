; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_detach_ip.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_detach_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.in6_ifreq = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@SIOCPROTODETACH = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@SIOCPROTODETACH_IN6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @ipsec_detach_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_detach_ip(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 4
  %9 = alloca %struct.in6_ifreq, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @PF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = bitcast %struct.ifreq* %8 to %struct.in6_ifreq*
  %16 = call i32 @bzero(%struct.in6_ifreq* %15, i32 4)
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @ifnet_name(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ifnet_unit(i32 %21)
  %23 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SIOCPROTODETACH, align 4
  %26 = bitcast %struct.ifreq* %8 to %struct.in6_ifreq*
  %27 = call i32 @sock_ioctl(i32 %24, i32 %25, %struct.in6_ifreq* %26)
  store i32 %27, i32* %7, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PF_INET6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = call i32 @bzero(%struct.in6_ifreq* %9, i32 4)
  %34 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @ifnet_name(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ifnet_unit(i32 %38)
  %40 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SIOCPROTODETACH_IN6, align 4
  %43 = call i32 @sock_ioctl(i32 %41, i32 %42, %struct.in6_ifreq* %9)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %32, %28
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @bzero(%struct.in6_ifreq*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @ifnet_name(i32) #1

declare dso_local i32 @ifnet_unit(i32) #1

declare dso_local i32 @sock_ioctl(i32, i32, %struct.in6_ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
