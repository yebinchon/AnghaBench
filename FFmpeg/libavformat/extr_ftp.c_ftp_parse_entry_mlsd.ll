; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_parse_entry_mlsd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_parse_entry_mlsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cdir\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pdir\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AVIO_ENTRY_DIRECTORY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AVIO_ENTRY_FILE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"OS.unix=slink:\00", align 1
@AVIO_ENTRY_SYMBOLIC_LINK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"UNIX.mode\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"UNIX.uid\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"UNIX.owner\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"UNIX.gid\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"UNIX.group\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sizd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @ftp_parse_entry_mlsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_parse_entry_mlsd(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @ff_dlog(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %10

10:                                               ; preds = %130, %20, %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @av_strtok(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %131

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @av_strdup(i8* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  br label %10

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @av_strtok(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @av_strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @av_strcasecmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @av_strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %32
  store i32 1, i32* %3, align 4
  br label %132

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @av_strcasecmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @AVIO_ENTRY_DIRECTORY, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  br label %67

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @av_strcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @AVIO_ENTRY_FILE, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @av_strcasecmp(i8* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @AVIO_ENTRY_SYMBOLIC_LINK, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66, %45
  br label %130

68:                                               ; preds = %26
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @av_strcasecmp(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @ftp_parse_date(i8* %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %129

77:                                               ; preds = %68
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @av_strcasecmp(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @strtoumax(i8* %82, i32* null, i32 8)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  br label %128

86:                                               ; preds = %77
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @av_strcasecmp(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @av_strcasecmp(i8* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90, %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @strtoumax(i8* %95, i32* null, i32 10)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %127

99:                                               ; preds = %90
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @av_strcasecmp(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @av_strcasecmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @strtoumax(i8* %108, i32* null, i32 10)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %126

112:                                              ; preds = %103
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @av_strcasecmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @av_strcasecmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116, %112
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @strtoll(i8* %121, i32* null, i32 10)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %120, %116
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %81
  br label %129

129:                                              ; preds = %128, %72
  br label %130

130:                                              ; preds = %129, %67
  br label %10

131:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %40
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @ff_dlog(i32*, i8*, i8*) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i32 @av_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ftp_parse_date(i8*) #1

declare dso_local i8* @strtoumax(i8*, i32*, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
