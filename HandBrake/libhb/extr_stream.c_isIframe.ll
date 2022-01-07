; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_isIframe.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_isIframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_VC1 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @isIframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isIframe(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = call i32 @pes_index_of_video(%struct.TYPE_7__* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 2
  br i1 %28, label %41, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_CODEC_ID_MPEG1VIDEO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %35, %29, %3
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %48, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %80

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %79 [
    i32 184, label %61
    i32 179, label %61
    i32 0, label %62
  ]

61:                                               ; preds = %58, %58
  store i32 1, i32* %4, align 4
  br label %227

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 3
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 56
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %227

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %58, %78
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %42

84:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %227

85:                                               ; preds = %35
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 27
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %149

96:                                               ; preds = %90, %85
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %145, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %148

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %102, 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %144

113:                                              ; preds = %101
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 31
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %227

119:                                              ; preds = %113
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 1, i32* %4, align 4
  br label %227

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 6
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %14, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 @isRecoveryPoint(i32* %132, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %4, align 4
  br label %227

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %101
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %97

148:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %227

149:                                              ; preds = %90
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 234
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AV_CODEC_ID_VC1, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %154, %149
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %178, %160
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = shl i32 %166, 8
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %167, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 271
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  store i32 1, i32* %4, align 4
  br label %227

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %161

181:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %227

182:                                              ; preds = %154
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 16
  br i1 %186, label %193, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %187, %182
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %222, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %7, align 4
  %197 = sub nsw i32 %196, 1
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = shl i32 %200, 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %201, %206
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp eq i32 %208, 438
  br i1 %209, label %210, label %221

210:                                              ; preds = %199
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 192
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i32 1, i32* %4, align 4
  br label %227

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %199
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %194

225:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  br label %227

226:                                              ; preds = %187
  store i32 1, i32* %4, align 4
  br label %227

227:                                              ; preds = %226, %225, %219, %181, %176, %148, %139, %122, %118, %84, %76, %61
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @pes_index_of_video(%struct.TYPE_7__*) #1

declare dso_local i32 @isRecoveryPoint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
