; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_read_sl_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_read_sl_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i32, i64, i32, i32, i32, i64, i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @read_sl_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sl_header(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %24 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %25, i64* %20, align 8
  %26 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %27 = add nsw i32 128, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nuw i64 4, %28
  %33 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @FFMIN(i32 %31, i32 %36)
  store i32 %37, i32* %23, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %23, align 4
  %40 = call i32 @memcpy(i32* %30, i32* %38, i32 %39)
  %41 = load i32, i32* %23, align 4
  %42 = mul nsw i32 %41, 8
  %43 = call i32 @init_get_bits(i32* %9, i32* %30, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 13
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = call i32 @get_bits1(i32* %9)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %48, %4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @get_bits1(i32* %9)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 13
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %62, %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @get_bits1(i32* %9)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 11
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @get_bits1(i32* %9)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %80, %75
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @get_bits1(i32* %9)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @get_bits(i32* %9, i32 3)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %206, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %206

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @skip_bits_long(i32* %9, i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = call i32 @get_bits1(i32* %9)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @skip_bits(i32* %9, i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @skip_bits_long(i32* %9, i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %135
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @get_bits1(i32* %9)
  br label %145

145:                                              ; preds = %143, %138
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @skip_bits_long(i32* %9, i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = call i32 @get_bits1(i32* %9)
  store i32 %161, i32* %17, align 4
  %162 = call i32 @get_bits1(i32* %9)
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %135
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i32 @get_bits1(i32* %9)
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %169, %164
  %172 = load i32, i32* %17, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @get_ts64(i32* %9, i32 %177)
  store i64 %178, i64* %19, align 8
  br label %179

179:                                              ; preds = %174, %171
  %180 = load i32, i32* %18, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @get_ts64(i32* %9, i32 %185)
  store i64 %186, i64* %20, align 8
  br label %187

187:                                              ; preds = %182, %179
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @skip_bits_long(i32* %9, i32 %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @skip_bits_long(i32* %9, i32 %203)
  br label %205

205:                                              ; preds = %200, %197
  br label %206

206:                                              ; preds = %205, %100, %94
  %207 = load i64, i64* %19, align 8
  %208 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i64, i64* %19, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %210, %206
  %215 = load i64, i64* %20, align 8
  %216 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i64, i64* %20, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %218, %214
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @avpriv_set_pts_info(i32 %235, i32 %238, i32 1, i64 %241)
  br label %243

243:                                              ; preds = %232, %227, %222
  %244 = call i32 @get_bits_count(i32* %9)
  %245 = add nsw i32 %244, 7
  %246 = ashr i32 %245, 3
  %247 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %247)
  ret i32 %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @skip_bits_long(i32*, i32) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i64 @get_ts64(i32*, i32) #2

declare dso_local i32 @avpriv_set_pts_info(i32, i32, i32, i64) #2

declare dso_local i32 @get_bits_count(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
