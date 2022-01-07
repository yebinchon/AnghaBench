; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_set_deblock_coef.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_set_deblock_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }

@motion_val = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @rv34_set_deblock_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv34_set_deblock_coef(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = add nsw i32 %14, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32*, i32** @motion_val, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32** @int16_t(i32 %35)
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  store i32* %33, i32** %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %97, %1
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %100

41:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %87, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %90

45:                                               ; preds = %42
  %46 = load i32*, i32** @motion_val, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i64 @is_mv_diff_gt_3(i32* %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = shl i32 17, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63, %60
  %69 = load i32*, i32** @motion_val, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @is_mv_diff_gt_3(i32* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %79, %81
  %83 = shl i32 3, %82
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %78, %68, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %42

90:                                               ; preds = %42
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** @motion_val, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** @motion_val, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, i32* %7, align 4
  br label %38

100:                                              ; preds = %38
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, -16
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, -4370
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %188

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 17476
  %124 = ashr i32 %123, 1
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, 3840
  %129 = ashr i32 %128, 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %121
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 4369
  %139 = shl i32 %138, 3
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = add nsw i32 %146, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %142, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %139
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %136, %121
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %187, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, 15
  %167 = shl i32 %166, 12
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %177, %180
  %182 = add nsw i32 %173, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %170, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %167
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %164, %159
  br label %188

188:                                              ; preds = %187, %116
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %189, %190
  ret i32 %191
}

declare dso_local i32** @int16_t(i32) #1

declare dso_local i64 @is_mv_diff_gt_3(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
