; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_inverse_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_inverse_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)* }
%struct.TYPE_8__ = type { i32, i32 }

@WINDOW_SIZE = common dso_local global i32 0, align 4
@FREQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float*, %struct.TYPE_8__*)* @inverse_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inverse_transform(%struct.TYPE_7__* %0, float* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store float* %1, float** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %13 = load i32, i32* @WINDOW_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.TYPE_8__, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @WINDOW_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca %struct.TYPE_8__, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %34, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @FREQ_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = bitcast %struct.TYPE_8__* %27 to i8*
  %33 = bitcast %struct.TYPE_8__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 8, i1 false)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load i32, i32* @FREQ_SIZE, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %67, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @WINDOW_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i32, i32* @WINDOW_SIZE, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @WINDOW_SIZE, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %43
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32 (i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)*, i32 (i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 %76, %struct.TYPE_8__* %19, %struct.TYPE_8__* %16, i32 4)
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %95, %70
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @WINDOW_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WINDOW_SIZE, align 4
  %89 = sdiv i32 %87, %88
  %90 = sitofp i32 %89 to float
  %91 = load float*, float** %5, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
