; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_check_frame_int.c_container_test_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_check_frame_int.c_container_test_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psz_in = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@VC_CONTAINER_LOG_ERROR = common dso_local global i32 0, align 4
@VC_CONTAINER_LOG_INFO = common dso_local global i32 0, align 4
@fps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing uri argument\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid command line option (%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"usage: %s [options] uri\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"options list:\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c" -vxx  : general verbosity level (replace xx with a number of 'v')\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c" -f    : required frame rate/second (frame interval must not exceed 1/f)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" -h    : help\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @container_test_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @container_test_parse_cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %106, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %109

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %106

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @psz_in, align 8
  br label %106

38:                                               ; preds = %22
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %104 [
    i32 118, label %47
    i32 102, label %81
    i32 104, label %103
  ]

47:                                               ; preds = %38
  store i32 2, i32* %7, align 4
  store i32* @verbosity, i32** %9, align 8
  %48 = load i32, i32* @VC_CONTAINER_LOG_ERROR, align 4
  %49 = load i32, i32* @VC_CONTAINER_LOG_INFO, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %77, %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 118
  br label %69

69:                                               ; preds = %55, %52
  %70 = phi i1 [ false, %52 ], [ %68, %55 ]
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = or i32 %74, 1
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %52

80:                                               ; preds = %69
  br label %105

81:                                               ; preds = %38
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86, %81
  br label %115

95:                                               ; preds = %86
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strtol(i8* %101, i32 0, i32 0)
  store i32 %102, i32* @fps, align 4
  br label %105

103:                                              ; preds = %38
  br label %122

104:                                              ; preds = %38
  br label %115

105:                                              ; preds = %95, %80
  br label %106

106:                                              ; preds = %105, %32, %21
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %10

109:                                              ; preds = %10
  %110 = load i8*, i8** @psz_in, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = call i32 (i32, i8*, ...) @LOG_ERROR(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %122

114:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %161

115:                                              ; preds = %104, %94
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32, i8*, ...) @LOG_ERROR(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %115, %112, %103
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @strrchr(i8* %125, i8 signext 92)
  store i8* %126, i8** @psz_in, align 8
  %127 = load i8*, i8** @psz_in, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i8*, i8** @psz_in, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** @psz_in, align 8
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i8*, i8** @psz_in, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @strrchr(i8* %138, i8 signext 47)
  store i8* %139, i8** @psz_in, align 8
  %140 = load i8*, i8** @psz_in, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i8*, i8** @psz_in, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** @psz_in, align 8
  br label %145

145:                                              ; preds = %142, %135
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i8*, i8** @psz_in, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** @psz_in, align 8
  br label %153

153:                                              ; preds = %149, %146
  %154 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i8*, i8** @psz_in, align 8
  %156 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  %157 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %158 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %159 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  %160 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %153, %114
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @strtol(i8*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @LOG_INFO(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
