; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_median_planar.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_median_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32)* @restore_median_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_median_planar(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = xor i32 %25, -1
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %183, %7
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %186

31:                                               ; preds = %27
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* %24, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32, i32* %24, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %22, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %31
  br label %183

52:                                               ; preds = %31
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32* %58, i32** %21, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 128
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %65, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 %66(i32* %67, i32* %68, i32 %69, i32 0)
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %21, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %21, align 8
  %75 = load i32, i32* %23, align 4
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %183

78:                                               ; preds = %52
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 0, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32*, i32** %21, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %18, align 4
  store i32 1, i32* %15, align 4
  br label %93

93:                                               ; preds = %128, %78
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @FFMIN(i32 %95, i32 16)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %20, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i64 @mid_pred(i32 %106, i32 %107, i32 %112)
  %114 = load i32*, i32** %21, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %113
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %20, align 4
  %123 = load i32*, i32** %21, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %98
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %93

131:                                              ; preds = %93
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %132, 16
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32*, i32, i32*, i32*)** %137, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 16
  %141 = load i32*, i32** %21, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 0, %143
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = getelementptr inbounds i32, i32* %145, i64 16
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 16
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %149, 16
  %151 = call i32 %138(i32* %140, i32* %146, i32* %148, i32 %150, i32* %18, i32* %19)
  br label %152

152:                                              ; preds = %134, %131
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %21, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %21, align 8
  store i32 2, i32* %16, align 4
  br label %157

157:                                              ; preds = %179, %152
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %23, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32*, i32, i32*, i32*)** %164, align 8
  %166 = load i32*, i32** %21, align 8
  %167 = load i32*, i32** %21, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = sub i64 0, %169
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32*, i32** %21, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 %165(i32* %166, i32* %171, i32* %172, i32 %173, i32* %18, i32* %19)
  %175 = load i32, i32* %10, align 4
  %176 = load i32*, i32** %21, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %21, align 8
  br label %179

179:                                              ; preds = %161
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %157

182:                                              ; preds = %157
  br label %183

183:                                              ; preds = %182, %77, %51
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %27

186:                                              ; preds = %27
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @mid_pred(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
