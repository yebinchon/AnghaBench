; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_icmp6type_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_icmp6type_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6_hdr = type { i32 }
%struct.ip6_fw = type { i32, i32* }

@IPV6_FW_F_ICMPBIT = common dso_local global i32 0, align 4
@IPV6_FW_ICMPTYPES_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icmp6_hdr*, %struct.ip6_fw*)* @icmp6type_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp6type_match(%struct.icmp6_hdr* %0, %struct.ip6_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icmp6_hdr*, align 8
  %5 = alloca %struct.ip6_fw*, align 8
  %6 = alloca i32, align 4
  store %struct.icmp6_hdr* %0, %struct.icmp6_hdr** %4, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %5, align 8
  %7 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %8 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IPV6_FW_F_ICMPBIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* @IPV6_FW_ICMPTYPES_DIM, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = mul i64 %22, 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %14
  %26 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %27 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 32
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %35, 32
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %25, %14
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
