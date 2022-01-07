; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_freeset.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_freeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32** }
%struct.TYPE_3__ = type { i32*, i8*, i32*, i8* }

@STRING_LAST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_freeset(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @STRING_LAST, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @Curl_safefree(i32* %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @Curl_safefree(i32* %31)
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  br label %37

37:                                               ; preds = %27, %21
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %48 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @Curl_safefree(i32* %50)
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %46, %37
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @Curl_mime_cleanpart(i32* %62)
  ret void
}

declare dso_local i32 @Curl_safefree(i32*) #1

declare dso_local i32 @Curl_mime_cleanpart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
