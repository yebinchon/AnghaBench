; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_open.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.Curl_easy*, %struct.Curl_easy*, i32, i32*, i64 }
%struct.TYPE_3__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error: calloc of Curl_easy failed\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLEASY_MAGIC_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error: resolver_init failed\0A\00", align 1
@READBUFFER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Error: malloc of buffer failed\0A\00", align 1
@HEADERSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Error: malloc of headerbuff failed\0A\00", align 1
@PGRS_HIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_open(%struct.Curl_easy** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Curl_easy**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy** %0, %struct.Curl_easy*** %3, align 8
  %6 = call %struct.Curl_easy* @calloc(i32 1, i32 56)
  store %struct.Curl_easy* %6, %struct.Curl_easy** %5, align 8
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %8 = icmp ne %struct.Curl_easy* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @DEBUGF(i32 %11)
  %13 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %13, i64* %2, align 8
  br label %119

14:                                               ; preds = %1
  %15 = load i32, i32* @CURLEASY_MAGIC_NUMBER, align 4
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i64 @Curl_resolver_init(%struct.Curl_easy* %18, i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @DEBUGF(i32 %27)
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %30 = call i32 @free(%struct.Curl_easy* %29)
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %119

32:                                               ; preds = %14
  %33 = load i64, i64* @READBUFFER_SIZE, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i8* @malloc(i64 %34)
  %36 = bitcast i8* %35 to %struct.Curl_easy*
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.Curl_easy* %36, %struct.Curl_easy** %39, align 8
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %42, align 8
  %44 = icmp ne %struct.Curl_easy* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @DEBUGF(i32 %47)
  %49 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %49, i64* %4, align 8
  br label %91

50:                                               ; preds = %32
  %51 = load i64, i64* @HEADERSIZE, align 8
  %52 = call i8* @malloc(i64 %51)
  %53 = bitcast i8* %52 to %struct.Curl_easy*
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store %struct.Curl_easy* %53, %struct.Curl_easy** %56, align 8
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %59, align 8
  %61 = icmp ne %struct.Curl_easy* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @DEBUGF(i32 %64)
  %66 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %66, i64* %4, align 8
  br label %90

67:                                               ; preds = %50
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %69 = call i64 @Curl_init_userdefined(%struct.Curl_easy* %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* @HEADERSIZE, align 8
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i64 %70, i64* %73, align 8
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %75 = call i32 @Curl_convert_init(%struct.Curl_easy* %74)
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %77 = call i32 @Curl_initinfo(%struct.Curl_easy* %76)
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %79 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @PGRS_HIDE, align 4
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %83 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %88 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  br label %90

90:                                               ; preds = %67, %62
  br label %91

91:                                               ; preds = %90, %45
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %96 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @Curl_resolver_cleanup(i32 %98)
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %101 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %102, align 8
  %104 = call i32 @free(%struct.Curl_easy* %103)
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %106 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %107, align 8
  %109 = call i32 @free(%struct.Curl_easy* %108)
  %110 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %111 = call i32 @Curl_freeset(%struct.Curl_easy* %110)
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %113 = call i32 @free(%struct.Curl_easy* %112)
  store %struct.Curl_easy* null, %struct.Curl_easy** %5, align 8
  br label %117

114:                                              ; preds = %91
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %116 = load %struct.Curl_easy**, %struct.Curl_easy*** %3, align 8
  store %struct.Curl_easy* %115, %struct.Curl_easy** %116, align 8
  br label %117

117:                                              ; preds = %114, %94
  %118 = load i64, i64* %4, align 8
  store i64 %118, i64* %2, align 8
  br label %119

119:                                              ; preds = %117, %25, %9
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local %struct.Curl_easy* @calloc(i32, i32) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @Curl_resolver_init(%struct.Curl_easy*, i32*) #1

declare dso_local i32 @free(%struct.Curl_easy*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @Curl_init_userdefined(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_convert_init(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_initinfo(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_resolver_cleanup(i32) #1

declare dso_local i32 @Curl_freeset(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
