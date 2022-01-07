; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_reset_jfields.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_reset_jfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32*)*, i32 (%struct.TYPE_5__**, i32*)* }
%struct.FFJniField = type { i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown JNI field type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_5__** %0, i8* %1, %struct.FFJniField* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.FFJniField*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.FFJniField* %2, %struct.FFJniField** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %130, %5
  %15 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %15, i64 %17
  %19 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %133

22:                                               ; preds = %14
  %23 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %23, i64 %25
  %27 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %125 [
    i32 132, label %30
    i32 131, label %77
    i32 129, label %89
    i32 130, label %101
    i32 128, label %113
  ]

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %33, i64 %35
  %37 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = bitcast i32* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  br label %130

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_5__**, i32*)*, i32 (%struct.TYPE_5__**, i32*)** %52, align 8
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 %53(%struct.TYPE_5__** %54, i32* %55)
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_5__**, i32*)*, i32 (%struct.TYPE_5__**, i32*)** %60, align 8
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 %61(%struct.TYPE_5__** %62, i32* %63)
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %68, i64 %70
  %72 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = bitcast i32* %75 to i32**
  store i32* null, i32** %76, align 8
  br label %129

77:                                               ; preds = %22
  %78 = load i8*, i8** %7, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %80, i64 %82
  %84 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %79, i64 %86
  %88 = bitcast i32* %87 to i32**
  store i32* null, i32** %88, align 8
  br label %129

89:                                               ; preds = %22
  %90 = load i8*, i8** %7, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %92, i64 %94
  %96 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %91, i64 %98
  %100 = bitcast i32* %99 to i32**
  store i32* null, i32** %100, align 8
  br label %129

101:                                              ; preds = %22
  %102 = load i8*, i8** %7, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %104, i64 %106
  %108 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  %112 = bitcast i32* %111 to i32**
  store i32* null, i32** %112, align 8
  br label %129

113:                                              ; preds = %22
  %114 = load i8*, i8** %7, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %116, i64 %118
  %120 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %115, i64 %122
  %124 = bitcast i32* %123 to i32**
  store i32* null, i32** %124, align 8
  br label %129

125:                                              ; preds = %22
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 @av_log(i8* %126, i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %113, %101, %89, %77, %65
  br label %130

130:                                              ; preds = %129, %45
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %14

133:                                              ; preds = %14
  ret i32 0
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
