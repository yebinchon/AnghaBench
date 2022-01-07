; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/ipv4/extr_ip_frag.c_copy_from_pbuf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/ipv4/extr_ip_frag.c_copy_from_pbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, %struct.pbuf*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pbuf* (%struct.pbuf*, i32*, i32*, i32)* @copy_from_pbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pbuf* @copy_from_pbuf(%struct.pbuf* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pbuf* %0, %struct.pbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %64, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy(i32* %42, i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 1
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 8
  store %struct.pbuf* %60, %struct.pbuf** %5, align 8
  br label %64

61:                                               ; preds = %40
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  ret %struct.pbuf* %66
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
