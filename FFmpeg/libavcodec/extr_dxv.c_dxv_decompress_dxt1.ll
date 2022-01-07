; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_dxt1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_dxt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @dxv_decompress_dxt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxv_decompress_dxt1(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @bytestream2_get_le32(i32* %19)
  %21 = call i32 @AV_WL32(i64 %18, i64 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @bytestream2_get_le32(i32* %26)
  %28 = call i32 @AV_WL32(i64 %25, i64 %27)
  br label %29

29:                                               ; preds = %143, %1
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 4
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %37, label %144

37:                                               ; preds = %29
  %38 = call i32 @CHECKPOINT(i32 2)
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 4, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = call i64 @AV_RL32(i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 4, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @AV_WL32(i64 %58, i64 %59)
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = mul nsw i32 4, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %65, %70
  %72 = call i64 @AV_RL32(i64 %71)
  store i64 %72, i64* %6, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 4, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @AV_WL32(i64 %79, i64 %80)
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %143

84:                                               ; preds = %37
  %85 = call i32 @CHECKPOINT(i32 2)
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = mul nsw i32 4, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %91, %96
  %98 = call i64 @AV_RL32(i64 %97)
  store i64 %98, i64* %6, align 8
  br label %102

99:                                               ; preds = %84
  %100 = load i32*, i32** %4, align 8
  %101 = call i64 @bytestream2_get_le32(i32* %100)
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %99, %88
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 4, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @AV_WL32(i64 %109, i64 %110)
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = call i32 @CHECKPOINT(i32 2)
  %115 = load i64, i64* %7, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %102
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %121, %122
  %124 = mul nsw i32 4, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %120, %125
  %127 = call i64 @AV_RL32(i64 %126)
  store i64 %127, i64* %6, align 8
  br label %131

128:                                              ; preds = %102
  %129 = load i32*, i32** %4, align 8
  %130 = call i64 @bytestream2_get_le32(i32* %129)
  store i64 %130, i64* %6, align 8
  br label %131

131:                                              ; preds = %128, %117
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = mul nsw i32 4, %135
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %134, %137
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @AV_WL32(i64 %138, i64 %139)
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %131, %41
  br label %29

144:                                              ; preds = %29
  ret i32 0
}

declare dso_local i32 @AV_WL32(i64, i64) #1

declare dso_local i64 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @CHECKPOINT(i32) #1

declare dso_local i64 @AV_RL32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
