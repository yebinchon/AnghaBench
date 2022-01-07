; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_integer.c_av_mod_i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_integer.c_av_mod_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }

@AV_INTEGER_SIZE = common dso_local global i32 0, align 4
@zero_i = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @av_mod_i(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32* %1, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32* %2, i32** %18, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @av_log2_i(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @av_log2_i(i32* %23)
  %25 = sub nsw i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %7, align 8
  br label %30

30:                                               ; preds = %29, %3
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %30
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zero_i, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* @av_sub_i(i32* %42, i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32* @av_mod_i(%struct.TYPE_16__* %41, i32* %48, i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = bitcast %struct.TYPE_16__* %5 to i8*
  %54 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zero_i, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32* @av_sub_i(i32* %57, i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  %62 = bitcast %struct.TYPE_16__* %55 to i8*
  %63 = bitcast %struct.TYPE_16__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zero_i, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32* @av_sub_i(i32* %64, i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32* %67, i32** %68, align 8
  br label %157

69:                                               ; preds = %30
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp sge i64 %87, 0
  br label %89

89:                                               ; preds = %79, %69
  %90 = phi i1 [ false, %69 ], [ %88, %79 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @av_assert2(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @av_log2_i(i32* %94)
  %96 = icmp sge i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert2(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 0, %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32* @av_shr_i(i32* %105, i32 %103)
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  %108 = bitcast %struct.TYPE_16__* %6 to i8*
  %109 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  br label %110

110:                                              ; preds = %101, %89
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = call i32 @memset(%struct.TYPE_16__* %111, i32 0, i32 8)
  br label %113

113:                                              ; preds = %147, %110
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %8, align 4
  %116 = icmp sge i32 %114, 0
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32* @av_shr_i(i32* %121, i32 -1)
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i32* %122, i32** %123, align 8
  %124 = bitcast %struct.TYPE_16__* %118 to i8*
  %125 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 8, i1 false)
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @av_cmp_i(i32* %127, i32* %129)
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %117
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32* @av_sub_i(i32* %134, i32* %136)
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32* %137, i32** %138, align 8
  %139 = bitcast %struct.TYPE_16__* %5 to i8*
  %140 = bitcast %struct.TYPE_16__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 8, i1 false)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %132, %117
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32* @av_shr_i(i32* %149, i32 1)
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32* %150, i32** %151, align 8
  %152 = bitcast %struct.TYPE_16__* %6 to i8*
  %153 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 8, i1 false)
  br label %113

154:                                              ; preds = %113
  %155 = bitcast %struct.TYPE_16__* %4 to i8*
  %156 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 8, i1 false)
  br label %157

157:                                              ; preds = %154, %40
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  ret i32* %159
}

declare dso_local i64 @av_log2_i(i32*) #1

declare dso_local i32* @av_sub_i(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32* @av_shr_i(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @av_cmp_i(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
