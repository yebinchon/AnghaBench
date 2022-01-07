; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_Curl_all_content_encodings.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_Curl_all_content_encodings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@encodings = common dso_local global %struct.TYPE_3__** null, align 8
@CONTENT_ENCODING_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_all_content_encodings() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 0, i64* %2, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @encodings, align 8
  store %struct.TYPE_3__** %7, %struct.TYPE_3__*** %3, align 8
  br label %8

8:                                                ; preds = %30, %0
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @CONTENT_ENCODING_DEFAULT, align 4
  %19 = call i32 @strcasecompare(i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 2
  %27 = load i64, i64* %2, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i32 1
  store %struct.TYPE_3__** %32, %struct.TYPE_3__*** %3, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i64, i64* %2, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @CONTENT_ENCODING_DEFAULT, align 4
  %38 = call i8* @strdup(i32 %37)
  store i8* %38, i8** %1, align 8
  br label %83

39:                                               ; preds = %33
  %40 = load i64, i64* %2, align 8
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %6, align 8
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @encodings, align 8
  store %struct.TYPE_3__** %46, %struct.TYPE_3__*** %3, align 8
  br label %47

47:                                               ; preds = %75, %44
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @CONTENT_ENCODING_DEFAULT, align 4
  %58 = call i32 @strcasecompare(i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcpy(i8* %61, i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 44, i8* %70, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 32, i8* %72, align 1
  br label %74

74:                                               ; preds = %60, %51
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i32 1
  store %struct.TYPE_3__** %77, %struct.TYPE_3__*** %3, align 8
  br label %47

78:                                               ; preds = %47
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -2
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %39
  %82 = load i8*, i8** %5, align 8
  store i8* %82, i8** %1, align 8
  br label %83

83:                                               ; preds = %81, %36
  %84 = load i8*, i8** %1, align 8
  ret i8* %84
}

declare dso_local i32 @strcasecompare(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
