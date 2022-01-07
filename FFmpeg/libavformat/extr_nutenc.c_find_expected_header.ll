; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_find_expected_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_find_expected_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP2 = common dso_local global i64 0, align 8
@avpriv_mpa_freq_tab = common dso_local global i32* null, align 8
@avpriv_mpa_bitrate_tab = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @find_expected_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_expected_header(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 4096
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %189

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @AV_WB24(i32* %25, i32 1)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 3, i32* %5, align 4
  br label %189

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 182, i32* %38, align 4
  store i32 4, i32* %5, align 4
  br label %189

39:                                               ; preds = %24
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AV_CODEC_ID_MPEG1VIDEO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  store i32 3, i32* %5, align 4
  br label %189

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 3, i32* %5, align 4
  br label %189

59:                                               ; preds = %52
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %185

71:                                               ; preds = %65, %59
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 3, i32 2
  store i32 %78, i32* %16, align 4
  store i32 -1048576, i32* %17, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 28000
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 14000
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 38050
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  store i32 2, i32* %13, align 4
  br label %99

93:                                               ; preds = %71
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 46050
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %13, align 4
  br label %98

97:                                               ; preds = %93
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = ashr i32 %104, %107
  store i32 %108, i32* %10, align 4
  store i32 2, i32* %14, align 4
  br label %109

109:                                              ; preds = %142, %99
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 30
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load i32***, i32**** @avpriv_mpa_bitrate_tab, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32**, i32*** %113, i64 %115
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %117, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = ashr i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %128, 144000
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = shl i32 %130, %131
  %133 = sdiv i32 %129, %132
  %134 = load i32, i32* %14, align 4
  %135 = and i32 %134, 1
  %136 = add nsw i32 %133, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %112
  br label %145

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %109

145:                                              ; preds = %140, %109
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = shl i32 %149, 19
  %151 = load i32, i32* %17, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 4, %153
  %155 = shl i32 %154, 17
  %156 = load i32, i32* %17, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = or i32 %158, 65536
  store i32 %159, i32* %17, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @AV_WB32(i32* %160, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %145
  store i32 2, i32* %5, align 4
  br label %189

166:                                              ; preds = %145
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %167, 30
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 -1, i32* %5, align 4
  br label %189

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = ashr i32 %171, 1
  %173 = shl i32 %172, 12
  %174 = load i32, i32* %17, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 10
  %178 = load i32, i32* %17, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %14, align 4
  %181 = and i32 %180, 1
  %182 = shl i32 %181, 9
  %183 = load i32, i32* %17, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %17, align 4
  store i32 2, i32* %5, align 4
  br label %189

185:                                              ; preds = %65
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %188, %170, %169, %165, %58, %51, %36, %35, %23
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
