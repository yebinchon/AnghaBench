; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_parse_keyframes_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_parse_keyframes_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64*, i64*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"keyframes have been parsed\0A\00", align 1
@AVFMT_FLAG_IGNIDX = common dso_local global i32 0, align 4
@AMF_DATA_TYPE_ARRAY = common dso_local global i64 0, align 8
@KEYFRAMES_TIMESTAMP_TAG = common dso_local global i32 0, align 4
@KEYFRAMES_BYTEOFFSET_TAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMF_DATA_TYPE_NUMBER = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid keyframes object, skipping.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i64)* @parse_keyframes_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_keyframes_index(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64**, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @avio_tell(i32* %24)
  store i64 %25, i64* %16, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32, i32* @AV_LOG_DEBUG, align 4
  %33 = call i32 @av_log(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %232

34:                                               ; preds = %3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @av_assert0(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @av_assert0(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AVFMT_FLAG_IGNIDX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %232

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %155, %56
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @avio_tell(i32* %58)
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %60, 2
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %66 = call i64 @amf_get_string(i32* %64, i8* %65, i32 256)
  %67 = icmp sgt i64 %66, 0
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ false, %57 ], [ %67, %63 ]
  br i1 %69, label %70, label %156

70:                                               ; preds = %68
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @avio_r8(i32* %71)
  %73 = load i64, i64* @AMF_DATA_TYPE_ARRAY, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %156

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @avio_rb32(i32* %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = lshr i32 %79, 28
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %156

83:                                               ; preds = %76
  %84 = load i32, i32* @KEYFRAMES_TIMESTAMP_TAG, align 4
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %86 = call i32 @strcmp(i32 %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i64*, i64** %13, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  store i64** %13, i64*** %17, align 8
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %9, align 4
  br label %105

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @KEYFRAMES_BYTEOFFSET_TAG, align 4
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %96 = call i32 @strcmp(i32 %94, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i64*, i64** %14, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  store i64** %14, i64*** %17, align 8
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %10, align 4
  br label %104

103:                                              ; preds = %98, %93
  br label %156

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %91
  %106 = load i32, i32* %18, align 4
  %107 = zext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64* @av_mallocz(i32 %109)
  %111 = load i64**, i64*** %17, align 8
  store i64* %110, i64** %111, align 8
  %112 = icmp ne i64* %110, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %15, align 4
  br label %224

116:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = call i64 @avio_tell(i32* %122)
  %124 = load i64, i64* %7, align 8
  %125 = sub nsw i64 %124, 1
  %126 = icmp slt i64 %123, %125
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i1 [ false, %117 ], [ %126, %121 ]
  br i1 %128, label %129, label %148

129:                                              ; preds = %127
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @avio_r8(i32* %130)
  %132 = load i64, i64* @AMF_DATA_TYPE_NUMBER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %219

135:                                              ; preds = %129
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @avio_rb64(i32* %136)
  %138 = call i64 @av_int2double(i32 %137)
  %139 = load i64**, i64*** %17, align 8
  %140 = getelementptr inbounds i64*, i64** %139, i64 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %138, i64* %144, align 8
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %117

148:                                              ; preds = %127
  %149 = load i64*, i64** %13, align 8
  %150 = icmp ne i64* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i64*, i64** %14, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %15, align 4
  br label %156

155:                                              ; preds = %151, %148
  br label %57

156:                                              ; preds = %154, %103, %82, %75, %68
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %218

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = icmp ugt i32 %161, 1
  br i1 %162, label %163, label %218

163:                                              ; preds = %160
  %164 = load i64, i64* %7, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sle i64 %164, %167
  br i1 %168, label %169, label %218

169:                                              ; preds = %163
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %205, %169
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @FFMIN(i32 2, i32 %172)
  %174 = icmp ult i32 %171, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %170
  %176 = load i64*, i64** %14, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  store i64 %180, i64* %187, align 8
  %188 = load i64*, i64** %13, align 8
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = mul nsw i64 %192, 1000
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i64 %193, i64* %200, align 8
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, 1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %175
  %206 = load i32, i32* %11, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %170

208:                                              ; preds = %170
  %209 = load i64*, i64** %13, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i64* %209, i64** %211, align 8
  %212 = load i64*, i64** %14, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  store i64* %212, i64** %214, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  br label %223

218:                                              ; preds = %163, %160, %156
  br label %219

219:                                              ; preds = %218, %134
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = load i32, i32* @AV_LOG_WARNING, align 4
  %222 = call i32 @av_log(%struct.TYPE_8__* %220, i32 %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %223

223:                                              ; preds = %219, %208
  br label %224

224:                                              ; preds = %223, %113
  %225 = call i32 @av_freep(i64** %13)
  %226 = call i32 @av_freep(i64** %14)
  %227 = load i32*, i32** %6, align 8
  %228 = load i64, i64* %16, align 8
  %229 = load i32, i32* @SEEK_SET, align 4
  %230 = call i32 @avio_seek(i32* %227, i64 %228, i32 %229)
  %231 = load i32, i32* %15, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %224, %55, %30
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @amf_get_string(i32*, i8*, i32) #1

declare dso_local i64 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64* @av_mallocz(i32) #1

declare dso_local i64 @av_int2double(i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_freep(i64**) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
