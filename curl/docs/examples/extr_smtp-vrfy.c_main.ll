; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smtp-vrfy.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smtp-vrfy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smtp://mail.example.com\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"<recipient@example.com>\00", align 1
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.curl_slist*, align 8
  store i32 0, i32* %1, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  %5 = call i32* (...) @curl_easy_init()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @CURLOPT_URL, align 4
  %11 = call i32 @curl_easy_setopt(i32* %9, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %13 = bitcast %struct.curl_slist* %12 to i8*
  %14 = call i8* @curl_slist_append(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %15 = bitcast i8* %14 to %struct.curl_slist*
  store %struct.curl_slist* %15, %struct.curl_slist** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %18 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %19 = bitcast %struct.curl_slist* %18 to i8*
  %20 = call i32 @curl_easy_setopt(i32* %16, i32 %17, i8* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @curl_easy_perform(i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CURLE_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @curl_easy_strerror(i32 %28)
  %30 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %8
  %32 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %33 = bitcast %struct.curl_slist* %32 to i8*
  %34 = call i32 @curl_slist_free_all(i8* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @curl_easy_cleanup(i32* %35)
  br label %37

37:                                               ; preds = %31, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
