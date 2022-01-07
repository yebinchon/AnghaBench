; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_find_prev_closest_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_find_prev_closest_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_9__*, i64, i64, i32, i64*, i64*, i64*)* @find_prev_closest_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_prev_closest_index(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, %struct.TYPE_9__* %3, i64 %4, i64 %5, i32 %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64* %9, i64** %20, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %21, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %22, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %35 = load i64*, i64** %18, align 8
  %36 = call i32 @av_assert0(i64* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %10
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %16, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %16, align 8
  br label %47

47:                                               ; preds = %41, %10
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @av_index_search_timestamp(%struct.TYPE_11__* %54, i64 %55, i32 %58)
  %60 = load i64*, i64** %18, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64*, i64** %18, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %47
  %65 = load i64*, i64** %18, align 8
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %24, align 8
  br label %67

67:                                               ; preds = %105, %64
  %68 = load i64, i64* %24, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = load i64, i64* %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = load i64, i64* %24, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %75, %81
  br label %83

83:                                               ; preds = %70, %67
  %84 = phi i1 [ false, %67 ], [ %82, %70 ]
  br i1 %84, label %85, label %108

85:                                               ; preds = %83
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %92 = load i64, i64* %24, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90, %85
  %101 = load i64, i64* %24, align 8
  %102 = sub i64 %101, 1
  %103 = load i64*, i64** %18, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %24, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %24, align 8
  br label %67

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108, %47
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %229

112:                                              ; preds = %109
  %113 = load i64*, i64** %18, align 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp uge i64 %114, 0
  br i1 %115, label %116, label %229

116:                                              ; preds = %112
  %117 = load i64*, i64** %19, align 8
  %118 = call i32 @av_assert0(i64* %117)
  %119 = load i64*, i64** %20, align 8
  %120 = call i32 @av_assert0(i64* %119)
  %121 = load i64*, i64** %19, align 8
  store i64 0, i64* %121, align 8
  %122 = load i64*, i64** %20, align 8
  store i64 0, i64* %122, align 8
  store i64 0, i64* %25, align 8
  br label %123

123:                                              ; preds = %153, %116
  %124 = load i64, i64* %25, align 8
  %125 = load i64*, i64** %18, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  %129 = load i64*, i64** %19, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load i64*, i64** %20, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %138 = load i64*, i64** %19, align 8
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %20, align 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %133
  %147 = load i64*, i64** %19, align 8
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load i64*, i64** %20, align 8
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %133
  br label %152

152:                                              ; preds = %151, %128
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %25, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %25, align 8
  br label %123

156:                                              ; preds = %123
  br label %157

157:                                              ; preds = %227, %156
  %158 = load i64*, i64** %18, align 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp uge i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i64*, i64** %19, align 8
  %163 = load i64, i64* %162, align 8
  %164 = icmp uge i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i64*, i64** %19, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = icmp ult i64 %167, %168
  br label %170

170:                                              ; preds = %165, %161, %157
  %171 = phi i1 [ false, %161 ], [ false, %157 ], [ %169, %165 ]
  br i1 %171, label %172, label %228

172:                                              ; preds = %170
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %174 = load i64*, i64** %18, align 8
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %180 = load i64*, i64** %19, align 8
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %178, %184
  %186 = load i64, i64* %16, align 8
  %187 = icmp ule i64 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %172
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %190 = load i64*, i64** %18, align 8
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %228

199:                                              ; preds = %188, %172
  %200 = load i64*, i64** %18, align 8
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, -1
  store i64 %202, i64* %200, align 8
  %203 = load i64*, i64** %20, align 8
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load i64*, i64** %19, align 8
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, -1
  store i64 %209, i64* %207, align 8
  %210 = load i64*, i64** %19, align 8
  %211 = load i64, i64* %210, align 8
  %212 = icmp uge i64 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %206
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %215 = load i64*, i64** %19, align 8
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub i64 %219, 1
  %221 = load i64*, i64** %20, align 8
  store i64 %220, i64* %221, align 8
  br label %222

222:                                              ; preds = %213, %206
  br label %227

223:                                              ; preds = %199
  %224 = load i64*, i64** %20, align 8
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, -1
  store i64 %226, i64* %224, align 8
  br label %227

227:                                              ; preds = %223, %222
  br label %157

228:                                              ; preds = %198, %170
  br label %229

229:                                              ; preds = %228, %112, %109
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  store %struct.TYPE_12__* %230, %struct.TYPE_12__** %232, align 8
  %233 = load i32, i32* %23, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load i64*, i64** %18, align 8
  %237 = load i64, i64* %236, align 8
  %238 = icmp uge i64 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 0, i32 -1
  ret i32 %240
}

declare dso_local i32 @av_assert0(i64*) #1

declare dso_local i64 @av_index_search_timestamp(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
