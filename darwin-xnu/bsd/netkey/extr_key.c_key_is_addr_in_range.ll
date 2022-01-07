; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_is_addr_in_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_is_addr_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.secpolicyaddrrange = type { i32, i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.secpolicyaddrrange*)* @key_is_addr_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_is_addr_in_range(%struct.sockaddr_storage* %0, %struct.secpolicyaddrrange* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.secpolicyaddrrange*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.secpolicyaddrrange* %1, %struct.secpolicyaddrrange** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %8 = icmp eq %struct.sockaddr_storage* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.secpolicyaddrrange*, %struct.secpolicyaddrrange** %5, align 8
  %11 = icmp eq %struct.secpolicyaddrrange* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %9
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %16 = load %struct.secpolicyaddrrange*, %struct.secpolicyaddrrange** %5, align 8
  %17 = getelementptr inbounds %struct.secpolicyaddrrange, %struct.secpolicyaddrrange* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.sockaddr*
  %19 = call i32 @key_sockaddrcmp(%struct.sockaddr* %15, %struct.sockaddr* %18, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %40

26:                                               ; preds = %22, %13
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  %29 = load %struct.secpolicyaddrrange*, %struct.secpolicyaddrrange** %5, align 8
  %30 = getelementptr inbounds %struct.secpolicyaddrrange, %struct.secpolicyaddrrange* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.sockaddr*
  %32 = call i32 @key_sockaddrcmp(%struct.sockaddr* %28, %struct.sockaddr* %31, i32 1)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %35, %26
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %25, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @key_sockaddrcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
