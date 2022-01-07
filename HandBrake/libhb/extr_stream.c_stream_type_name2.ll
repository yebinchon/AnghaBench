; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_stream_type_name2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_stream_type_name2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64*, i32, i32 }
%struct.TYPE_10__ = type { i64* }

@stream_type_name2.codec_name_caps = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"HDMV\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BD LPCM\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TrueHD\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"E-AC3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DTS-HD HRA\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DTS-HD MA\00", align 1
@st2codec = common dso_local global %struct.TYPE_11__* null, align 8
@HB_ACODEC_FF_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, %struct.TYPE_9__*)* @stream_type_name2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stream_type_name2(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %21 [
    i32 128, label %16
    i32 131, label %17
    i32 132, label %18
    i32 133, label %19
    i32 134, label %20
  ]

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %87

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %87

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %87

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %87

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %87

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st2codec, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st2codec, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  br label %87

42:                                               ; preds = %23
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = bitcast i64* %52 to i8*
  store i8* %53, i8** %3, align 8
  br label %87

54:                                               ; preds = %42
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HB_ACODEC_FF_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_10__* @avcodec_find_decoder(i32 %64)
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @strncpyupper(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stream_type_name2.codec_name_caps, i64 0, i64 0), i64* %83, i32 80)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stream_type_name2.codec_name_caps, i64 0, i64 0), i8** %3, align 8
  br label %87

85:                                               ; preds = %73, %68, %61
  br label %86

86:                                               ; preds = %85, %54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %87

87:                                               ; preds = %86, %80, %49, %33, %20, %19, %18, %17, %16
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

declare dso_local i64 @STR4_TO_UINT32(i8*) #1

declare dso_local %struct.TYPE_10__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @strncpyupper(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
