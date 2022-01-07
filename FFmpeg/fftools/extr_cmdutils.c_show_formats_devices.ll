; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_formats_devices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_formats_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s\0A D. = Demuxing supported\0A .E = Muxing supported\0A --\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Devices:\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"File formats:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"000\00", align 1
@SHOW_DEMUXERS = common dso_local global i32 0, align 4
@SHOW_MUXERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c" %s%s %-15s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32)* @show_formats_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_formats_devices(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %26

26:                                               ; preds = %147, %5
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SHOW_DEMUXERS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  store i8* null, i8** %13, align 8
  br label %31

31:                                               ; preds = %69, %44, %30
  %32 = call %struct.TYPE_5__* @av_muxer_iterate(i8** %13)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %14, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @is_device(i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %31

45:                                               ; preds = %41, %34
  %46 = load i8*, i8** %19, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48, %45
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %19, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %20, align 8
  store i32 1, i32* %18, align 4
  br label %69

69:                                               ; preds = %62, %55, %48
  br label %31

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @SHOW_MUXERS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %127

75:                                               ; preds = %71
  store i8* null, i8** %11, align 8
  br label %76

76:                                               ; preds = %125, %89, %75
  %77 = call %struct.TYPE_6__* @av_demuxer_iterate(i8** %11)
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %12, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @is_device(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %76

90:                                               ; preds = %86, %79
  %91 = load i8*, i8** %19, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i64 @strcmp(i8* %96, i8* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93, %90
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = call i64 @strcmp(i8* %103, i8* %104)
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %19, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %20, align 8
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %107, %100, %93
  %115 = load i8*, i8** %19, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = call i64 @strcmp(i8* %120, i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 1, i32* %17, align 4
  br label %125

125:                                              ; preds = %124, %117, %114
  br label %76

126:                                              ; preds = %76
  br label %127

127:                                              ; preds = %126, %71
  %128 = load i8*, i8** %19, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %150

131:                                              ; preds = %127
  %132 = load i8*, i8** %19, align 8
  store i8* %132, i8** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %141 = load i8*, i8** %19, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i8*, i8** %20, align 8
  br label %147

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i8* [ %145, %144 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %146 ]
  %149 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %136, i8* %140, i8* %141, i8* %148)
  br label %26

150:                                              ; preds = %130
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @av_muxer_iterate(i8**) #1

declare dso_local i32 @is_device(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @av_demuxer_iterate(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
