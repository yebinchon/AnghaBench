; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_get_port.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@UF_PORT = common dso_local global i64 0, align 8
@UF_SCHEMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.http_parser_url*)* @get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port(i8* %0, %struct.http_parser_url* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_parser_url*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_parser_url* %1, %struct.http_parser_url** %5, align 8
  %6 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %7 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @UF_PORT, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %17 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @UF_PORT, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %15, i64 %22
  %24 = call i32 @strtol(i8* %23, i32* null, i32 10)
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %28 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @UF_SCHEMA, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  %35 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %36 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @UF_SCHEMA, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strncasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  store i32 80, i32* %3, align 4
  br label %68

45:                                               ; preds = %25
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %48 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @UF_SCHEMA, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %46, i64 %53
  %55 = load %struct.http_parser_url*, %struct.http_parser_url** %5, align 8
  %56 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @UF_SCHEMA, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strncasecmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  store i32 443, i32* %3, align 4
  br label %68

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %44, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
