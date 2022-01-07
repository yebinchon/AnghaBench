; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_invert_initial_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_invert_initial_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64* }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32*, i32*)* @invert_initial_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invert_initial_buffer(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %18, %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = call i32 @FFMIN(i32 %21, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %225

32:                                               ; preds = %6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 1
  %39 = call i32 @swri_realloc_audio(%struct.TYPE_8__* %33, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %225

43:                                               ; preds = %32
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %101, %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %104

50:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %97, %50
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %64, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %83, %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %82, %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i64 %75, i64 %92, i32 %95)
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %51

100:                                              ; preds = %51
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %46

104:                                              ; preds = %46
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %13, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %12, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @INT_MAX, align 4
  store i32 %118, i32* %7, align 4
  br label %225

119:                                              ; preds = %104
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %178, %119
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %181

126:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  br label %127

127:                                              ; preds = %174, %126
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %177

133:                                              ; preds = %127
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %140, %150
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %161, %162
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %158, %168
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @memcpy(i64 %151, i64 %169, i32 %172)
  br label %174

174:                                              ; preds = %133
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %127

177:                                              ; preds = %127
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %120

181:                                              ; preds = %120
  %182 = load i32, i32* %16, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %182, %184
  store i32 %185, i32* %17, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %12, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %195, %181
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %201
  store i64 %205, i64* %203, align 8
  br label %190

206:                                              ; preds = %190
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %208, %211
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %215, 2
  %217 = add nsw i32 1, %216
  %218 = call i32 @FFMAX(i32 %212, i32 %217)
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %218, %220
  %222 = load i32*, i32** %13, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @FFMAX(i32 %223, i32 0)
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %206, %111, %41, %31
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @swri_realloc_audio(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
