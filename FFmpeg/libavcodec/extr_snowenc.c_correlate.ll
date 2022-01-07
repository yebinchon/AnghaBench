; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_correlate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_correlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i64*, i32, i32, i32)* @correlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correlate(i32* %0, %struct.TYPE_3__* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %180, %6
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %183

28:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %176, %28
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %179

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %157

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = load i64*, i64** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @mid_pred(i64 %58, i64 %65, i64 %73)
  %75 = load i64*, i64** %9, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %74
  store i64 %80, i64* %78, align 8
  br label %94

81:                                               ; preds = %47, %44
  %82 = load i64*, i64** %9, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %87
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %81, %52
  br label %156

95:                                               ; preds = %41
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %95
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %118, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %117, %124
  %126 = load i64*, i64** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %126, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %125, %133
  %135 = call i64 @mid_pred(i64 %104, i64 %111, i64 %134)
  %136 = load i64*, i64** %9, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %135
  store i64 %141, i64* %139, align 8
  br label %155

142:                                              ; preds = %95
  %143 = load i64*, i64** %9, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %9, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %148
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %142, %98
  br label %156

156:                                              ; preds = %155, %94
  br label %175

157:                                              ; preds = %33
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i64*, i64** %9, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %161, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %167
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %160, %157
  br label %175

175:                                              ; preds = %174, %156
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %29

179:                                              ; preds = %29
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %24

183:                                              ; preds = %24
  ret void
}

declare dso_local i64 @mid_pred(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
