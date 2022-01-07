; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_audio_resample.c_hb_audio_resample.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_audio_resample.c_hb_audio_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32, i64, i32*, %struct.TYPE_10__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"hb_audio_resample: resample is NULL\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"hb_audio_resample: resample needed but libswresample context is NULL\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"hb_audio_resample: swr_convert() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @hb_audio_resample(%struct.TYPE_14__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = icmp eq %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @hb_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %181

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @hb_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %181

31:                                               ; preds = %24, %19
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %37, %41
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %42, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @av_samples_get_buffer_size(i32* null, i32 %52, i32 %53, i32 %57, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.TYPE_13__* @hb_buffer_init(i32 %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %8, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %10, align 4
  %67 = load i32**, i32*** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @swr_convert(i32* %63, i32** %65, i32 %66, i32** %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %36
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @hb_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  %78 = call i32 @hb_buffer_close(%struct.TYPE_13__** %8)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %181

79:                                               ; preds = %36
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %80, %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %85, %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %116

93:                                               ; preds = %31
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %95, %99
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %100, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call %struct.TYPE_13__* @hb_buffer_init(i32 %106)
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %8, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32**, i32*** %6, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @memcpy(i32* %110, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %93, %79
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %116
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %157, %121
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %136
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @memcpy(i32* %146, i32* %152, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %136

160:                                              ; preds = %136
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %13, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %160, %116
  %167 = load i32, i32* %10, align 4
  %168 = sitofp i32 %167 to double
  %169 = fmul double 9.000000e+04, %168
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sitofp i32 %173 to double
  %175 = fdiv double %169, %174
  %176 = fptosi double %175 to i32
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %4, align 8
  br label %181

181:                                              ; preds = %166, %77, %29, %17
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %182
}

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @av_samples_get_buffer_size(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @hb_buffer_init(i32) #1

declare dso_local i32 @swr_convert(i32*, i32**, i32, i32**, i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_13__**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
