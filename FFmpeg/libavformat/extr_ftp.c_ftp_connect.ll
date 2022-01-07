; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i64, i32, i32 }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@DISCONNECTED = common dso_local global i32 0, align 4
@UNKNOWN_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nopassword\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @ftp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_connect(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* @MAX_URL_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @MAX_URL_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* @MAX_URL_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %16, align 8
  %31 = load i32, i32* @DISCONNECTED, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @UNKNOWN_METHOD, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 10
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %44 = trunc i64 %23 to i32
  %45 = trunc i64 %26 to i32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = trunc i64 %19 to i32
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @av_url_split(i8* %43, i32 10, i8* %24, i32 %44, i8* %27, i32 %45, i32* %47, i8* %21, i32 %48, i8* %49)
  %51 = call i8* @av_strtok(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i8* @av_strtok(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @av_x_if_null(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %65, i8** %12, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @av_strdup(i8* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i8* @av_strdup(i8* %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = call i8* @av_strdup(i8* %27)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %78
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102, %94, %78
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %153

110:                                              ; preds = %102, %99
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 65535
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %110
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 21, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = call i32 @ftp_connect_control_connection(%struct.TYPE_6__* %124)
  store i32 %125, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %153

129:                                              ; preds = %123
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %131 = call i32 @ftp_current_dir(%struct.TYPE_7__* %130)
  store i32 %131, i32* %15, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %153

135:                                              ; preds = %129
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @av_append_path_component(i8* %138, i8* %21)
  store i8* %139, i8** %14, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = call i32 @AVERROR(i32 %143)
  store i32 %144, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %153

145:                                              ; preds = %135
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @av_free(i8* %148)
  %150 = load i8*, i8** %14, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %153

153:                                              ; preds = %145, %142, %133, %127, %107
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_url_split(i8*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i8*) #2

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #2

declare dso_local i8* @av_x_if_null(i32, i8*) #2

declare dso_local i8* @av_strdup(i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ftp_connect_control_connection(%struct.TYPE_6__*) #2

declare dso_local i32 @ftp_current_dir(%struct.TYPE_7__*) #2

declare dso_local i8* @av_append_path_component(i8*, i8*) #2

declare dso_local i32 @av_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
