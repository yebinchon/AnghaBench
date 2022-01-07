; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_dgram_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_dgram_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp6_dgram_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %6 = load %struct.socket*, %struct.socket** %4, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @kauth_cred_issuser(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %14 = call i32 @icmp6_ctloutput(%struct.socket* %12, %struct.sockopt* %13)
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %17 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %23 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %29 [
    i32 157, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %28 = call i32 @icmp6_ctloutput(%struct.socket* %26, %struct.sockopt* %27)
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i32, i32* @EPERM, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %15
  %32 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPPROTO_IPV6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %41 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %47 [
    i32 130, label %43
    i32 149, label %43
    i32 128, label %43
    i32 129, label %43
    i32 133, label %43
    i32 134, label %43
    i32 135, label %43
    i32 138, label %43
    i32 137, label %43
    i32 147, label %43
    i32 146, label %43
    i32 148, label %43
    i32 141, label %43
    i32 142, label %43
    i32 140, label %43
    i32 144, label %43
    i32 143, label %43
    i32 136, label %43
    i32 145, label %43
    i32 132, label %43
    i32 131, label %43
    i32 152, label %43
    i32 153, label %43
    i32 155, label %43
    i32 154, label %43
    i32 156, label %43
    i32 151, label %43
    i32 150, label %43
    i32 139, label %43
  ]

43:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  %45 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %46 = call i32 @ip6_ctloutput(%struct.socket* %44, %struct.sockopt* %45)
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EPERM, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %43, %37, %29, %25, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @kauth_cred_issuser(i32) #1

declare dso_local i32 @icmp6_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_ctloutput(%struct.socket*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
