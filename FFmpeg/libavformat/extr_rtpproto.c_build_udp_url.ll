; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_build_udp_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_build_udp_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"localport=%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ttl=%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"buffer_size=%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pkt_size=%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"connect=1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dscp=%d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"fifo_size=0\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sources=%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"block=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i8*, i32, i32, i8*, i8*)* @build_udp_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_udp_url(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @ff_url_join(i8* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i8* %19, i32 %20, i32* null)
  %22 = load i32, i32* %14, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp uge i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp uge i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %47, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp uge i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %59, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp uge i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %80, i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %87, i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i8*, i8** %15, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %99, i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %92, %86
  %104 = load i8*, i8** %16, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 (i8*, i32, i8*, ...) @url_add_option(i8* %113, i32 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %112, %106, %103
  ret void
}

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @url_add_option(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
