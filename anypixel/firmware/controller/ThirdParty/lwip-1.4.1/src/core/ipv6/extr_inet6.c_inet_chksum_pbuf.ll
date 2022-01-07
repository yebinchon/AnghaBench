; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_inet6.c_inet_chksum_pbuf.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_inet6.c_inet_chksum_pbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_chksum_pbuf(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  store %struct.pbuf* %6, %struct.pbuf** %4, align 8
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @chksum(i32 %13, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %26, %10
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 16
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 16
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %3, align 4
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 1, %39
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 65280
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 255
  %45 = or i32 %42, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %32
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %48, i32 0, i32 2
  %50 = load %struct.pbuf*, %struct.pbuf** %49, align 8
  store %struct.pbuf* %50, %struct.pbuf** %4, align 8
  br label %7

51:                                               ; preds = %7
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = or i32 %57, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 65535
  %65 = xor i32 %64, -1
  ret i32 %65
}

declare dso_local i64 @chksum(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
