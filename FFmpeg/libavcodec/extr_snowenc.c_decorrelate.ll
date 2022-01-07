; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_decorrelate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_decorrelate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i64*, i32, i32, i32)* @decorrelate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decorrelate(i32* %0, %struct.TYPE_3__* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %24 = load i32, i32* %14, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %182, %6
  %27 = load i32, i32* %16, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %185

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %178, %29
  %33 = load i32, i32* %15, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %181

35:                                               ; preds = %32
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %159

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load i64*, i64** %9, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %68, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @mid_pred(i64 %60, i64 %67, i64 %75)
  %77 = load i64*, i64** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %76
  store i64 %82, i64* %80, align 8
  br label %96

83:                                               ; preds = %49, %46
  %84 = load i64*, i64** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, %89
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %83, %54
  br label %158

97:                                               ; preds = %43
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %97
  %101 = load i64*, i64** %9, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %119, %126
  %128 = load i64*, i64** %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %128, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %127, %135
  %137 = call i64 @mid_pred(i64 %106, i64 %113, i64 %136)
  %138 = load i64*, i64** %9, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, %137
  store i64 %143, i64* %141, align 8
  br label %157

144:                                              ; preds = %97
  %145 = load i64*, i64** %9, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %9, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, %150
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %144, %100
  br label %158

158:                                              ; preds = %157, %96
  br label %177

159:                                              ; preds = %35
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load i64*, i64** %9, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %163, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %174, %169
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %162, %159
  br label %177

177:                                              ; preds = %176, %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %15, align 4
  br label %32

181:                                              ; preds = %32
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %16, align 4
  br label %26

185:                                              ; preds = %26
  ret void
}

declare dso_local i64 @mid_pred(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
