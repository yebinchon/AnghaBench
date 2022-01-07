; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_convert.c_ff_audio_convert_set_func.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_convert.c_ff_audio_convert_set_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"audio_convert: found function: %-4s to %-4s (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_audio_convert_set_func(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %167 [
    i32 129, label %21
    i32 128, label %65
    i32 130, label %116
  ]

21:                                               ; preds = %8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @av_get_packed_sample_fmt(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @av_get_packed_sample_fmt(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load i8*, i8** %16, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 15
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** %16, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  br label %63

60:                                               ; preds = %50, %35
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %53
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %28, %21
  br label %167

65:                                               ; preds = %8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %80, %77
  %87 = load i8*, i8** %16, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 13
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %86
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i8*, i8** %16, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 12
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  br label %114

111:                                              ; preds = %101, %86
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 7
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %104
  store i32 1, i32* %17, align 4
  br label %115

115:                                              ; preds = %114, %80, %71, %65
  br label %167

116:                                              ; preds = %8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %166

122:                                              ; preds = %116
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %122
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %131, %128
  %138 = load i8*, i8** %16, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 11
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %162

152:                                              ; preds = %137
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 6
  store i8* %159, i8** %161, align 8
  br label %165

162:                                              ; preds = %152, %137
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 7
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %162, %155
  store i32 1, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %131, %122, %116
  br label %167

167:                                              ; preds = %8, %166, %115, %64
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %167
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AV_LOG_DEBUG, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @av_get_sample_fmt_name(i32 %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @av_get_sample_fmt_name(i32 %181)
  %183 = load i8*, i8** %15, align 8
  %184 = call i32 @av_log(i32 %173, i32 %174, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %182, i8* %183)
  br label %185

185:                                              ; preds = %170, %167
  ret void
}

declare dso_local i32 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
