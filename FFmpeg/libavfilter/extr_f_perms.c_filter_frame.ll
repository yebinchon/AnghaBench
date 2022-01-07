; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_perms.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_perms.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@RW = common dso_local global i32 0, align 4
@RO = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s -> %s%s\0A\00", align 1
@perm_str = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" (no-op)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @av_frame_is_writable(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @RW, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @RO, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %57 [
    i32 128, label %31
    i32 131, label %41
    i32 130, label %53
    i32 129, label %55
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RO, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @RW, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @RO, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %11, align 4
  br label %59

41:                                               ; preds = %26
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = call i32 @av_lfg_get(i32* %43)
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @RW, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @RO, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %26
  %54 = load i32, i32* @RO, align 4
  store i32 %54, i32* %11, align 4
  br label %59

55:                                               ; preds = %26
  %56 = load i32, i32* @RW, align 4
  store i32 %56, i32* %11, align 4
  br label %59

57:                                               ; preds = %26
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %55, %53, %51, %39
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %62 = load i32*, i32** @perm_str, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @perm_str, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @av_log(%struct.TYPE_8__* %60, i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %71, i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RO, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %59
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @RW, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @av_frame_make_writable(i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %129

91:                                               ; preds = %85
  br label %110

92:                                               ; preds = %81, %59
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @RW, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @RO, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = call i32* @av_frame_clone(i32* %101)
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %3, align 4
  br label %129

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %96, %92
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @ff_filter_frame(i32 %115, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @RW, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @RO, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @av_frame_free(i32** %5)
  br label %127

127:                                              ; preds = %125, %121, %110
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %105, %89
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @av_frame_is_writable(i32*) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @av_frame_make_writable(i32*) #1

declare dso_local i32* @av_frame_clone(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(i32, i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
