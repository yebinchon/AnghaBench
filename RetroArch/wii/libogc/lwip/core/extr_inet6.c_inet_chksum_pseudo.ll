; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_inet6.c_inet_chksum_pseudo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_inet6.c_inet_chksum_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32, %struct.pbuf* }
%struct.ip_addr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_chksum_pseudo(%struct.pbuf* %0, %struct.ip_addr* %1, %struct.ip_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca %struct.ip_addr*, align 8
  %8 = alloca %struct.ip_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pbuf* %0, %struct.pbuf** %6, align 8
  store %struct.ip_addr* %1, %struct.ip_addr** %7, align 8
  store %struct.ip_addr* %2, %struct.ip_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %15, %struct.pbuf** %12, align 8
  br label %16

16:                                               ; preds = %58, %5
  %17 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %18 = icmp ne %struct.pbuf* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @chksum(i32 %22, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %35, %19
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 16
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 65535
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 16
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %11, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 1, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 255
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 65280
  %55 = ashr i32 %54, 8
  %56 = or i32 %52, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i32 0, i32 2
  %61 = load %struct.pbuf*, %struct.pbuf** %60, align 8
  store %struct.pbuf* %61, %struct.pbuf** %12, align 8
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 255
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 65280
  %71 = ashr i32 %70, 8
  %72 = or i32 %68, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %65, %62
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %111, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = load %struct.ip_addr*, %struct.ip_addr** %7, align 8
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 65535
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load %struct.ip_addr*, %struct.ip_addr** %8, align 8
  %90 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 65535
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %104, %77
  %101 = load i32, i32* %11, align 4
  %102 = ashr i32 %101, 16
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 65535
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 16
  %109 = add nsw i32 %106, %108
  store i32 %109, i32* %11, align 4
  br label %100

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %74

114:                                              ; preds = %74
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @htons(i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = getelementptr inbounds i32, i32* %10, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 65535
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = getelementptr inbounds i32, i32* %10, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 65535
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %134, %114
  %131 = load i32, i32* %11, align 4
  %132 = ashr i32 %131, 16
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 65535
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, 16
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %11, align 4
  br label %130

140:                                              ; preds = %130
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, 65535
  %143 = xor i32 %142, -1
  ret i32 %143
}

declare dso_local i64 @chksum(i32, i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
