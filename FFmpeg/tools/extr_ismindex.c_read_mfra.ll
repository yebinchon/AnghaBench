; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_mfra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_mfra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tracks = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mfra size mismatch\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mfra tag mismatch\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error in write_fragments\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Unable to read the MFRA atom in %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Tracks*, i32, i8*, i32, i32, i8*, i8*)* @read_mfra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mfra(%struct.Tracks* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.Tracks*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.Tracks* %0, %struct.Tracks** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i32* null, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @AVIO_FLAG_READ, align 4
  %21 = call i32 @avio_open2(i32** %17, i8* %19, i32 %20, i32* null, i32* null)
  store i32 %21, i32* %15, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %76

24:                                               ; preds = %7
  %25 = load i32*, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i64 @avio_size(i32* %26)
  %28 = sub nsw i64 %27, 4
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @avio_seek(i32* %25, i64 %28, i32 %29)
  %31 = load i32*, i32** %17, align 8
  %32 = call i64 @avio_rb32(i32* %31)
  store i64 %32, i64* %18, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = load i64, i64* %18, align 8
  %35 = sub nsw i64 0, %34
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i32 @avio_seek(i32* %33, i64 %35, i32 %36)
  %38 = load i32*, i32** %17, align 8
  %39 = call i64 @avio_rb32(i32* %38)
  %40 = load i64, i64* %18, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %15, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %76

44:                                               ; preds = %24
  %45 = load i32*, i32** %17, align 8
  %46 = call i64 @avio_rb32(i32* %45)
  %47 = call i64 @MKBETAG(i8 signext 109, float 1.020000e+02, i8 signext 114, i8 signext 97)
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %15, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %76

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %59, %51
  %53 = load %struct.Tracks*, %struct.Tracks** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @read_tfra(%struct.Tracks* %53, i32 %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %52

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63, %60
  %67 = load %struct.Tracks*, %struct.Tracks** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @write_fragments(%struct.Tracks* %67, i32 %68, i32* %69, i8* %70, i32 %71, i32 %72, i8* %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %66, %63
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %76

76:                                               ; preds = %75, %49, %42, %23
  %77 = load i32*, i32** %17, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %17, align 8
  %81 = call i32 @avio_close(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i64 @avio_size(i32*) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i64 @MKBETAG(i8 signext, float, i8 signext, i8 signext) #1

declare dso_local i32 @read_tfra(%struct.Tracks*, i32, i32*) #1

declare dso_local i32 @write_fragments(%struct.Tracks*, i32, i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @avio_close(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
