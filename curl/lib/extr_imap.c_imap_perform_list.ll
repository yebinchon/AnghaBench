; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_list.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.IMAP* }
%struct.IMAP = type { i8*, i64, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"LIST \22%s\22 *\00", align 1
@IMAP_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_list(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.IMAP*, align 8
  %7 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %8 = load i32, i32* @CURLE_OK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %5, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.IMAP*, %struct.IMAP** %14, align 8
  store %struct.IMAP* %15, %struct.IMAP** %6, align 8
  %16 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %17 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %23 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %27 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %32 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 (%struct.connectdata*, i8*, i8*, ...) @imap_sendf(%struct.connectdata* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %40 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %45 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @imap_atom(i64 %46, i32 1)
  br label %50

48:                                               ; preds = %38
  %49 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i8* [ %47, %43 ], [ %49, %48 ]
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %50
  %57 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (%struct.connectdata*, i8*, i8*, ...) @imap_sendf(%struct.connectdata* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %56, %35
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %67 = load i32, i32* @IMAP_LIST, align 4
  %68 = call i32 @state(%struct.connectdata* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %54
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*, i8*, ...) #1

declare dso_local i8* @imap_atom(i64, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
