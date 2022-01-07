; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_url_find_protocol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_url_find_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.URLProtocol = type { i32, i32 }

@URL_SCHEME_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"subfile,\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@URL_PROTOCOL_FLAG_NESTED_SCHEME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"https:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tls:\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [93 x i8] c"https protocol not found, recompile FFmpeg with openssl, gnutls or securetransport enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.URLProtocol* (i8*)* @url_find_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.URLProtocol* @url_find_protocol(i8* %0) #0 {
  %2 = alloca %struct.URLProtocol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.URLProtocol**, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.URLProtocol*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @URL_SCHEME_CHARS, align 4
  %13 = call i64 @strspn(i8* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 58
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24, %1
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @is_dos_path(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %24, %20
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  %43 = call i32 @FFMIN(i64 %42, i32 128)
  %44 = call i32 @av_strlcpy(i8* %39, i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %48 = call i32 @av_strlcpy(i8* %46, i8* %47, i32 128)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %50 = call i8* @strchr(i8* %49, i8 signext 43)
  store i8* %50, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %45
  %55 = call %struct.URLProtocol** @ffurl_get_protocols(i32* null, i32* null)
  store %struct.URLProtocol** %55, %struct.URLProtocol*** %4, align 8
  %56 = load %struct.URLProtocol**, %struct.URLProtocol*** %4, align 8
  %57 = icmp ne %struct.URLProtocol** %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store %struct.URLProtocol* null, %struct.URLProtocol** %2, align 8
  br label %116

59:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load %struct.URLProtocol**, %struct.URLProtocol*** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.URLProtocol*, %struct.URLProtocol** %61, i64 %63
  %65 = load %struct.URLProtocol*, %struct.URLProtocol** %64, align 8
  %66 = icmp ne %struct.URLProtocol* %65, null
  br i1 %66, label %67, label %103

67:                                               ; preds = %60
  %68 = load %struct.URLProtocol**, %struct.URLProtocol*** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.URLProtocol*, %struct.URLProtocol** %68, i64 %70
  %72 = load %struct.URLProtocol*, %struct.URLProtocol** %71, align 8
  store %struct.URLProtocol* %72, %struct.URLProtocol** %10, align 8
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %74 = load %struct.URLProtocol*, %struct.URLProtocol** %10, align 8
  %75 = getelementptr inbounds %struct.URLProtocol, %struct.URLProtocol* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcmp(i8* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %67
  %80 = call i32 @av_freep(%struct.URLProtocol*** %4)
  %81 = load %struct.URLProtocol*, %struct.URLProtocol** %10, align 8
  store %struct.URLProtocol* %81, %struct.URLProtocol** %2, align 8
  br label %116

82:                                               ; preds = %67
  %83 = load %struct.URLProtocol*, %struct.URLProtocol** %10, align 8
  %84 = getelementptr inbounds %struct.URLProtocol, %struct.URLProtocol* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @URL_PROTOCOL_FLAG_NESTED_SCHEME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %91 = load %struct.URLProtocol*, %struct.URLProtocol** %10, align 8
  %92 = getelementptr inbounds %struct.URLProtocol, %struct.URLProtocol* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcmp(i8* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = call i32 @av_freep(%struct.URLProtocol*** %4)
  %98 = load %struct.URLProtocol*, %struct.URLProtocol** %10, align 8
  store %struct.URLProtocol* %98, %struct.URLProtocol** %2, align 8
  br label %116

99:                                               ; preds = %89, %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %60

103:                                              ; preds = %60
  %104 = call i32 @av_freep(%struct.URLProtocol*** %4)
  %105 = load i8*, i8** %3, align 8
  %106 = call i64 @av_strstart(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = call i64 @av_strstart(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %103
  %113 = load i32, i32* @AV_LOG_WARNING, align 4
  %114 = call i32 @av_log(i32* null, i32 %113, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %108
  store %struct.URLProtocol* null, %struct.URLProtocol** %2, align 8
  br label %116

116:                                              ; preds = %115, %96, %79, %58
  %117 = load %struct.URLProtocol*, %struct.URLProtocol** %2, align 8
  ret %struct.URLProtocol* %117
}

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @is_dos_path(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local %struct.URLProtocol** @ffurl_get_protocols(i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @av_freep(%struct.URLProtocol***) #1

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
