; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_uslt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_uslt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"lyrics-%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Error reading lyrics, skipped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32**)* @read_uslt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_uslt(i32* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %73

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @avio_r8(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %25 = call i32 @avio_read(i32* %23, i8* %24, i32 3)
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %73

28:                                               ; preds = %18
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 3
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @decode_str(i32* %32, i32* %33, i32 %34, i8** %10, i32* %7)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %73

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @decode_str(i32* %39, i32* %40, i32 %41, i8** %11, i32* %7)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %73

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %64 = call i8* @av_asprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %62, i8* %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  br label %73

68:                                               ; preds = %54
  %69 = load i32**, i32*** %8, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @av_dict_set(i32** %69, i8* %70, i8* %71, i32 0)
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %68, %67, %44, %37, %27, %17
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 @av_log(i32* %77, i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @av_free(i8* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @av_free(i8* %83)
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @av_free(i8* %85)
  ret void
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i64 @decode_str(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i8* @av_asprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
