; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_estimate_stereo_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_estimate_stereo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@MLP_CHMODE_LEFT_RIGHT = common dso_local global i64 0, align 8
@MLP_CHMODE_LEFT_SIDE = common dso_local global i64 0, align 8
@MLP_CHMODE_RIGHT_SIDE = common dso_local global i64 0, align 8
@MLP_CHMODE_MID_SIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @estimate_stereo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_stereo_mode(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = bitcast [4 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 2, i32* %7, align 4
  br label %19

19:                                               ; preds = %115, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %118

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %35, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 2, %44
  %46 = sub nsw i32 %34, %45
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %47, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %46, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 2, %76
  %78 = sub nsw i32 %66, %77
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %79, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %78, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @FFABS(i32 %90)
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = add nsw i64 %93, %91
  store i64 %94, i64* %92, align 16
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @FFABS(i32 %95)
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %96
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = ashr i32 %102, 1
  %104 = call i64 @FFABS(i32 %103)
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %106 = load i64, i64* %105, align 16
  %107 = add nsw i64 %106, %104
  store i64 %107, i64* %105, align 16
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i64 @FFABS(i32 %110)
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %25
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %19

118:                                              ; preds = %19
  %119 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %120 = load i64, i64* %119, align 16
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %120, %122
  %124 = load i64, i64* @MLP_CHMODE_LEFT_RIGHT, align 8
  %125 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %124
  store i64 %123, i64* %125, align 8
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %127 = load i64, i64* %126, align 16
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %127, %129
  %131 = load i64, i64* @MLP_CHMODE_LEFT_SIDE, align 8
  %132 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %131
  store i64 %130, i64* %132, align 8
  %133 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %134, %136
  %138 = load i64, i64* @MLP_CHMODE_RIGHT_SIDE, align 8
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %138
  store i64 %137, i64* %139, align 8
  %140 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %141 = load i64, i64* %140, align 16
  %142 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = load i64, i64* @MLP_CHMODE_MID_SIDE, align 8
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %145
  store i64 %144, i64* %146, align 8
  store i32 1, i32* %7, align 4
  br label %147

147:                                              ; preds = %163, %118
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 3
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %154, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %160, %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %147

166:                                              ; preds = %147
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @FFABS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
