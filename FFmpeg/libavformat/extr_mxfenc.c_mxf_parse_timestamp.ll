; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_parse_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_parse_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mxf_parse_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_parse_timestamp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  %6 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %7, 1000000
  store i32 %8, i32* %4, align 4
  %9 = call %struct.tm* @gmtime_r(i32* %4, %struct.tm* %5)
  store %struct.tm* %9, %struct.tm** %6, align 8
  %10 = load %struct.tm*, %struct.tm** %6, align 8
  %11 = icmp ne %struct.tm* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.tm*, %struct.tm** %6, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1900
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 48
  %20 = load %struct.tm*, %struct.tm** %6, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 40
  %26 = or i32 %19, %25
  %27 = load %struct.tm*, %struct.tm** %6, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 32
  %32 = or i32 %26, %31
  %33 = load %struct.tm*, %struct.tm** %6, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 24
  %37 = or i32 %32, %36
  %38 = load %struct.tm*, %struct.tm** %6, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %37, %41
  %43 = load %struct.tm*, %struct.tm** %6, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = load i32, i32* %3, align 4
  %49 = srem i32 %48, 1000000
  %50 = sdiv i32 %49, 4000
  %51 = or i32 %47, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %13, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
