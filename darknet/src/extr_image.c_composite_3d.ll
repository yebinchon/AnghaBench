; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_composite_3d.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_composite_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"swapped, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @composite_3d(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i8*, i8** %5, align 8
  call void @load_image(%struct.TYPE_8__* sret %9, i8* %23, i32 0, i32 0, i32 0)
  %24 = load i8*, i8** %6, align 8
  call void @load_image(%struct.TYPE_8__* sret %10, i8* %24, i32 0, i32 0, i32 0)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 0, %26
  %28 = sdiv i32 %27, 100
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 100
  %32 = call i32 @best_3d_shift_r(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %9, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %10, i32 %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  call void @crop_image(%struct.TYPE_8__* sret %12, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %10, i32 10, i32 %33, i32 %35, i32 %37)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %46, %48
  %50 = call float @dist_array(i32* %39, i32* %41, i32 %49, i32 100)
  store float %50, float* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  call void @crop_image(%struct.TYPE_8__* sret %14, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %10, i32 -10, i32 %51, i32 %53, i32 %55)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %64, %66
  %68 = call float @dist_array(i32* %57, i32* %59, i32 %67, i32 100)
  store float %68, float* %15, align 4
  %69 = load float, float* %15, align 4
  %70 = load float, float* %13, align 4
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %22
  br i1 false, label %73, label %84

73:                                               ; preds = %72
  %74 = bitcast %struct.TYPE_8__* %16 to i8*
  %75 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = bitcast %struct.TYPE_8__* %9 to i8*
  %77 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 24, i1 false)
  %78 = bitcast %struct.TYPE_8__* %10 to i8*
  %79 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %87

84:                                               ; preds = %72, %22
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %73
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  call void @crop_image(%struct.TYPE_8__* sret %17, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %10, i32 %88, i32 %89, i32 %91, i32 %93)
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %114, %87
  %95 = load i32, i32* %18, align 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %97, %99
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %94

117:                                              ; preds = %94
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @save_image(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %17, i8* %118)
  ret void
}

declare dso_local void @load_image(%struct.TYPE_8__* sret, i8*, i32, i32, i32) #1

declare dso_local i32 @best_3d_shift_r(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32) #1

declare dso_local void @crop_image(%struct.TYPE_8__* sret, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32, i32, i32) #1

declare dso_local float @dist_array(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @save_image(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
