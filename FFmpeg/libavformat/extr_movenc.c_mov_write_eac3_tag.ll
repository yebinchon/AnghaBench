; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_eac3_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_eac3_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.eac3_info* }
%struct.eac3_info = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot write moov atom before EAC3 packets parsed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dec3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @mov_write_eac3_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_eac3_tag(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.eac3_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.eac3_info*, %struct.eac3_info** %14, align 8
  %16 = icmp ne %struct.eac3_info* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 @av_log(i32* %18, i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %160

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.eac3_info*, %struct.eac3_info** %25, align 8
  store %struct.eac3_info* %26, %struct.eac3_info** %10, align 8
  %27 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %28 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 34, %30
  %32 = add nsw i32 %31, 7
  %33 = ashr i32 %32, 3
  %34 = add nsw i32 2, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32* @av_malloc(i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %160

42:                                               ; preds = %23
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @init_put_bits(i32* %8, i32* %43, i32 %44)
  %46 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %47 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @put_bits(i32* %8, i32 13, i32 %48)
  %50 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %51 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @put_bits(i32* %8, i32 3, i32 %52)
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %140, %42
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %57 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %54
  %61 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %62 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @put_bits(i32* %8, i32 2, i32 %68)
  %70 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %71 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @put_bits(i32* %8, i32 5, i32 %77)
  %79 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  %80 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  %81 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %82 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @put_bits(i32* %8, i32 3, i32 %88)
  %90 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %91 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @put_bits(i32* %8, i32 3, i32 %97)
  %99 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %100 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @put_bits(i32* %8, i32 1, i32 %106)
  %108 = call i32 @put_bits(i32* %8, i32 5, i32 0)
  %109 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %110 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @put_bits(i32* %8, i32 4, i32 %116)
  %118 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %119 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %60
  %128 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  br label %139

129:                                              ; preds = %60
  %130 = load %struct.eac3_info*, %struct.eac3_info** %10, align 8
  %131 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @put_bits(i32* %8, i32 9, i32 %137)
  br label %139

139:                                              ; preds = %129, %127
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %54

143:                                              ; preds = %54
  %144 = call i32 @flush_put_bits(i32* %8)
  %145 = call i32 @put_bits_count(i32* %8)
  %146 = ashr i32 %145, 3
  store i32 %146, i32* %11, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 8
  %150 = call i32 @avio_wb32(i32* %147, i32 %149)
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @ffio_wfourcc(i32* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @avio_write(i32* %153, i32* %154, i32 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @av_free(i32* %157)
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %143, %39, %17
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
