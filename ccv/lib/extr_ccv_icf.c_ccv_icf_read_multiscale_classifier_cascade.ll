; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c_ccv_icf_read_multiscale_classifier_cascade.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c_ccv_icf_read_multiscale_classifier_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s/multiscale\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@CCV_ICF_CLASSIFIER_TYPE_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s/cascade-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @ccv_icf_read_multiscale_classifier_cascade(i8* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %80

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @fscanf(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @fclose(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 32, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @ccmalloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %9, align 8
  %31 = load i32, i32* @CCV_ICF_CLASSIFIER_TYPE_B, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 1
  %45 = bitcast %struct.TYPE_3__* %44 to i32*
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %75, %19
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %53, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %56)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @_ccv_icf_read_classifier_cascade_with_fd(i32* %69, i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %62, %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %48

78:                                               ; preds = %48
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %2, align 8
  br label %81

80:                                               ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %81

81:                                               ; preds = %80, %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %82
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @_ccv_icf_read_classifier_cascade_with_fd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
