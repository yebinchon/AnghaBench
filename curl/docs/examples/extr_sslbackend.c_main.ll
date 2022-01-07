; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_sslbackend.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_sslbackend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"openssl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@CURLSSLSET_UNKNOWN_BACKEND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"SSL backend #%d: '%s' (ID: %d)\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unknown SSL backend id: %s\0A\00", align 1
@CURLSSLSET_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Version with SSL backend '%s':\0A\0A\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %18
  %24 = call i64 @curl_global_sslset(i32 -1, i8* null, %struct.TYPE_3__*** %8)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @CURLSSLSET_UNKNOWN_BACKEND, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %54, %23
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %45, i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %30

57:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %90

58:                                               ; preds = %18
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i64 @isdigit(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @curl_global_sslset(i32 %67, i8* null, %struct.TYPE_3__*** null)
  store i64 %68, i64* %7, align 8
  br label %72

69:                                               ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @curl_global_sslset(i32 -1, i8* %70, %struct.TYPE_3__*** null)
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @CURLSSLSET_UNKNOWN_BACKEND, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  store i32 1, i32* %3, align 4
  br label %90

81:                                               ; preds = %73
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @CURLSSLSET_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* (...) @curl_version()
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %77, %57
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @curl_global_sslset(i32, i8*, %struct.TYPE_3__***) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
