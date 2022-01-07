; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodecheader.c_avpriv_mpegaudio_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodecheader.c_avpriv_mpegaudio_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@avpriv_mpa_freq_tab = common dso_local global i32* null, align 8
@MPA_MONO = common dso_local global i32 0, align 4
@avpriv_mpa_bitrate_tab = common dso_local global i32*** null, align 8
@MODE_EXT_I_STEREO = common dso_local global i32 0, align 4
@MODE_EXT_MS_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ff_mpa_check_header(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %3, align 4
  br label %173

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 1048576
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 524288
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %8, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 17
  %37 = and i32 %36, 3
  %38 = sub nsw i32 4, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 10
  %43 = and i32 %42, 3
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %46 = call i32 @FF_ARRAY_ELEMS(i32* %45)
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = ashr i32 %54, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = mul nsw i32 3, %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 1
  %75 = xor i32 %74, 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 12
  %83 = and i32 %82, 15
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 9
  %86 = and i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %5, align 4
  %88 = ashr i32 %87, 6
  %89 = and i32 %88, 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MPA_MONO, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %49
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 7
  store i32 1, i32* %104, align 4
  br label %108

105:                                              ; preds = %49
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 7
  store i32 2, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %171

111:                                              ; preds = %108
  %112 = load i32***, i32**** @avpriv_mpa_bitrate_tab, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32**, i32*** %112, i64 %116
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %118, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %130, 1000
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %154 [
    i32 1, label %137
    i32 2, label %146
    i32 3, label %155
  ]

137:                                              ; preds = %111
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %138, 12000
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %139, %140
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %142, %143
  %145 = mul nsw i32 %144, 4
  store i32 %145, i32* %7, align 4
  br label %167

146:                                              ; preds = %111
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 %147, 144000
  %149 = load i32, i32* %6, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %167

154:                                              ; preds = %111
  br label %155

155:                                              ; preds = %111, %154
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 144000
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %158, %161
  %163 = sdiv i32 %157, %162
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %155, %146, %137
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 4
  br label %172

171:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %173

172:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %171, %17
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @ff_mpa_check_header(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
