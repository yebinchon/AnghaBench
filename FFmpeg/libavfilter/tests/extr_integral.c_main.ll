; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/tests/extr_integral.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/tests/extr_integral.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@main.src = internal constant [40 x i32] [i32 176, i32 113, i32 251, i32 216, i32 1, i32 217, i32 1, i32 2, i32 81, i32 142, i32 65, i32 15, i32 132, i32 88, i32 3, i32 4, i32 199, i32 141, i32 7, i32 112, i32 92, i32 71, i32 5, i32 6, i32 9, i32 78, i32 252, i32 116, i32 143, i32 154, i32 7, i32 8, i32 96, i32 142, i32 32, i32 170, i32 149, i32 125, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [17 x i8] c"xoff=%d yoff=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Integral mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %17 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i32 6, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 12, i32* %12, align 4
  store i32 11, i32* %13, align 4
  store i32 16, i32* %14, align 4
  %18 = call i32* @av_mallocz_array(i32 12, i32 64)
  store i32* %18, i32** %15, align 8
  %19 = call i32* @av_mallocz_array(i32 12, i32 64)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %0
  store i32 -1, i32* %1, align 4
  br label %76

26:                                               ; preds = %22
  %27 = load i32*, i32** %15, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 16
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 16
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %6, align 8
  %33 = call i32 @ff_nlmeans_init(%struct.TYPE_4__* %7)
  store i32 -3, i32* %4, align 4
  br label %34

34:                                               ; preds = %68, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 3
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  store i32 -3, i32* %3, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp sle i32 %39, 3
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @compute_ssd_integral_image(%struct.TYPE_4__* %7, i32* %45, i32 16, i32* getelementptr inbounds ([40 x i32], [40 x i32]* @main.src, i64 0, i64 0), i32 8, i32 %46, i32 %47, i32 3, i32 6, i32 5)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @display_integral(i32* %49, i32 12, i32 11, i32 16)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @compute_unsafe_ssd_integral_image(i32* %51, i32 16, i32 0, i32 0, i32* getelementptr inbounds ([40 x i32], [40 x i32]* @main.src, i64 0, i64 0), i32 8, i32 %52, i32 %53, i32 3, i32 6, i32 5, i32 12, i32 11)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @display_integral(i32* %55, i32 12, i32 11, i32 16)
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = call i64 @memcmp(i32* %57, i32* %58, i32 768)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %72

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %38

67:                                               ; preds = %38
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %34

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71, %61
  %73 = call i32 @av_freep(i32** %15)
  %74 = call i32 @av_freep(i32** %16)
  %75 = load i32, i32* %2, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %72, %25
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @av_mallocz_array(i32, i32) #2

declare dso_local i32 @ff_nlmeans_init(%struct.TYPE_4__*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @compute_ssd_integral_image(%struct.TYPE_4__*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @display_integral(i32*, i32, i32, i32) #2

declare dso_local i32 @compute_unsafe_ssd_integral_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @av_freep(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
