; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_do_llnw_auth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_do_llnw_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.AVMD5 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"live\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"00000001\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c":/\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"/_definst_\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"?authmod=%s&user=%s&nonce=%s&cnonce=%s&nc=%s&response=%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"llnw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @do_llnw_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_llnw_auth(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca [33 x i8], align 16
  %10 = alloca [33 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca %struct.AVMD5*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %17 = call %struct.AVMD5* (...) @av_md5_alloc()
  store %struct.AVMD5* %17, %struct.AVMD5** %16, align 8
  %18 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %19 = icmp ne %struct.AVMD5* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %159

23:                                               ; preds = %3
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %25 = call i32 (...) @av_get_random_seed()
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %28 = call i32 @av_md5_init(%struct.AVMD5* %27)
  %29 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @av_md5_update(%struct.AVMD5* %29, i8* %30, i32 %32)
  %34 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %35 = call i32 @av_md5_update(%struct.AVMD5* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %36 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32 @av_md5_update(%struct.AVMD5* %36, i8* %37, i32 %39)
  %41 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %42 = call i32 @av_md5_update(%struct.AVMD5* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %43 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @av_md5_update(%struct.AVMD5* %43, i8* %46, i32 %50)
  %52 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %54 = call i32 @av_md5_final(%struct.AVMD5* %52, i32* %53)
  %55 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %57 = call i32 @ff_data_to_hex(i8* %55, i32* %56, i32 16, i32 1)
  %58 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 32
  store i8 0, i8* %58, align 16
  %59 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %60 = call i32 @av_md5_init(%struct.AVMD5* %59)
  %61 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @av_md5_update(%struct.AVMD5* %61, i8* %62, i32 %64)
  %66 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %67 = call i32 @av_md5_update(%struct.AVMD5* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %68 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @av_md5_update(%struct.AVMD5* %68, i8* %71, i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strchr(i8* %79, i8 signext 47)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %23
  %83 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %84 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 @av_md5_update(%struct.AVMD5* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %23
  %87 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %89 = call i32 @av_md5_final(%struct.AVMD5* %87, i32* %88)
  %90 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %92 = call i32 @ff_data_to_hex(i8* %90, i32* %91, i32 16, i32 1)
  %93 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 32
  store i8 0, i8* %93, align 16
  %94 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %95 = call i32 @av_md5_init(%struct.AVMD5* %94)
  %96 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %97 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %98 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %99 = call i32 @strlen(i8* %98)
  %100 = call i32 @av_md5_update(%struct.AVMD5* %96, i8* %97, i32 %99)
  %101 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %102 = call i32 @av_md5_update(%struct.AVMD5* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %86
  %106 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = call i32 @av_md5_update(%struct.AVMD5* %106, i8* %107, i32 %109)
  br label %111

111:                                              ; preds = %105, %86
  %112 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %113 = call i32 @av_md5_update(%struct.AVMD5* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %114 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = call i32 @av_md5_update(%struct.AVMD5* %114, i8* %115, i32 %117)
  %119 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %120 = call i32 @av_md5_update(%struct.AVMD5* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %121 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %124 = call i32 @strlen(i8* %123)
  %125 = call i32 @av_md5_update(%struct.AVMD5* %121, i8* %122, i32 %124)
  %126 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %127 = call i32 @av_md5_update(%struct.AVMD5* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %128 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = call i32 @av_md5_update(%struct.AVMD5* %128, i8* %129, i32 %131)
  %133 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %134 = call i32 @av_md5_update(%struct.AVMD5* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %135 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %136 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %137 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @av_md5_update(%struct.AVMD5* %135, i8* %136, i32 %138)
  %140 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %142 = call i32 @av_md5_final(%struct.AVMD5* %140, i32* %141)
  %143 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %145 = call i32 @ff_data_to_hex(i8* %143, i32* %144, i32 16, i32 1)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %6, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %154 = load i8*, i8** %14, align 8
  %155 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %156 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %151, i8* %152, i8* %153, i8* %154, i8* %155)
  %157 = load %struct.AVMD5*, %struct.AVMD5** %16, align 8
  %158 = call i32 @av_free(%struct.AVMD5* %157)
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %111, %20
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.AVMD5* @av_md5_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i32 @av_md5_init(%struct.AVMD5*) #1

declare dso_local i32 @av_md5_update(%struct.AVMD5*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_md5_final(%struct.AVMD5*, i32*) #1

declare dso_local i32 @ff_data_to_hex(i8*, i32*, i32, i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_free(%struct.AVMD5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
