; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_do_adobe_auth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_do_adobe_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.AVMD5 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"?authmod=%s&user=%s&challenge=%s&response=%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"adobe\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&opaque=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8*, i8*)* @do_adobe_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_adobe_auth(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca %struct.AVMD5*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = call i32 @AV_BASE64_SIZE(i32 64)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = call %struct.AVMD5* (...) @av_md5_alloc()
  store %struct.AVMD5* %22, %struct.AVMD5** %16, align 8
  %23 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %24 = icmp ne %struct.AVMD5* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %113

28:                                               ; preds = %5
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %30 = call i32 (...) @av_get_random_seed()
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %33 = call i32 @av_md5_init(%struct.AVMD5* %32)
  %34 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @av_md5_update(%struct.AVMD5* %34, i8* %35, i32 %37)
  %39 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @av_md5_update(%struct.AVMD5* %39, i8* %40, i32 %42)
  %44 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @av_md5_update(%struct.AVMD5* %44, i8* %47, i32 %51)
  %53 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %55 = call i32 @av_md5_final(%struct.AVMD5* %53, i32* %54)
  %56 = trunc i64 %19 to i32
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %58 = call i32 @av_base64_encode(i8* %21, i32 %56, i32* %57, i32 64)
  %59 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %60 = call i32 @av_md5_init(%struct.AVMD5* %59)
  %61 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %62 = call i32 @strlen(i8* %21)
  %63 = call i32 @av_md5_update(%struct.AVMD5* %61, i8* %21, i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %28
  %67 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i32 @av_md5_update(%struct.AVMD5* %67, i8* %68, i32 %70)
  br label %82

72:                                               ; preds = %28
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @av_md5_update(%struct.AVMD5* %76, i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @av_md5_update(%struct.AVMD5* %83, i8* %84, i32 %86)
  %88 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %90 = call i32 @av_md5_final(%struct.AVMD5* %88, i32* %89)
  %91 = trunc i64 %19 to i32
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %93 = call i32 @av_base64_encode(i8* %21, i32 %91, i32* %92, i32 64)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %99, i8* %100, i8* %21)
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %82
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @av_strlcatf(i32 %107, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %104, %82
  %111 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %112 = call i32 @av_free(%struct.AVMD5* %111)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %113

113:                                              ; preds = %110, %25
  %114 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.AVMD5* @av_md5_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i32 @av_md5_init(%struct.AVMD5*) #1

declare dso_local i32 @av_md5_update(%struct.AVMD5*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_md5_final(%struct.AVMD5*, i32*) #1

declare dso_local i32 @av_base64_encode(i8*, i32, i32*, i32) #1

declare dso_local i32 @av_strlcatf(i32, i32, i8*, i8*) #1

declare dso_local i32 @av_free(%struct.AVMD5*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
