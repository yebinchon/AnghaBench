; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"*** Failed to create URI structure.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Test parameter validation\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Test parsing URIs:\00", align 1
@test_parse_uris = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Test building URIs:\00", align 1
@test_build_uris = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Test merging URIs:\00", align 1
@test_merge_uris = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Test parsing URIs from command line:\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"*** %d errors reported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32* (...) @vc_uri_create()
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %120

14:                                               ; preds = %2
  %15 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @test_parameter_validation(i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %45, %14
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_parse_uris, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_parse_uris, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_parse_uris, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @test_parsing_uri(i32* %29, i8* %34, i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %23

48:                                               ; preds = %23
  %49 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %65, %48
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_build_uris, align 8
  %53 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_build_uris, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = call i64 @test_building_uri(i32* %56, %struct.TYPE_7__* %59)
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %50

68:                                               ; preds = %50
  %69 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %85, %68
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_merge_uris, align 8
  %73 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_merge_uris, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = call i64 @test_merging_uri(i32* %76, %struct.TYPE_7__* %79)
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %70

88:                                               ; preds = %70
  %89 = load i32, i32* %4, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %97, %91
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  %96 = icmp sgt i32 %94, 1
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i32*, i32** %6, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @test_parsing_uri(i32* %98, i8* %103, i32* null)
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  br label %93

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @vc_uri_release(i32* %111)
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %12
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32* @vc_uri_create(...) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @LOG_INFO(i32*, i8*) #1

declare dso_local i64 @test_parameter_validation(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @test_parsing_uri(i32*, i8*, i32*) #1

declare dso_local i64 @test_building_uri(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @test_merging_uri(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @vc_uri_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
