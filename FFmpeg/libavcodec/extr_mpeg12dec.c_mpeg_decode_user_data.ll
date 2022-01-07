; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_user_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"\00TMPGEXS\00\00", align 1
@AV_STEREO3D_SIDEBYSIDE = common dso_local global i32 0, align 4
@AV_STEREO3D_TOPBOTTOM = common dso_local global i32 0, align 4
@AV_STEREO3D_2D = common dso_local global i32 0, align 4
@AV_STEREO3D_SIDEBYSIDE_QUINCUNX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @mpeg_decode_user_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_decode_user_data(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 29
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @memcmp(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %26

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = icmp sge i64 %50, 5
  br i1 %51, label %52, label %107

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 68
  br i1 %56, label %57, label %107

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 84
  br i1 %61, label %62, label %107

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 71
  br i1 %66, label %67, label %107

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %72, label %107

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32* %77, i32** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 128
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %81, %72
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 64
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = icmp slt i64 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %191

97:                                               ; preds = %88
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 15
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %84
  br label %191

107:                                              ; preds = %67, %62, %57, %52, %44
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = icmp sge i64 %113, 6
  br i1 %114, label %115, label %182

115:                                              ; preds = %107
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 74
  br i1 %119, label %120, label %182

120:                                              ; preds = %115
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 80
  br i1 %124, label %125, label %182

125:                                              ; preds = %120
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 51
  br i1 %129, label %130, label %182

130:                                              ; preds = %125
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 68
  br i1 %134, label %135, label %182

135:                                              ; preds = %130
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %140, label %182

140:                                              ; preds = %135
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 127
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %156, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = icmp eq i32 %154, 35
  br i1 %155, label %156, label %181

156:                                              ; preds = %153, %150, %147, %140
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i32 1, i32* %158, align 4
  %159 = load i32, i32* %12, align 4
  switch i32 %159, label %180 [
    i32 3, label %160
    i32 4, label %165
    i32 8, label %170
    i32 35, label %175
  ]

160:                                              ; preds = %156
  %161 = load i32, i32* @AV_STEREO3D_SIDEBYSIDE, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  br label %180

165:                                              ; preds = %156
  %166 = load i32, i32* @AV_STEREO3D_TOPBOTTOM, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  br label %180

170:                                              ; preds = %156
  %171 = load i32, i32* @AV_STEREO3D_2D, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  br label %180

175:                                              ; preds = %156
  %176 = load i32, i32* @AV_STEREO3D_SIDEBYSIDE_QUINCUNX, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %156, %175, %170, %165, %160
  br label %181

181:                                              ; preds = %180, %153
  br label %190

182:                                              ; preds = %135, %130, %125, %120, %115, %107
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i64 @mpeg_decode_a53_cc(%struct.TYPE_9__* %183, i32* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %191

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %181
  br label %191

191:                                              ; preds = %96, %188, %190, %106
  ret void
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @mpeg_decode_a53_cc(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
