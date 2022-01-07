; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http_digest.c_Curl_input_digest.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http_digest.c_Curl_input_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.digestdata, %struct.digestdata }
%struct.digestdata = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@CURLE_BAD_CONTENT_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_input_digest(%struct.connectdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.digestdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.digestdata* %18, %struct.digestdata** %9, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.digestdata* %22, %struct.digestdata** %9, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @checkprefix(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %23
  %30 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %46, %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @ISSPACE(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.digestdata*, %struct.digestdata** %9, align 8
  %52 = call i32 @Curl_auth_decode_digest_http_message(i8* %50, %struct.digestdata* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %27
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @checkprefix(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @Curl_auth_decode_digest_http_message(i8*, %struct.digestdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
