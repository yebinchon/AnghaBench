; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdec.c_dv_init_weight_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdec.c_dv_init_weight_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@dv_init_weight_tables.dv100_qstep = internal constant [16 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 52], align 16
@dv_iweight_720_y = common dso_local global i32* null, align 8
@dv_iweight_720_c = common dso_local global i32* null, align 8
@dv_iweight_1080_y = common dso_local global i32* null, align 8
@dv_iweight_1080_c = common dso_local global i32* null, align 8
@dv_init_weight_tables.dv_quant_areas = internal constant [4 x i32] [i32 6, i32 21, i32 43, i32 64], align 16
@dv_iweight_88 = common dso_local global i32* null, align 8
@ff_dv_quant_shifts = common dso_local global i32** null, align 8
@dv_iweight_248 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @dv_init_weight_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_init_weight_tables(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i64 @DV_PROFILE_IS_HD(%struct.TYPE_7__* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 4096, i32 2816
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i64 @DV_PROFILE_IS_HD(%struct.TYPE_7__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 720
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** @dv_iweight_720_y, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** @dv_iweight_720_c, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32* %40, i32** %12, align 8
  br label %46

41:                                               ; preds = %31
  %42 = load i32*, i32** @dv_iweight_1080_y, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** @dv_iweight_1080_c, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32* %45, i32** %12, align 8
  br label %46

46:                                               ; preds = %41, %36
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %100

50:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 64
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* @dv_init_weight_tables.dv100_qstep, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 9
  %65 = shl i32 %62, %64
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* @dv_init_weight_tables.dv100_qstep, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 9
  %80 = shl i32 %77, %79
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %55

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %51

96:                                               ; preds = %51
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %47

100:                                              ; preds = %47
  br label %165

101:                                              ; preds = %2
  %102 = load i32*, i32** @dv_iweight_88, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32* %103, i32** %13, align 8
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %159, %101
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %164

107:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %155, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 22
  br i1 %110, label %111, label %158

111:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %151, %111
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %154

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %147, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* @dv_init_weight_tables.dv_quant_areas, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %116
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32**, i32*** @ff_dv_quant_shifts, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  %139 = shl i32 %128, %138
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %9, align 8
  %143 = load i32, i32* %141, align 4
  %144 = shl i32 %143, 1
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  br label %147

147:                                              ; preds = %123
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %116

150:                                              ; preds = %116
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %112

154:                                              ; preds = %112
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %108

158:                                              ; preds = %108
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  %162 = load i32*, i32** @dv_iweight_248, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32* %163, i32** %13, align 8
  br label %104

164:                                              ; preds = %104
  br label %165

165:                                              ; preds = %164, %100
  ret void
}

declare dso_local i64 @DV_PROFILE_IS_HD(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
