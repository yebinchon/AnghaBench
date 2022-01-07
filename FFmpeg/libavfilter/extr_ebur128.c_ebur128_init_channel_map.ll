; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_init_channel_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_init_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@FF_EBUR128_LEFT = common dso_local global i8* null, align 8
@FF_EBUR128_RIGHT = common dso_local global i8* null, align 8
@FF_EBUR128_LEFT_SURROUND = common dso_local global i8* null, align 8
@FF_EBUR128_RIGHT_SURROUND = common dso_local global i8* null, align 8
@FF_EBUR128_CENTER = common dso_local global i8* null, align 8
@FF_EBUR128_UNUSED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ebur128_init_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebur128_init_channel_map(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @av_malloc_array(i32 %7, i32 4)
  %9 = inttoptr i64 %8 to i32*
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* %9, i32** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %194

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load i8*, i8** @FF_EBUR128_LEFT, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %30, i32* %36, align 4
  %37 = load i8*, i8** @FF_EBUR128_RIGHT, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %38, i32* %44, align 4
  %45 = load i8*, i8** @FF_EBUR128_LEFT_SURROUND, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %46, i32* %52, align 4
  %53 = load i8*, i8** @FF_EBUR128_RIGHT_SURROUND, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %54, i32* %60, align 4
  br label %193

61:                                               ; preds = %23
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %107

66:                                               ; preds = %61
  %67 = load i8*, i8** @FF_EBUR128_LEFT, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %68, i32* %74, align 4
  %75 = load i8*, i8** @FF_EBUR128_RIGHT, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %76, i32* %82, align 4
  %83 = load i8*, i8** @FF_EBUR128_CENTER, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %84, i32* %90, align 4
  %91 = load i8*, i8** @FF_EBUR128_LEFT_SURROUND, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 %92, i32* %98, align 4
  %99 = load i8*, i8** @FF_EBUR128_RIGHT_SURROUND, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 %100, i32* %106, align 4
  br label %192

107:                                              ; preds = %61
  store i64 0, i64* %4, align 8
  br label %108

108:                                              ; preds = %188, %107
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %109, %113
  br i1 %114, label %115, label %191

115:                                              ; preds = %108
  %116 = load i64, i64* %4, align 8
  switch i64 %116, label %177 [
    i64 0, label %117
    i64 1, label %127
    i64 2, label %137
    i64 3, label %147
    i64 4, label %157
    i64 5, label %167
  ]

117:                                              ; preds = %115
  %118 = load i8*, i8** @FF_EBUR128_LEFT, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %119, i32* %126, align 4
  br label %187

127:                                              ; preds = %115
  %128 = load i8*, i8** @FF_EBUR128_RIGHT, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %129, i32* %136, align 4
  br label %187

137:                                              ; preds = %115
  %138 = load i8*, i8** @FF_EBUR128_CENTER, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %139, i32* %146, align 4
  br label %187

147:                                              ; preds = %115
  %148 = load i8*, i8** @FF_EBUR128_UNUSED, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %4, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %149, i32* %156, align 4
  br label %187

157:                                              ; preds = %115
  %158 = load i8*, i8** @FF_EBUR128_LEFT_SURROUND, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %4, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %159, i32* %166, align 4
  br label %187

167:                                              ; preds = %115
  %168 = load i8*, i8** @FF_EBUR128_RIGHT_SURROUND, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %4, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %169, i32* %176, align 4
  br label %187

177:                                              ; preds = %115
  %178 = load i8*, i8** @FF_EBUR128_UNUSED, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %4, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %179, i32* %186, align 4
  br label %187

187:                                              ; preds = %177, %167, %157, %147, %137, %127, %117
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %4, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %4, align 8
  br label %108

191:                                              ; preds = %108
  br label %192

192:                                              ; preds = %191, %66
  br label %193

193:                                              ; preds = %192, %28
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %20
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i64 @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
