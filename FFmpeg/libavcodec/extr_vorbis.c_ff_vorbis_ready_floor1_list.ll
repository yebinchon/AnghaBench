; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_ff_vorbis_ready_floor1_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_ff_vorbis_ready_floor1_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Duplicate value found in floor 1 X coordinates\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vorbis_ready_floor1_list(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  store i32 2, i32* %8, align 4
  br label %19

19:                                               ; preds = %108, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  store i32 2, i32* %9, align 4
  br label %40

40:                                               ; preds = %104, %23
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %60, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %59
  br label %103

81:                                               ; preds = %44
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %82, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 %96, i32* %101, align 8
  br label %102

102:                                              ; preds = %95, %81
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %40

107:                                              ; preds = %40
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %19

111:                                              ; preds = %19
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %196, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %199

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %192, %117
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %195

124:                                              ; preds = %120
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %130, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = call i32 @av_log(i32* %139, i32 %140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %4, align 4
  br label %200

143:                                              ; preds = %124
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %154, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %143
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %12, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 %185, i32* %190, align 8
  br label %191

191:                                              ; preds = %167, %143
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %120

195:                                              ; preds = %120
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %112

199:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %199, %138
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
