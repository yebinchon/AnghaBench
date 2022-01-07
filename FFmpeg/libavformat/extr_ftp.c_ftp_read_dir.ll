; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_read_dir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_read_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DIR_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__**)* @ftp_read_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_read_dir(%struct.TYPE_10__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  br label %14

14:                                               ; preds = %161, %2
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %85, %14
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %102

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EIO, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %165

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memmove(i8* %51, i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %34
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i32, i32* @DIR_BUFFER_SIZE, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = sub nsw i32 %69, %73
  %75 = call i32 @ffurl_read(i32 %60, i8* %68, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %165

80:                                               ; preds = %57
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %84, align 8
  store i32 0, i32* %3, align 4
  br label %165

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %23

102:                                              ; preds = %23
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8*, i8** %7, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ugt i8* %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %102
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %126, %120, %102
  %130 = call %struct.TYPE_12__* (...) @ff_alloc_dir_entry()
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %131, align 8
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %3, align 4
  br label %165

138:                                              ; preds = %129
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = call i32 @ftp_parse_entry(%struct.TYPE_10__* %145, i8* %146, %struct.TYPE_12__* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %138
  %153 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %154 = call i32 @avio_free_directory_entry(%struct.TYPE_12__** %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %165

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %14, label %164

164:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %157, %135, %83, %78, %31
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @ffurl_read(i32, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @ff_alloc_dir_entry(...) #1

declare dso_local i32 @ftp_parse_entry(%struct.TYPE_10__*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @avio_free_directory_entry(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
