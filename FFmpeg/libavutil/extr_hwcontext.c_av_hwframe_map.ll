; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_21__** }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_25__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid mapping found when attempting unmap.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_hwframe_map(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %15 = icmp ne %struct.TYPE_22__* %14, null
  br i1 %15, label %16, label %101

16:                                               ; preds = %3
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = icmp ne %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %101

21:                                               ; preds = %16
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %8, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %9, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %36 = icmp eq %struct.TYPE_26__* %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %21
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %45, %37, %21
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = icmp ne %struct.TYPE_20__* %58, null
  br i1 %59, label %60, label %100

60:                                               ; preds = %53
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %69 = bitcast %struct.TYPE_26__* %68 to i32*
  %70 = icmp eq i32* %67, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %60, %45
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %74, i64 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = icmp ne %struct.TYPE_21__* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 @av_log(%struct.TYPE_26__* %79, i32 %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %4, align 4
  br label %202

84:                                               ; preds = %71
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %87, i64 0
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %92, %struct.TYPE_25__** %10, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = call i32 @av_frame_unref(%struct.TYPE_27__* %93)
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @av_frame_ref(%struct.TYPE_27__* %95, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %202

100:                                              ; preds = %60, %53
  br label %101

101:                                              ; preds = %100, %16, %3
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %150

106:                                              ; preds = %101
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %112, %struct.TYPE_26__** %8, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %106
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)** %126, align 8
  %128 = icmp ne i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %120
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)** %135, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 %136(%struct.TYPE_26__* %137, %struct.TYPE_27__* %138, %struct.TYPE_27__* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @ENOSYS, align 4
  %144 = call i32 @AVERROR(i32 %143)
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %202

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %120, %106
  br label %150

150:                                              ; preds = %149, %101
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = icmp ne %struct.TYPE_22__* %153, null
  br i1 %154, label %155, label %199

155:                                              ; preds = %150
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %161, %struct.TYPE_26__** %9, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %155
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  %176 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)** %175, align 8
  %177 = icmp ne i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)* %176, null
  br i1 %177, label %178, label %198

178:                                              ; preds = %169
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)** %184, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 %185(%struct.TYPE_26__* %186, %struct.TYPE_27__* %187, %struct.TYPE_27__* %188, i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @ENOSYS, align 4
  %193 = call i32 @AVERROR(i32 %192)
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %178
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %4, align 4
  br label %202

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %169, %155
  br label %199

199:                                              ; preds = %198, %150
  %200 = load i32, i32* @ENOSYS, align 4
  %201 = call i32 @AVERROR(i32 %200)
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %199, %195, %146, %84, %78
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_27__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
