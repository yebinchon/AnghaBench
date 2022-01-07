; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_save_preview.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_save_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d_%d_%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown -- strerror_r() failed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"hb_save_preview: Failed to open %s (reason: %s)\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"hb_save_preview: Failed to write line %d to %s (reason: %s). Preview will be incomplete.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_save_preview(i32* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [80 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @hb_get_instance_id(i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @hb_get_temporary_filename(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32* @hb_fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load i32, i32* @errno, align 4
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %31 = call i64 @strerror_r(i32 %29, i8* %30, i32 79)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %39 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @free(i8* %40)
  store i32 -1, i32* %5, align 4
  br label %130

42:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %121, %42
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %44, %48
  br i1 %49, label %50, label %124

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %15, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %16, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %17, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %117, %50
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @fwrite(i32* %88, i32 %89, i32 1, i32* %90)
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %87
  %95 = load i32*, i32** %10, align 8
  %96 = call i64 @ferror(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32, i32* @errno, align 4
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %101 = call i64 @strerror_r(i32 %99, i8* %100, i32 79)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %105 = call i32 @strcpy(i8* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %14, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %110 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i32 %107, i8* %108, i8* %109)
  br label %125

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %87
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %15, align 8
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %83

120:                                              ; preds = %83
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %43

124:                                              ; preds = %43
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @fclose(i32* %128)
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %36
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i8* @hb_get_temporary_filename(i8*, i32, i32, i32) #1

declare dso_local i32 @hb_get_instance_id(i32*) #1

declare dso_local i32* @hb_fopen(i8*, i8*) #1

declare dso_local i64 @strerror_r(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
