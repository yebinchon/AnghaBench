; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc00_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc00_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc00_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca %struct.TYPE_19__, align 4
  %17 = alloca %struct.TYPE_19__, align 4
  %18 = alloca %struct.TYPE_19__, align 4
  %19 = alloca %struct.TYPE_19__, align 4
  %20 = alloca %struct.TYPE_19__, align 4
  %21 = alloca %struct.TYPE_19__, align 4
  %22 = alloca %struct.TYPE_19__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = bitcast %struct.TYPE_19__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = bitcast %struct.TYPE_19__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = bitcast %struct.TYPE_19__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = bitcast %struct.TYPE_19__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = bitcast %struct.TYPE_19__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = bitcast %struct.TYPE_19__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @LD4(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 4, %38
  %40 = load i32*, i32** %5, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @LD4(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @INSERT_D2_UB(i32 %50, i32 %51, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @INSERT_D2_UB(i32 %55, i32 %56, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @INSERT_D2_UB(i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @INSERT_D2_UB(i32 %65, i32 %66, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @LD4(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 4, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @LD4(i32* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @INSERT_D2_UB(i32 %88, i32 %89, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @INSERT_D2_UB(i32 %93, i32 %94, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INSERT_D2_UB(i32 %98, i32 %99, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @INSERT_D2_UB(i32 %103, i32 %104, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @AVER_UB4_UB(i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ST_D8(i32 %136, i32 %138, i32 %140, i32 %142, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %133, i32 %134)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
