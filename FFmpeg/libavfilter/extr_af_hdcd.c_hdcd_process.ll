; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_process.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i32)* @hdcd_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdcd_process(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @hdcd_analyze_prepare(%struct.TYPE_10__* %32, i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %5
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = call i32 @hdcd_control(%struct.TYPE_11__* %38, %struct.TYPE_10__* %39, i32* %13, i32* %14)
  br label %41

41:                                               ; preds = %118, %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %134

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sub nsw i32 %53, %54
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ule i32* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @av_assert0(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @hdcd_scan(%struct.TYPE_11__* %63, %struct.TYPE_10__* %64, i32 1, i32* %70, i32 %73, i32 0)
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ule i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @av_assert0(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %45
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hdcd_analyze(i32* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %102, i32 %105, i32 -1)
  store i32 %106, i32* %12, align 4
  br label %118

107:                                              ; preds = %45
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @hdcd_envelope(i32* %108, i32 %109, i32 %110, i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %107, %93
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32*, i32** %8, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %8, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %15, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = call i32 @hdcd_control(%struct.TYPE_11__* %131, %struct.TYPE_10__* %132, i32* %13, i32* %14)
  br label %41

134:                                              ; preds = %41
  %135 = load i32, i32* %15, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %178

137:                                              ; preds = %134
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ule i32* %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @av_assert0(i32 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %137
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @hdcd_analyze(i32* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %161, i32 %164, i32 -1)
  store i32 %165, i32* %12, align 4
  br label %177

166:                                              ; preds = %137
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @hdcd_envelope(i32* %167, i32 %168, i32 %169, i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %166, %152
  br label %178

178:                                              ; preds = %177, %134
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  ret void
}

declare dso_local i32 @hdcd_analyze_prepare(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @hdcd_control(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @hdcd_scan(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*, i32, i32) #1

declare dso_local i32 @hdcd_analyze(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdcd_envelope(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
