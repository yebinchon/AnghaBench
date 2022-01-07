; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_merge_uris.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_merge_uris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"RTSP: Error merging URIs: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i8**)* @rtsp_merge_uris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsp_merge_uris(i32* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8**, i8*** %8, align 8
  store i8* null, i8** %15, align 8
  %16 = call i32* (...) @vc_uri_create()
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %87

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @vc_uri_parse(i32* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %26, i64* %11, align 8
  br label %87

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @vc_uri_scheme(i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %34, 1
  %36 = call i64 @malloc(i64 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %8, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %87

43:                                               ; preds = %31
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @strncpy(i8* %45, i8* %46, i64 %47)
  %49 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %49, i64* %11, align 8
  br label %87

50:                                               ; preds = %27
  %51 = call i32* (...) @vc_uri_create()
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %87

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @vc_uri_parse(i32* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %61, i64* %11, align 8
  br label %87

62:                                               ; preds = %55
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @vc_uri_merge(i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %87

68:                                               ; preds = %62
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @vc_uri_build(i32* %69, i8* null, i64 0)
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @malloc(i64 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %87

80:                                               ; preds = %68
  %81 = load i32*, i32** %10, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @vc_uri_build(i32* %81, i8* %83, i64 %84)
  %86 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %80, %79, %67, %60, %54, %43, %42, %25, %19
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @vc_uri_release(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @vc_uri_release(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32*, i32** %5, align 8
  %105 = load i64, i64* %11, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @LOG_ERROR(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i64, i64* %11, align 8
  ret i64 %109
}

declare dso_local i32* @vc_uri_create(...) #1

declare dso_local i32 @vc_uri_parse(i32*, i8*) #1

declare dso_local i32* @vc_uri_scheme(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @vc_uri_merge(i32*, i32*) #1

declare dso_local i64 @vc_uri_build(i32*, i8*, i64) #1

declare dso_local i32 @vc_uri_release(i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
