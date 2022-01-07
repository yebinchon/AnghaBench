; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libssh.c_libssh_move.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libssh.c_libssh_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*)* @libssh_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libssh_move(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load i32, i32* @MAX_URL_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @MAX_URL_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i32 22, i32* %15, align 4
  store i32 22, i32* %16, align 4
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %30 = trunc i64 %22 to i32
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @av_url_split(i32* null, i32 0, i8* %28, i32 1024, i8* %29, i32 1024, i32* %15, i8* %24, i32 %30, i32 %33)
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %37 = trunc i64 %26 to i32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @av_url_split(i32* null, i32 0, i8* %35, i32 1024, i8* %36, i32 1024, i32* %16, i8* %27, i32 %37, i32 %40)
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %44 = call i64 @strcmp(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %2
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %46, %2
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %84

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = trunc i64 %22 to i32
  %64 = call i32 @libssh_connect(%struct.TYPE_7__* %59, i32 %62, i8* %24, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %80

67:                                               ; preds = %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @sftp_rename(i32 %70, i8* %24, i8* %27)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sftp_get_error(i32 %76)
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %73, %66
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = call i32 @libssh_close(%struct.TYPE_7__* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %55
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_url_split(i32*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @libssh_connect(%struct.TYPE_7__*, i32, i8*, i32) #2

declare dso_local i64 @sftp_rename(i32, i8*, i8*) #2

declare dso_local i32 @sftp_get_error(i32) #2

declare dso_local i32 @libssh_close(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
