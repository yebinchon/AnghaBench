; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_mc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32 (i64, i64, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32)* @ivi_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivi_mc(%struct.TYPE_3__* %0, i32 (i64, i64, i32, i32)* %1, i32 (i64, i64, i64, i32, i32, i32)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32 (i64, i64, i32, i32)*, align 8
  %14 = alloca i32 (i64, i64, i64, i32, i32, i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i32 (i64, i64, i32, i32)* %1, i32 (i64, i64, i32, i32)** %13, align 8
  store i32 (i64, i64, i64, i32, i32, i32)* %2, i32 (i64, i64, i64, i32, i32, i32)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = add nsw i32 %28, %33
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %22, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  store i32 %43, i32* %23, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %46, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp sgt i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* %20, align 4
  %64 = and i32 %63, 1
  %65 = add nsw i32 %62, %64
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %99

68:                                               ; preds = %10
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %22, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %74, %71, %68
  %80 = phi i1 [ false, %71 ], [ false, %68 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @av_assert0(i32 %81)
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %24, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = icmp sge i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @av_assert0(i32 %88)
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %24, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %25, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %22, align 4
  %96 = icmp sge i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  br label %99

99:                                               ; preds = %79, %10
  %100 = load i32, i32* %21, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load i32 (i64, i64, i32, i32)*, i32 (i64, i64, i32, i32)** %13, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %20, align 4
  %120 = call i32 %103(i64 %109, i64 %115, i32 %118, i32 %119)
  br label %212

121:                                              ; preds = %99
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = add nsw i32 %122, %127
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp sgt i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %133, %136
  %138 = load i32, i32* %21, align 4
  %139 = and i32 %138, 1
  %140 = add nsw i32 %137, %139
  store i32 %140, i32* %27, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %121
  %144 = load i32, i32* %26, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146, %143, %121
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %11, align 4
  br label %213

153:                                              ; preds = %146
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %27, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %26, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %162, i32* %11, align 4
  br label %213

163:                                              ; preds = %153
  %164 = load i32, i32* %20, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32 (i64, i64, i32, i32)*, i32 (i64, i64, i32, i32)** %13, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %26, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %21, align 4
  %184 = call i32 %167(i64 %173, i64 %179, i32 %182, i32 %183)
  br label %211

185:                                              ; preds = %163
  %186 = load i32 (i64, i64, i64, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32)** %14, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %26, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %21, align 4
  %210 = call i32 %186(i64 %192, i64 %198, i64 %204, i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %185, %166
  br label %212

212:                                              ; preds = %211, %102
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %212, %161, %151
  %214 = load i32, i32* %11, align 4
  ret i32 %214
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
