; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_get_b_cbp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_get_b_cbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64*, i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32)* }

@FF_MPV_FLAG_CBP_RD = common dso_local global i32 0, align 4
@FF_LAMBDA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, [64 x i32]*, i32, i32, i32)* @get_b_cbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_b_cbp(%struct.TYPE_5__* %0, [64 x i32]* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [64 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store [64 x i32]* %1, [64 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FF_MPV_FLAG_CBP_RD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %132

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FF_LAMBDA_SHIFT, align 4
  %27 = sub nsw i32 %26, 6
  %28 = ashr i32 %25, %27
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %59, %22
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 5, %53
  %55 = shl i32 1, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %41, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  store i32 -6, i32* %15, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %15, align 4
  %78 = sub nsw i32 %77, 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %87, %62
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 6
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %92
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 5, %103
  %105 = ashr i32 %102, %104
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %101
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 -1, i32* %114, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (i32)*, i32 (i32)** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %118(i32 %125)
  br label %127

127:                                              ; preds = %108, %101, %92
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %89

131:                                              ; preds = %89
  br label %156

132:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %152, %132
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 6
  br i1 %135, label %136, label %155

136:                                              ; preds = %133
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 5, %146
  %148 = shl i32 1, %147
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %145, %136
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %133

155:                                              ; preds = %133
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* %11, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
