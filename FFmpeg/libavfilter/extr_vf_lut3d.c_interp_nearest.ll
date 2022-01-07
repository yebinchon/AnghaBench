; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_interp_nearest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_interp_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.rgbvec* }
%struct.rgbvec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (%struct.TYPE_3__*, %struct.rgbvec*)* @interp_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @interp_nearest(%struct.TYPE_3__* %0, %struct.rgbvec* %1) #0 {
  %3 = alloca %struct.rgbvec, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rgbvec*, align 8
  %6 = alloca { i64, i32 }, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.rgbvec* %1, %struct.rgbvec** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.rgbvec*, %struct.rgbvec** %8, align 8
  %10 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %11 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @NEAR(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 %13, %16
  %18 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %19 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @NEAR(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %21, %24
  %26 = add i64 %17, %25
  %27 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %28 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @NEAR(i32 %29)
  %31 = add i64 %26, %30
  %32 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %9, i64 %31
  %33 = bitcast %struct.rgbvec* %3 to i8*
  %34 = bitcast %struct.rgbvec* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = bitcast { i64, i32 }* %6 to i8*
  %36 = bitcast %struct.rgbvec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = load { i64, i32 }, { i64, i32 }* %6, align 8
  ret { i64, i32 } %37
}

declare dso_local i64 @NEAR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
