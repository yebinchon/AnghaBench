; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_init_session.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@MFX_GPUCOPY_ON = common dso_local global i64 0, align 8
@MFX_IOPATTERN_OUT_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"GPU-accelerated memory copy only works in MFX_IOPATTERN_OUT_SYSTEM_MEMORY.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, i32*)* @qsv_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_init_session(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MFX_GPUCOPY_ON, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MFX_IOPATTERN_OUT_SYSTEM_MEMORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @AV_LOG_WARNING, align 4
  %28 = call i32 @av_log(i32* %26, i32 %27, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %18, %5
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  br label %180

36:                                               ; preds = %29
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %107

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @MFXClose(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @av_buffer_unref(i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @av_buffer_ref(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %6, align 4
  br label %185

72:                                               ; preds = %54
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MFX_IOPATTERN_OUT_OPAQUE_MEMORY, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ff_qsv_init_session_frames(i32* %73, i32** %76, %struct.TYPE_6__* %78, i32 %81, i32 %87, i64 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %72
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @av_buffer_unref(i32* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %185

100:                                              ; preds = %72
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  br label %179

107:                                              ; preds = %36
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %149

110:                                              ; preds = %107
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @MFXClose(i32* %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %116, %110
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32*, i32** %11, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ff_qsv_init_session_device(i32* %126, i32** %129, i32* %130, i32 %133, i64 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %125
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %6, align 4
  br label %185

142:                                              ; preds = %125
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32* %146, i32** %148, align 8
  br label %178

149:                                              ; preds = %107
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %171, label %155

155:                                              ; preds = %149
  %156 = load i32*, i32** %7, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ff_qsv_init_internal_session(i32* %156, %struct.TYPE_7__* %158, i32 %161, i64 %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %185

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %149
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  store i32* %175, i32** %177, align 8
  br label %178

178:                                              ; preds = %171, %142
  br label %179

179:                                              ; preds = %178, %100
  br label %180

180:                                              ; preds = %179, %32
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @MFXVideoDECODE_Close(i32* %183)
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %180, %168, %140, %94, %69
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @MFXClose(i32*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_buffer_ref(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_qsv_init_session_frames(i32*, i32**, %struct.TYPE_6__*, i32, i32, i64) #1

declare dso_local i32 @ff_qsv_init_session_device(i32*, i32**, i32*, i32, i64) #1

declare dso_local i32 @ff_qsv_init_internal_session(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @MFXVideoDECODE_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
