; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_get_block_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_get_block_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@uni_mpeg4_intra_rl_len = common dso_local global i64* null, align 8
@uni_mpeg4_inter_rl_len = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i64*)* @mpeg4_get_block_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_get_block_length(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @mpeg4_get_dc_length(i32 %35, i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %140

46:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  %47 = load i64*, i64** @uni_mpeg4_intra_rl_len, align 8
  store i64* %47, i64** %14, align 8
  br label %54

48:                                               ; preds = %5
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %140

52:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  %53 = load i64*, i64** @uni_mpeg4_inter_rl_len, align 8
  store i64* %53, i64** %14, align 8
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %101, %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %61
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 64
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, -128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %72
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @UNI_MPEG4_ENC_INDEX(i32 0, i32 %83, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i64*, i64** %14, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %16, align 4
  br label %98

95:                                               ; preds = %72
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 30
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %82
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %61
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %57

104:                                              ; preds = %57
  %105 = load i32*, i32** %8, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 64
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = and i32 %119, -128
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %104
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @UNI_MPEG4_ENC_INDEX(i32 1, i32 %123, i32 %124)
  store i32 %125, i32* %22, align 4
  %126 = load i64*, i64** %14, align 8
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %16, align 4
  br label %138

135:                                              ; preds = %104
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 30
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %135, %122
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %51, %44
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i64 @mpeg4_get_dc_length(i32, i32) #1

declare dso_local i32 @UNI_MPEG4_ENC_INDEX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
