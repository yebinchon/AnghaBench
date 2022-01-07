; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect_data_connection.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect_data_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32 }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @ftp_connect_data_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_connect_data_connection(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %87, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = call i64 @ftp_passive_mode_epsv(%struct.TYPE_9__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call i32 @ftp_passive_mode(%struct.TYPE_9__* %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %21
  %33 = trunc i64 %11 to i32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ff_url_join(i8* %13, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %36, i32 %39, i32* null)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @av_dict_set_int(i32** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @ffurl_open_whitelist(i32* %52, i8* %13, i32 %55, i32* %57, i32** %7, i32 %60, i32 %63, %struct.TYPE_8__* %64)
  store i32 %65, i32* %4, align 4
  %66 = call i32 @av_dict_free(i32** %7)
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

71:                                               ; preds = %50
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ftp_restart(%struct.TYPE_9__* %77, i64 %80)
  store i32 %81, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %1
  %88 = load i32, i32* @READY, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %83, %69, %29
  %92 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ftp_passive_mode_epsv(%struct.TYPE_9__*) #2

declare dso_local i32 @ftp_passive_mode(%struct.TYPE_9__*) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i32, i32, i32*) #2

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #2

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @ftp_restart(%struct.TYPE_9__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
