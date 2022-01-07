; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_read_wave_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_read_wave_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@vtable = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @read_wave_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_wave_data(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %160, %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %163

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 1, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 4, %30
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %156, %22
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** @vtable, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = call i32 @qdmc_get_vlc(i32* %33, i32* %35, i32 1)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %3, align 4
  br label %164

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %18, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %50, %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 2, %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %13, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %17, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %159

69:                                               ; preds = %62
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @get_bits(i32* %75, i32 2)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** @vtable, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = call i32 @qdmc_get_vlc(i32* %78, i32* %80, i32 0)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %3, align 4
  br label %164

86:                                               ; preds = %77
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @get_bits(i32* %87, i32 3)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %122

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** @vtable, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = call i32 @qdmc_get_vlc(i32* %92, i32* %94, i32 0)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %3, align 4
  br label %164

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** @vtable, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  %107 = call i32 @qdmc_get_vlc(i32* %104, i32* %106, i32 0)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %3, align 4
  br label %164

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 8
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %118, %112
  br label %122

122:                                              ; preds = %121, %86
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = ashr i32 %123, %124
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %122
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 1
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @add_tone(%struct.TYPE_4__* %132, i32 %133, i32 %134, i32 %135, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %154

143:                                              ; preds = %131
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %8, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %149, 1
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @add_tone(%struct.TYPE_4__* %144, i32 %145, i32 %146, i32 %147, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %143, %131
  br label %155

155:                                              ; preds = %154, %122
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %32

159:                                              ; preds = %68
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %19

163:                                              ; preds = %19
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %110, %98, %84, %39
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @qdmc_get_vlc(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @add_tone(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
