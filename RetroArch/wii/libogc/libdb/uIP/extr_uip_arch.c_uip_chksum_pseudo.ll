; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arch.c_uip_chksum_pseudo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arch.c_uip_chksum_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, i32, %struct.uip_pbuf* }
%struct.uip_ip_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uip_chksum_pseudo(%struct.uip_pbuf* %0, %struct.uip_ip_addr* %1, %struct.uip_ip_addr* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.uip_pbuf*, align 8
  %7 = alloca %struct.uip_ip_addr*, align 8
  %8 = alloca %struct.uip_ip_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %6, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %7, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* %10, align 8
  store i64 %15, i64* %13, align 8
  %16 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  store %struct.uip_pbuf* %16, %struct.uip_pbuf** %14, align 8
  br label %17

17:                                               ; preds = %49, %5
  %18 = load %struct.uip_pbuf*, %struct.uip_pbuf** %14, align 8
  %19 = icmp ne %struct.uip_pbuf* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %13, align 8
  %22 = icmp sgt i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %53

25:                                               ; preds = %23
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.uip_pbuf*, %struct.uip_pbuf** %14, align 8
  %28 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.uip_pbuf*, %struct.uip_pbuf** %14, align 8
  %33 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load i64, i64* %13, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %34, %31 ], [ %36, %35 ]
  store i64 %38, i64* %12, align 8
  %39 = load %struct.uip_pbuf*, %struct.uip_pbuf** %14, align 8
  %40 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @uip_chksum(i32 %41, i64 %42)
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load %struct.uip_pbuf*, %struct.uip_pbuf** %14, align 8
  %51 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %50, i32 0, i32 2
  %52 = load %struct.uip_pbuf*, %struct.uip_pbuf** %51, align 8
  store %struct.uip_pbuf* %52, %struct.uip_pbuf** %14, align 8
  br label %17

53:                                               ; preds = %23
  %54 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %55 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, 65535
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %62 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, 65535
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %8, align 8
  %70 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 65535
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %11, align 8
  %76 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %8, align 8
  %77 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 16
  %80 = sext i32 %79 to i64
  %81 = and i64 %80, 65535
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @htons(i64 %84)
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @htons(i64 %88)
  %90 = load i64, i64* %11, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %96, %53
  %93 = load i64, i64* %11, align 8
  %94 = ashr i64 %93, 16
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = and i64 %97, 65535
  %99 = load i64, i64* %11, align 8
  %100 = ashr i64 %99, 16
  %101 = add i64 %98, %100
  store i64 %101, i64* %11, align 8
  br label %92

102:                                              ; preds = %92
  %103 = load i64, i64* %11, align 8
  %104 = and i64 %103, 65535
  %105 = xor i64 %104, -1
  ret i64 %105
}

declare dso_local i64 @uip_chksum(i32, i64) #1

declare dso_local i64 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
