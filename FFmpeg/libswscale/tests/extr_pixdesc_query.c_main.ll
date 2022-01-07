; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/tests/extr_pixdesc_query.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/tests/extr_pixdesc_query.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 (i32)* }
%struct.TYPE_7__ = type { i8* }

@query_tab = common dso_local global %struct.TYPE_8__* null, align 8
@AV_PIX_FMT_RGB32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rgb32\00", align 1
@AV_PIX_FMT_RGB32_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rgb32_1\00", align 1
@AV_PIX_FMT_BGR32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"bgr32\00", align 1
@AV_PIX_FMT_BGR32_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"bgr32_1\00", align 1
@cmp_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %95, %0
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @query_tab, align 8
  %12 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_8__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %98

14:                                               ; preds = %9
  store i8** null, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %15

15:                                               ; preds = %60, %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = call %struct.TYPE_7__* @av_pix_fmt_desc_next(%struct.TYPE_7__* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call i32 @av_pix_fmt_desc_get_id(%struct.TYPE_7__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @query_tab, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64 (i32)*, i64 (i32)** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 %27(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AV_PIX_FMT_RGB32, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %57

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AV_PIX_FMT_RGB32_1, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AV_PIX_FMT_BGR32, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AV_PIX_FMT_BGR32_1, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @av_dynarray_add(i8*** %4, i32* %5, i8* %58)
  br label %60

60:                                               ; preds = %57, %19
  br label %15

61:                                               ; preds = %15
  %62 = load i8**, i8*** %4, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @cmp_str, align 4
  %68 = call i32 @qsort(i8** %65, i32 %66, i32 8, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @query_tab, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %87, %64
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i8**, i8*** %4, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %76

90:                                               ; preds = %76
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i8**, i8*** %4, align 8
  %93 = call i32 @av_free(i8** %92)
  br label %94

94:                                               ; preds = %90, %61
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %9

98:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_next(%struct.TYPE_7__*) #1

declare dso_local i32 @av_pix_fmt_desc_get_id(%struct.TYPE_7__*) #1

declare dso_local i32 @av_dynarray_add(i8***, i32*, i8*) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
