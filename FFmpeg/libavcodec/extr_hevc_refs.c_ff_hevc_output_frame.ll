; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_output_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@HEVC_FRAME_FLAG_BUMPING = common dso_local global i32 0, align 4
@HEVC_FRAME_FLAG_OUTPUT = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Output frame with POC %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_output_frame(%struct.TYPE_16__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %16

16:                                               ; preds = %231, %3
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %75

23:                                               ; preds = %16
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__* %33)
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 %41
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %13, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HEVC_FRAME_FLAG_BUMPING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %36
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %68 = load i32, i32* @HEVC_FRAME_FLAG_OUTPUT, align 4
  %69 = call i32 @ff_hevc_unref_frame(%struct.TYPE_16__* %66, %struct.TYPE_15__* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %57, %49, %36
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %29

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %23, %16
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %124, %75
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__* %80)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i64 %88
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %14, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @HEVC_FRAME_FLAG_OUTPUT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %83
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %113, %104
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %116, %113
  br label %123

123:                                              ; preds = %122, %96, %83
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %76

127:                                              ; preds = %76
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %165, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %130
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = icmp ne %struct.TYPE_13__* %142, null
  br i1 %143, label %144, label %165

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %145, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %233

165:                                              ; preds = %144, %138, %130, %127
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %213

168:                                              ; preds = %165
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %15, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @av_frame_ref(i32* %175, i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @HEVC_FRAME_FLAG_BUMPING, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %168
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %189 = load i32, i32* @HEVC_FRAME_FLAG_OUTPUT, align 4
  %190 = load i32, i32* @HEVC_FRAME_FLAG_BUMPING, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @ff_hevc_unref_frame(%struct.TYPE_16__* %187, %struct.TYPE_15__* %188, i32 %191)
  br label %198

193:                                              ; preds = %168
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %196 = load i32, i32* @HEVC_FRAME_FLAG_OUTPUT, align 4
  %197 = call i32 @ff_hevc_unref_frame(%struct.TYPE_16__* %194, %struct.TYPE_15__* %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %186
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %4, align 4
  br label %233

203:                                              ; preds = %198
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @AV_LOG_DEBUG, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @av_log(i32 %206, i32 %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %211)
  store i32 1, i32* %4, align 4
  br label %233

213:                                              ; preds = %165
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %216, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %213
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  %226 = and i64 %225, 255
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  br label %230

229:                                              ; preds = %213
  br label %232

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230
  br i1 true, label %16, label %232

232:                                              ; preds = %231, %229
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %203, %201, %164
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__*) #1

declare dso_local i32 @ff_hevc_unref_frame(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_frame_ref(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
