; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_inet.c_inet_chksum_pbuf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_inet.c_inet_chksum_pbuf.c"
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

7:                                                ; preds = %53, %1
  %8 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %57

10:                                               ; preds = %7
  %11 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @LWIP_CHKSUM(i32 %13, i32 %16)
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
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 65535
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = add i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 1, %42
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 65280
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 255
  %50 = or i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 2
  %56 = load %struct.pbuf*, %struct.pbuf** %55, align 8
  store %struct.pbuf* %56, %struct.pbuf** %4, align 8
  br label %7

57:                                               ; preds = %7
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, 255
  %64 = shl i64 %63, 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 65280
  %68 = lshr i64 %67, 8
  %69 = or i64 %64, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %57
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 65535
  %75 = xor i64 %74, -1
  %76 = trunc i64 %75 to i32
  ret i32 %76
}

declare dso_local i64 @LWIP_CHKSUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
