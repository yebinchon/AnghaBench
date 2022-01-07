; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_ns_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_ns_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.nd_opt_nonce = type { i32 }
%struct.dadq = type { i32, i32, i32 }

@dad_enhanced = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*, i8*, i32, %struct.nd_opt_nonce*)* @nd6_dad_ns_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_ns_input(%struct.ifaddr* %0, i8* %1, i32 %2, %struct.nd_opt_nonce* %3) #0 {
  %5 = alloca %struct.ifaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_opt_nonce*, align 8
  %9 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nd_opt_nonce* %3, %struct.nd_opt_nonce** %8, align 8
  %10 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %11 = icmp ne %struct.ifaddr* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load i64, i64* @dad_enhanced, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.nd_opt_nonce* null, %struct.nd_opt_nonce** %8, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %19 = load %struct.nd_opt_nonce*, %struct.nd_opt_nonce** %8, align 8
  %20 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %18, %struct.nd_opt_nonce* %19)
  store %struct.dadq* %20, %struct.dadq** %9, align 8
  %21 = load %struct.dadq*, %struct.dadq** %9, align 8
  %22 = icmp eq %struct.dadq* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %52

24:                                               ; preds = %17
  %25 = load %struct.dadq*, %struct.dadq** %9, align 8
  %26 = call i32 @DAD_LOCK(%struct.dadq* %25)
  %27 = load %struct.dadq*, %struct.dadq** %9, align 8
  %28 = getelementptr inbounds %struct.dadq, %struct.dadq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.dadq*, %struct.dadq** %9, align 8
  %39 = getelementptr inbounds %struct.dadq, %struct.dadq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %43 = call i32 @memcpy(i32 %40, i8* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.dadq*, %struct.dadq** %9, align 8
  %46 = getelementptr inbounds %struct.dadq, %struct.dadq* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %33, %24
  %48 = load %struct.dadq*, %struct.dadq** %9, align 8
  %49 = call i32 @DAD_UNLOCK(%struct.dadq* %48)
  %50 = load %struct.dadq*, %struct.dadq** %9, align 8
  %51 = call i32 @DAD_REMREF(%struct.dadq* %50)
  br label %52

52:                                               ; preds = %47, %23
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, %struct.nd_opt_nonce*) #1

declare dso_local i32 @DAD_LOCK(%struct.dadq*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @DAD_UNLOCK(%struct.dadq*) #1

declare dso_local i32 @DAD_REMREF(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
