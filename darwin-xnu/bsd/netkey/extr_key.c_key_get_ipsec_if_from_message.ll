; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_get_ipsec_if_from_message.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_get_ipsec_if_from_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msghdr = type { i64* }
%struct.sadb_x_ipsecif = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sadb_msghdr*, i32)* @key_get_ipsec_if_from_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @key_get_ipsec_if_from_message(%struct.sadb_msghdr* %0, i32 %1) #0 {
  %3 = alloca %struct.sadb_msghdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sadb_x_ipsecif*, align 8
  %6 = alloca i32*, align 8
  store %struct.sadb_msghdr* %0, %struct.sadb_msghdr** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sadb_x_ipsecif* null, %struct.sadb_x_ipsecif** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %3, align 8
  %8 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.sadb_x_ipsecif*
  store %struct.sadb_x_ipsecif* %15, %struct.sadb_x_ipsecif** %5, align 8
  %16 = load %struct.sadb_x_ipsecif*, %struct.sadb_x_ipsecif** %5, align 8
  %17 = icmp ne %struct.sadb_x_ipsecif* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.sadb_x_ipsecif*, %struct.sadb_x_ipsecif** %5, align 8
  %20 = getelementptr inbounds %struct.sadb_x_ipsecif, %struct.sadb_x_ipsecif* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.sadb_x_ipsecif*, %struct.sadb_x_ipsecif** %5, align 8
  %27 = getelementptr inbounds %struct.sadb_x_ipsecif, %struct.sadb_x_ipsecif* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @ifnet_find_by_name(i64* %28, i32** %6)
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32*, i32** %6, align 8
  ret i32* %32
}

declare dso_local i32 @ifnet_find_by_name(i64*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
