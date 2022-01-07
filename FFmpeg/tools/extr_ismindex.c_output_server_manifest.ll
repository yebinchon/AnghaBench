; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_output_server_manifest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_output_server_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tracks = type { i32, %struct.Track** }
%struct.Track = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%s%s.ism\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?>\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"<smil xmlns=\22http://www.w3.org/2001/SMIL20/Language\22>\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\09<head>\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"\09\09<meta name=\22clientManifestRelativePath\22 content=\22%s%s.ismc\22 />\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09</head>\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\09<body>\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\09\09<switch>\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\09\09\09<%s src=\22%s%s\22 systemBitrate=\22%d\22>\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"\09\09\09\09<param name=\22trackID\22 value=\22%d\22 valueType=\22data\22 />\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\09\09\09</%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\09\09</switch>\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\09</body>\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"</smil>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Tracks*, i8*, i8*, i8*, i8*)* @output_server_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_server_manifest(%struct.Tracks* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.Tracks*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1000 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.Track*, align 8
  %15 = alloca i8*, align 8
  store %struct.Tracks* %0, %struct.Tracks** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @snprintf(i8* %16, i32 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %26 = call i32 @perror(i8* %25)
  br label %94

27:                                               ; preds = %5
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %82, %27
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.Tracks*, %struct.Tracks** %6, align 8
  %47 = getelementptr inbounds %struct.Tracks, %struct.Tracks* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.Tracks*, %struct.Tracks** %6, align 8
  %52 = getelementptr inbounds %struct.Tracks, %struct.Tracks* %51, i32 0, i32 1
  %53 = load %struct.Track**, %struct.Track*** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.Track*, %struct.Track** %53, i64 %55
  %57 = load %struct.Track*, %struct.Track** %56, align 8
  store %struct.Track* %57, %struct.Track** %14, align 8
  %58 = load %struct.Track*, %struct.Track** %14, align 8
  %59 = getelementptr inbounds %struct.Track, %struct.Track* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  store i8* %63, i8** %15, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.Track*, %struct.Track** %14, align 8
  %68 = getelementptr inbounds %struct.Track, %struct.Track* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.Track*, %struct.Track** %14, align 8
  %71 = getelementptr inbounds %struct.Track, %struct.Track* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %65, i8* %66, i32 %69, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.Track*, %struct.Track** %14, align 8
  %76 = getelementptr inbounds %struct.Track, %struct.Track* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %50
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %44

85:                                               ; preds = %44
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @fclose(i32* %92)
  br label %94

94:                                               ; preds = %85, %24
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
