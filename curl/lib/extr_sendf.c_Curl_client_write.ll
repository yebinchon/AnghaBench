; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sendf.c_Curl_client_write.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sendf.c_Curl_client_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.Curl_easy* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8 }
%struct.TYPE_6__ = type { i32 }
%struct.Curl_easy = type { i32 }

@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@PROTO_FAMILY_FTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_client_write(%struct.connectdata* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 3
  %23 = zext i1 %22 to i32
  %24 = call i32 @DEBUGASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %20
  %30 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PROTO_FAMILY_FTP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %29
  %39 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 65
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @Curl_convert_from_network(%struct.Curl_easy* %47, i8* %48, i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %5, align 8
  br label %62

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %38, %29, %20
  %57 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @chop_write(%struct.connectdata* %57, i32 %58, i8* %59, i64 %60)
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i64 @Curl_convert_from_network(%struct.Curl_easy*, i8*, i64) #1

declare dso_local i64 @chop_write(%struct.connectdata*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
