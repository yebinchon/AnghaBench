; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_loci_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_loci_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mov_write_loci_tag.astronomical_body = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"earth\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"malformed location metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"loci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @mov_write_loci_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_loci_tag(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @avio_tell(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_3__* @get_metadata_lang(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %6)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call double @strtod(i8* %29, i8** %17)
  store double %30, double* %9, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @AV_LOG_WARNING, align 4
  %37 = call i32 @av_log(i32* %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

38:                                               ; preds = %25
  %39 = load i8*, i8** %17, align 8
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call double @strtod(i8* %40, i8** %17)
  store double %41, double* %8, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @AV_LOG_WARNING, align 4
  %48 = call i32 @av_log(i32* %46, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

49:                                               ; preds = %38
  %50 = load i8*, i8** %17, align 8
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call double @strtod(i8* %51, i8** %17)
  store double %52, double* %10, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %17, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %16, align 8
  br label %60

60:                                               ; preds = %57, %49
  %61 = load double, double* %8, align 8
  %62 = fmul double 6.553600e+04, %61
  %63 = fptosi double %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load double, double* %9, align 8
  %65 = fmul double 6.553600e+04, %64
  %66 = fptosi double %65 to i64
  store i64 %66, i64* %12, align 8
  %67 = load double, double* %10, align 8
  %68 = fmul double 6.553600e+04, %67
  %69 = fptosi double %68 to i64
  store i64 %69, i64* %13, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @avio_wb32(i32* %70, i64 0)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ffio_wfourcc(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @avio_wb32(i32* %74, i64 0)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @avio_wb16(i32* %76, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = add nsw i64 %82, 1
  %84 = call i32 @avio_write(i32* %79, i8* %80, i64 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @avio_w8(i32* %85, i32 0)
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @avio_wb32(i32* %87, i64 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @avio_wb32(i32* %90, i64 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @avio_wb32(i32* %93, i64 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** @mov_write_loci_tag.astronomical_body, align 8
  %98 = load i8*, i8** @mov_write_loci_tag.astronomical_body, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = add nsw i64 %99, 1
  %101 = call i32 @avio_write(i32* %96, i8* %97, i64 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @avio_w8(i32* %102, i32 0)
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @update_size(i32* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %60, %45, %34, %24
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local %struct.TYPE_3__* @get_metadata_lang(i32*, i8*, i32*) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
