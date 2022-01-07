; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_reset.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@PGRS_HIDE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: realloc of buffer failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curl_easy_reset(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %6 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %10 = call i32 @Curl_free_request_state(%struct.Curl_easy* %9)
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %12 = call i32 @Curl_freeset(%struct.Curl_easy* %11)
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 1
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 4)
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %17 = call i32 @Curl_init_userdefined(%struct.Curl_easy* %16)
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 2
  %20 = call i32 @memset(%struct.TYPE_4__* %19, i32 0, i32 4)
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %22 = call i32 @Curl_initinfo(%struct.Curl_easy* %21)
  %23 = load i32, i32* @PGRS_HIDE, align 4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = call i32 @memset(%struct.TYPE_4__* %34, i32 0, i32 4)
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = call i32 @memset(%struct.TYPE_4__* %38, i32 0, i32 4)
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %41 = call i32 @Curl_http_auth_cleanup_digest(%struct.Curl_easy* %40)
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %1
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i8* @realloc(i8* %52, i32 %58)
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @DEBUGF(i32 %64)
  %66 = load i64, i64* %3, align 8
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %68 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  br label %75

70:                                               ; preds = %48
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %73 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %70, %62
  br label %76

76:                                               ; preds = %75, %1
  ret void
}

declare dso_local i32 @Curl_free_request_state(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_freeset(%struct.Curl_easy*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Curl_init_userdefined(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_initinfo(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_http_auth_cleanup_digest(%struct.Curl_easy*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
