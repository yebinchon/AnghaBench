; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arch.c_uip_ipchksum_pbuf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arch.c_uip_ipchksum_pbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32, i32, %struct.uip_pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_ipchksum_pbuf(%struct.uip_pbuf* %0) #0 {
  %2 = alloca %struct.uip_pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.uip_pbuf*, %struct.uip_pbuf** %2, align 8
  store %struct.uip_pbuf* %5, %struct.uip_pbuf** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %8 = icmp ne %struct.uip_pbuf* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %11 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %14 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @uip_chksum(i32 %12, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %9
  %22 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %23 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %22, i32 0, i32 2
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %23, align 8
  store %struct.uip_pbuf* %24, %struct.uip_pbuf** %4, align 8
  br label %6

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %3, align 4
  %28 = ashr i32 %27, 16
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, 65535
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, 65535
  %43 = xor i64 %42, -1
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

declare dso_local i64 @uip_chksum(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
