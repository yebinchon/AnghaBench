; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/lib/extr_http_header.c_http_header_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/lib/extr_http_header.c_http_header_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_header_set(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @http_header_delete(i32 %12, i8* %13)
  store i32 %14, i32* %4, align 4
  br label %39

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.TYPE_3__* @http_header_get_item(i32 %16, i8* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strdup(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @http_utils_trim_whitespace(i32* %31)
  %33 = load i32, i32* @ESP_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @http_header_new_item(i32 %35, i8* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %21, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @http_header_delete(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @http_header_get_item(i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @http_utils_trim_whitespace(i32*) #1

declare dso_local i32 @http_header_new_item(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
