; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_create_chrominance_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_create_chrominance_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8***, i8***, i8***, i8*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @create_chrominance_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_chrominance_lut(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %73, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %69, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %72

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 128
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 128
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sub nsw i32 %27, %30
  %32 = add nsw i32 %31, 32768
  %33 = add nsw i32 %32, 8388608
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = add nsw i32 %41, 32768
  %43 = add nsw i32 %42, 8388608
  %44 = ashr i32 %43, 16
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @av_clip_uint8(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i8***, i8**** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %46, i8** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i8* @av_clip_uint8(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i8***, i8**** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8**, i8*** %61, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %58, i8** %68, align 8
  br label %69

69:                                               ; preds = %20
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %17

72:                                               ; preds = %17
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %13

76:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %137, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 1024
  br i1 %79, label %80, label %140

80:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %133, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 1024
  br i1 %83, label %84, label %136

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 512
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 512
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %91, %94
  %96 = add nsw i32 %95, 32768
  %97 = add nsw i32 %96, 33554432
  %98 = ashr i32 %97, 16
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = add nsw i32 %105, 32768
  %107 = add nsw i32 %106, 33554432
  %108 = ashr i32 %107, 16
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i8* @av_clip_uintp2(i32 %109, i32 10)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i8***, i8**** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8**, i8*** %113, i64 %115
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %110, i8** %120, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i8* @av_clip_uintp2(i32 %121, i32 10)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8***, i8**** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8**, i8*** %125, i64 %127
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  store i8* %122, i8** %132, align 8
  br label %133

133:                                              ; preds = %84
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %81

136:                                              ; preds = %81
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %77

140:                                              ; preds = %77
  ret void
}

declare dso_local i8* @av_clip_uint8(i32) #1

declare dso_local i8* @av_clip_uintp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
