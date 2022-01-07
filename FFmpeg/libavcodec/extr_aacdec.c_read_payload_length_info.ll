; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_payload_length_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_payload_length_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LATMContext = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LATMContext*, i32*)* @read_payload_length_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_payload_length_info(%struct.LATMContext* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LATMContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.LATMContext* %0, %struct.LATMContext** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %9 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @get_bits_left(i32* %14)
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @get_bits(i32* %20, i32 8)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %13, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %32 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %37 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %30
  %40 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %41 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %46 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %51 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %44, %39
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @skip_bits(i32* %55, i32 2)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %35, %28, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
