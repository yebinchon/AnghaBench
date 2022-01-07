; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_mp3_read_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_mp3_read_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@ID3v2_DEFAULT_MAGIC = common dso_local global i32 0, align 4
@PROBE_BUF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @mp3_read_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp3_read_probe(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = getelementptr inbounds i32, i32* %27, i64 -4
  store i32* %28, i32** %15, align 8
  br label %29

29:                                               ; preds = %40, %1
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %13, align 8
  br label %29

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %44 = load i32*, i32** %13, align 8
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %96, %43
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  store i32* %50, i32** %14, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %74, %49
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @AV_RB32(i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_5__* %16, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %77

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %51

77:                                               ; preds = %62, %51
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @FFMAX(i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @FFMAX(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = icmp eq i32* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = icmp eq i32* %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %87
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32* %98, i32** %12, align 8
  br label %45

99:                                               ; preds = %45
  %100 = load i32, i32* %5, align 4
  %101 = icmp sge i32 %100, 7
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %176

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = icmp sgt i32 %106, 200
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 2, %112
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %116, i32* %2, align 4
  br label %176

117:                                              ; preds = %108, %105
  %118 = load i32, i32* %4, align 4
  %119 = icmp sge i32 %118, 4
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 2, %124
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %129 = sdiv i32 %128, 2
  store i32 %129, i32* %2, align 4
  br label %176

130:                                              ; preds = %120, %117
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* @ID3v2_DEFAULT_MAGIC, align 4
  %133 = call i64 @ff_id3v2_match(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %130
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @ff_id3v2_tag_len(i32* %136)
  %138 = mul nsw i32 2, %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %138, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %135
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PROBE_BUF_MAX, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %151 = sdiv i32 %150, 4
  br label %155

152:                                              ; preds = %143
  %153 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %154 = sub nsw i32 %153, 2
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi i32 [ %151, %149 ], [ %154, %152 ]
  store i32 %156, i32* %2, align 4
  br label %176

157:                                              ; preds = %135, %130
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 5, i32* %2, align 4
  br label %176

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %4, align 4
  %166 = icmp sge i32 %165, 1
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 10, %171
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 1, i32* %2, align 4
  br label %176

175:                                              ; preds = %167, %164
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %174, %163, %155, %127, %115, %102
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @ff_id3v2_match(i32*, i32) #1

declare dso_local i32 @ff_id3v2_tag_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
