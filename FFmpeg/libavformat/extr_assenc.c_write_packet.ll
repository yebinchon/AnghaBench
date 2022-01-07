; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_assenc.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_assenc.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unexpected ReadOrder %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Marked=\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s%ld,%d:%02d:%02d.%02d,%d:%02d:%02d.%02d,%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = call %struct.TYPE_13__* @av_mallocz(i32 16)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %19, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %157

40:                                               ; preds = %2
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @strtol(i8* %41, i8** %8, i32 10)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = load i32, i32* @AV_LOG_WARNING, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @av_log(%struct.TYPE_15__* %54, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %53, %40
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 44
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strncmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 7
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %77, %73, %68
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @strtol(i8* %81, i8** %8, i32 10)
  %83 = ptrtoint i8* %82 to i64
  store i64 %83, i64* %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 44
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i32, i32* %9, align 4
  %93 = sdiv i32 %92, 360000
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sdiv i32 %94, 6000
  %96 = srem i32 %95, 60
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sdiv i32 %97, 360000
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %99, 6000
  %101 = srem i32 %100, 60
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %102, 100
  %104 = srem i32 %103, 60
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %9, align 4
  %106 = srem i32 %105, 100
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sdiv i32 %107, 100
  %109 = srem i32 %108, 60
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %10, align 4
  %111 = srem i32 %110, 100
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 9
  br i1 %113, label %114, label %115

114:                                              ; preds = %91
  store i32 9, i32* %11, align 4
  store i32 59, i32* %12, align 4
  store i32 59, i32* %13, align 4
  store i32 99, i32* %14, align 4
  br label %115

115:                                              ; preds = %114, %91
  %116 = load i32, i32* %15, align 4
  %117 = icmp sgt i32 %116, 9
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 9, i32* %15, align 4
  store i32 59, i32* %16, align 4
  store i32 59, i32* %17, align 4
  store i32 99, i32* %18, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @av_asprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %125, i64 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i8* %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %119
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %145 = call i32 @av_free(%struct.TYPE_13__* %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %3, align 4
  br label %157

148:                                              ; preds = %119
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %151 = call i32 @insert_dialogue(%struct.TYPE_16__* %149, %struct.TYPE_13__* %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @purge_dialogues(%struct.TYPE_15__* %152, i32 %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %148, %143, %37
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i64) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @av_asprintf(i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @av_free(%struct.TYPE_13__*) #1

declare dso_local i32 @insert_dialogue(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @purge_dialogues(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
