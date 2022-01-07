; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_fourcc2pixfmt.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_fourcc2pixfmt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hp:lL\00", align 1
@optarg = common dso_local global i8* null, align 8
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid pixel format selected '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = call %struct.TYPE_6__* (...) @avpriv_get_raw_pix_fmt_tags()
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %126

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call signext i8 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8 %23, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %37 [
    i32 104, label %29
    i32 108, label %31
    i32 76, label %32
    i32 112, label %33
    i32 63, label %35
  ]

29:                                               ; preds = %26
  %30 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %126

31:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %37

32:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %10, align 8
  br label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %126

37:                                               ; preds = %26, %33, %32, %31
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %67, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @av_fourcc2str(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @av_get_pix_fmt_name(i64 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %42

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %76)
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %80)
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %12, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %79
  br label %103

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = call i32 @print_pix_fmt_fourccs(i32 %99, %struct.TYPE_6__* %100, i8 signext 32)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %94, %93
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %75

106:                                              ; preds = %75
  br label %107

107:                                              ; preds = %106, %71
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @av_get_pix_fmt(i8* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  store i32 1, i32* %3, align 4
  br label %126

121:                                              ; preds = %110
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %124 = call i32 @print_pix_fmt_fourccs(i32 %122, %struct.TYPE_6__* %123, i8 signext 10)
  br label %125

125:                                              ; preds = %121, %107
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %117, %35, %29, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_6__* @avpriv_get_raw_pix_fmt_tags(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @av_fourcc2str(i32) #1

declare dso_local i8* @av_get_pix_fmt_name(i64) #1

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @print_pix_fmt_fourccs(i32, %struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @av_get_pix_fmt(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
