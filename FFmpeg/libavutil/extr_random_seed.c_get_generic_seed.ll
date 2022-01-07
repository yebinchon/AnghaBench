; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_random_seed.c_get_generic_seed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_random_seed.c_get_generic_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVSHA = type { i32 }

@get_generic_seed.i = internal global i32 0, align 4
@get_generic_seed.buffer = internal global [512 x i32] zeroinitializer, align 16
@av_sha_size = common dso_local global i32 0, align 4
@TEST = common dso_local global i64 0, align 8
@CLOCKS_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_generic_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_generic_seed() #0 {
  %1 = alloca [15 x i32], align 16
  %2 = alloca %struct.AVSHA*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.AVSHA*
  store %struct.AVSHA* %11, %struct.AVSHA** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @get_generic_seed.i, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @av_sha_size, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 60, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert0(i32 %16)
  %18 = load i64, i64* @TEST, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @memset(i32* getelementptr inbounds ([512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 0), i32 0, i32 2048)
  store i32 0, i32* @get_generic_seed.i, align 4
  store i32 0, i32* %7, align 4
  br label %23

22:                                               ; preds = %0
  br label %23

23:                                               ; preds = %22, %20
  br label %24

24:                                               ; preds = %103, %23
  %25 = call i32 (...) @clock()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* @CLOCKS_PER_SEC, align 4
  %31 = icmp sgt i32 %30, 1000
  %32 = zext i1 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @get_generic_seed.i, align 4
  %41 = and i32 %40, 511
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 1664525, %44
  %46 = add nsw i32 %45, 1013904223
  %47 = load i32, i32* %4, align 4
  %48 = urem i32 %47, -1000328775
  %49 = add i32 %46, %48
  %50 = load i32, i32* @get_generic_seed.i, align 4
  %51 = and i32 %50, 511
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 %52
  store i32 %49, i32* %53, align 4
  br label %97

54:                                               ; preds = %24
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = urem i32 %58, -1000328775
  %60 = load i32, i32* @get_generic_seed.i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @get_generic_seed.i, align 4
  %62 = and i32 %61, 511
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* @CLOCKS_PER_SEC, align 4
  %71 = ashr i32 %70, 5
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %54
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @get_generic_seed.i, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %94, label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* @get_generic_seed.i, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp sgt i32 %84, 64
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @TEST, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @get_generic_seed.i, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  %93 = icmp sgt i32 %92, 8
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %81, %76
  br label %104

95:                                               ; preds = %89, %86
  br label %96

96:                                               ; preds = %95, %54
  br label %97

97:                                               ; preds = %96, %36
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %97
  br label %24

104:                                              ; preds = %94
  %105 = load i64, i64* @TEST, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 0), align 16
  br label %109

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.AVSHA*, %struct.AVSHA** %2, align 8
  %111 = call i32 @av_sha_init(%struct.AVSHA* %110, i32 160)
  %112 = load %struct.AVSHA*, %struct.AVSHA** %2, align 8
  %113 = call i32 @av_sha_update(%struct.AVSHA* %112, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @get_generic_seed.buffer, i64 0, i64 0), i32 2048)
  %114 = load %struct.AVSHA*, %struct.AVSHA** %2, align 8
  %115 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %116 = call i32 @av_sha_final(%struct.AVSHA* %114, i8* %115)
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %118 = call i32 @AV_RB32(i8* %117)
  %119 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 16
  %121 = call i32 @AV_RB32(i8* %120)
  %122 = add nsw i32 %118, %121
  ret i32 %122
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @clock(...) #1

declare dso_local i32 @av_sha_init(%struct.AVSHA*, i32) #1

declare dso_local i32 @av_sha_update(%struct.AVSHA*, i32*, i32) #1

declare dso_local i32 @av_sha_final(%struct.AVSHA*, i8*) #1

declare dso_local i32 @AV_RB32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
