; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN76496 = type { i32*, i32, i32*, i32, i32, i32*, i32*, i64, i64* }

@ono_sn = common dso_local global %struct.SN76496 zeroinitializer, align 8
@sn76496_regs = common dso_local global i32* null, align 8
@NG_PRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SN76496_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.SN76496*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.SN76496* @ono_sn, %struct.SN76496** %5, align 8
  %7 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %8 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** @sn76496_regs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %12 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SN76496_set_clock(%struct.SN76496* %13, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %26, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %21 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %20, i32 0, i32 8
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %31 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %49, %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %37 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %43 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 15, i32* %48, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %6, align 4
  br label %32

52:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %58 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %64 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %67 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %73 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %65, i32* %77, align 4
  br label %78

78:                                               ; preds = %56
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load i32, i32* @NG_PRESET, align 4
  %83 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %84 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %86 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 1
  %89 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %90 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.SN76496*, %struct.SN76496** %5, align 8
  %94 = call i32 @SN76496_set_gain(%struct.SN76496* %93, i32 0)
  ret i32 0
}

declare dso_local i32 @SN76496_set_clock(%struct.SN76496*, i32) #1

declare dso_local i32 @SN76496_set_gain(%struct.SN76496*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
