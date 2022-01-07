; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_codec_init_static_fields.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_codec_init_static_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__**, i32, i32)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @codec_init_static_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_init_static_fields(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__**, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %4, align 8
  %5 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %8 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__** %5, %struct.TYPE_19__* %6, i32 %7)
  %9 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %12(%struct.TYPE_18__** %13, i32 %17, i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %25, i32 1, %struct.TYPE_19__* %26)
  store i32 %27, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %192

30:                                               ; preds = %1
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %33, align 8
  %35 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %34(%struct.TYPE_18__** %35, i32 %39, i32 %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %47, i32 1, %struct.TYPE_19__* %48)
  store i32 %49, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %192

52:                                               ; preds = %30
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %55, align 8
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %56(%struct.TYPE_18__** %57, i32 %61, i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %69, i32 1, %struct.TYPE_19__* %70)
  store i32 %71, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %192

74:                                               ; preds = %52
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %83, align 8
  %85 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %84(%struct.TYPE_18__** %85, i32 %89, i32 %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %97, i32 1, %struct.TYPE_19__* %98)
  store i32 %99, i32* %3, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %80
  br label %192

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %106, align 8
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 %107(%struct.TYPE_18__** %108, i32 %112, i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %122 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %120, i32 1, %struct.TYPE_19__* %121)
  store i32 %122, i32* %3, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %192

125:                                              ; preds = %103
  %126 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %129(%struct.TYPE_18__** %130, i32 %134, i32 %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %144 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %142, i32 1, %struct.TYPE_19__* %143)
  store i32 %144, i32* %3, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %125
  br label %192

147:                                              ; preds = %125
  %148 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %150, align 8
  %152 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 %151(%struct.TYPE_18__** %152, i32 %156, i32 %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %166 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %164, i32 1, %struct.TYPE_19__* %165)
  store i32 %166, i32* %3, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %147
  br label %192

169:                                              ; preds = %147
  %170 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_18__**, i32, i32)*, i32 (%struct.TYPE_18__**, i32, i32)** %172, align 8
  %174 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %173(%struct.TYPE_18__** %174, i32 %178, i32 %182)
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %188 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %186, i32 1, %struct.TYPE_19__* %187)
  store i32 %188, i32* %3, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %169
  br label %192

191:                                              ; preds = %169
  br label %192

192:                                              ; preds = %191, %190, %168, %146, %124, %101, %73, %51, %29
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__**, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_18__**, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
