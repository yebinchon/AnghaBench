; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp_parse.c_ff_mlp_read_major_sync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp_parse.c_ff_mlp_read_major_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"packet too short, unable to read major sync\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"major sync info header checksum error\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@mlp_quants = common dso_local global i8** null, align 8
@mlp_channels = common dso_local global i32* null, align 8
@mlp_layout = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mlp_read_major_sync(i8* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = call i64 @get_bits_count(%struct.TYPE_12__* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @av_assert1(i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 3
  %24 = call i32 @mlp_get_major_sync_size(i64 %19, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 3
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %3
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(i8* %35, i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 2
  %44 = call i64 @ff_mlp_checksum16(i64 %41, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = sub nsw i64 %51, 2
  %53 = call i64 @AV_RL16(i64 %52)
  %54 = icmp ne i64 %45, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(i8* %56, i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %4, align 4
  br label %223

60:                                               ; preds = %38
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = call i32 @get_bits_long(%struct.TYPE_12__* %61, i32 24)
  %63 = icmp ne i32 %62, 16282223
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %4, align 4
  br label %223

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = call i32 @get_bits(%struct.TYPE_12__* %67, i32 8)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 187
  br i1 %77, label %78, label %128

78:                                               ; preds = %66
  %79 = load i8**, i8*** @mlp_quants, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = call i32 @get_bits(%struct.TYPE_12__* %80, i32 4)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i8**, i8*** @mlp_quants, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = call i32 @get_bits(%struct.TYPE_12__* %89, i32 4)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 18
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = call i32 @get_bits(%struct.TYPE_12__* %96, i32 4)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i8* @mlp_samplerate(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = call i32 @get_bits(%struct.TYPE_12__* %103, i32 4)
  %105 = call i8* @mlp_samplerate(i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 17
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = call i32 @skip_bits(%struct.TYPE_12__* %108, i32 11)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = call i32 @get_bits(%struct.TYPE_12__* %110, i32 5)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32*, i32** @mlp_channels, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 20
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** @mlp_layout, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 19
  store i32 %125, i32* %127, align 8
  br label %186

128:                                              ; preds = %66
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 186
  br i1 %132, label %133, label %183

133:                                              ; preds = %128
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32 24, i32* %135, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 18
  store i8* null, i8** %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = call i32 @get_bits(%struct.TYPE_12__* %138, i32 4)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i8* @mlp_samplerate(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 17
  store i8* null, i8** %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = call i32 @skip_bits(%struct.TYPE_12__* %147, i32 4)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = call i32 @get_bits(%struct.TYPE_12__* %149, i32 2)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = call i32 @get_bits(%struct.TYPE_12__* %153, i32 2)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = call i32 @get_bits(%struct.TYPE_12__* %157, i32 5)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i8* @truehd_channels(i32 %161)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 16
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i8* @truehd_layout(i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 15
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = call i32 @get_bits(%struct.TYPE_12__* %169, i32 2)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = call i32 @get_bits(%struct.TYPE_12__* %173, i32 13)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i8* @truehd_channels(i32 %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 14
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i8* @truehd_layout(i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 13
  store i8* %180, i8** %182, align 8
  br label %185

183:                                              ; preds = %128
  %184 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %184, i32* %4, align 4
  br label %223

185:                                              ; preds = %133
  br label %186

186:                                              ; preds = %185, %78
  %187 = load i32, i32* %8, align 4
  %188 = and i32 %187, 7
  %189 = shl i32 40, %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, 7
  %194 = shl i32 64, %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %198 = call i32 @skip_bits_long(%struct.TYPE_12__* %197, i32 48)
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %200 = call i32 @get_bits1(%struct.TYPE_12__* %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 12
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %204 = call i32 @get_bits(%struct.TYPE_12__* %203, i32 15)
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %204, %207
  %209 = add nsw i32 %208, 8
  %210 = ashr i32 %209, 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 10
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %214 = call i32 @get_bits(%struct.TYPE_12__* %213, i32 4)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 11
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %218, 17
  %220 = mul nsw i32 %219, 8
  %221 = add nsw i32 4, %220
  %222 = call i32 @skip_bits_long(%struct.TYPE_12__* %217, i32 %221)
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %186, %183, %64, %55, %34
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i64 @get_bits_count(%struct.TYPE_12__*) #1

declare dso_local i32 @mlp_get_major_sync_size(i64, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i64 @ff_mlp_checksum16(i64, i32) #1

declare dso_local i64 @AV_RL16(i64) #1

declare dso_local i32 @get_bits_long(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_bits(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @mlp_samplerate(i32) #1

declare dso_local i32 @skip_bits(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @truehd_channels(i32) #1

declare dso_local i8* @truehd_layout(i32) #1

declare dso_local i32 @skip_bits_long(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_bits1(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
