; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_parse_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_parse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@HTTP_REQUEST = common dso_local global i32 0, align 4
@cb_url = common dso_local global i32 0, align 4
@cb_header_field = common dso_local global i32 0, align 4
@cb_header_value = common dso_local global i32 0, align 4
@cb_headers_complete = common dso_local global i32 0, align 4
@cb_on_body = common dso_local global i32 0, align 4
@cb_no_body = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @parse_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_init(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 32)
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* @HTTP_REQUEST, align 4
  %14 = call i32 @http_parser_init(%struct.TYPE_9__* %12, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to i8*
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @http_parser_settings_init(%struct.TYPE_10__* %20)
  %22 = load i32, i32* @cb_url, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @cb_header_field, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @cb_header_value, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @cb_headers_complete, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @cb_on_body, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @cb_no_body, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @http_parser_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @http_parser_settings_init(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
