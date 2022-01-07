; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_read_noise_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_read_noise_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*** }

@noise_bands_size = common dso_local global i32* null, align 8
@vtable = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @read_noise_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_noise_data(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %161, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %164

21:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %157, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** @noise_bands_size, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %160

31:                                               ; preds = %22
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** @vtable, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @qdmc_get_vlc(i32* %32, i32* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %3, align 4
  br label %165

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32***, i32**** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32**, i32*** %57, i64 %59
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %54, i32* %66, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %151, %50
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 15
  br i1 %69, label %70, label %156

70:                                               ; preds = %67
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** @vtable, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @qdmc_get_vlc(i32* %71, i32* %73, i32 1)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %3, align 4
  br label %165

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** @vtable, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @qdmc_get_vlc(i32* %82, i32* %84, i32 0)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %89, i32* %3, align 4
  br label %165

90:                                               ; preds = %79
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %13, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %102, 2
  %104 = sub nsw i32 %101, %103
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %100, %94
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp sgt i32 %110, 16
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %3, align 4
  br label %165

114:                                              ; preds = %105
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %146, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  %120 = icmp sle i32 %116, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %124, %125
  %127 = mul nsw i32 %123, %126
  %128 = load i32, i32* %14, align 4
  %129 = sdiv i32 %127, %128
  %130 = add nsw i32 %122, %129
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32***, i32**** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32**, i32*** %134, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %131, i32* %145, align 4
  br label %146

146:                                              ; preds = %121
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %115

151:                                              ; preds = %115
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %67

156:                                              ; preds = %67
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %22

160:                                              ; preds = %22
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %15

164:                                              ; preds = %15
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %112, %88, %77, %38
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @qdmc_get_vlc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
