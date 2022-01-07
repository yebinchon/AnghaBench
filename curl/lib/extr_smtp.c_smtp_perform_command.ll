; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_command.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.Curl_easy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.SMTP* }
%struct.SMTP = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VRFY\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@SMTP_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @smtp_perform_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_perform_command(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.SMTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 1
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  store %struct.Curl_easy* %9, %struct.Curl_easy** %4, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.SMTP*, %struct.SMTP** %12, align 8
  store %struct.SMTP* %13, %struct.SMTP** %5, align 8
  %14 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %15 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %24 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %29 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %37 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %27, %18
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %43 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %1
  %49 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %54 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %59 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.SMTP*, %struct.SMTP** %5, align 8
  %67 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %57, %48
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %69 ]
  %72 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %40
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %78 = load i32, i32* @SMTP_COMMAND, align 4
  %79 = call i32 @state(%struct.connectdata* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
