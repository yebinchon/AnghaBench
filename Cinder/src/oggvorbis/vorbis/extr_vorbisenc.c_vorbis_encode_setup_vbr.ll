; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_vbr.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_vbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { float, i32, i64, i32, i32 }

@OV_EIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_encode_setup_vbr(%struct.TYPE_6__* %0, i64 %1, i64 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store float %3, float* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load float, float* %9, align 4
  %18 = fpext float %17 to double
  %19 = fadd double %18, 0x3E7AD7F29ABCAF48
  %20 = fptrunc double %19 to float
  store float %20, float* %9, align 4
  %21 = load float, float* %9, align 4
  %22 = fpext float %21 to double
  %23 = fcmp oge double %22, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store float 0x3FEFFF2E40000000, float* %9, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load float, float* %9, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store float %26, float* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load float, float* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = call i32 @get_setup_template(i64 %29, i64 %30, float %31, i32 0, i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @OV_EIMPL, align 4
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %25
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @vorbis_encode_setup_setting(%struct.TYPE_6__* %44, i64 %45, i64 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @get_setup_template(i64, i64, float, i32, i32*) #1

declare dso_local i32 @vorbis_encode_setup_setting(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
