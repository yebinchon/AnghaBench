; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_read_hello_txt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_read_hello_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Reading hello.txt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"/spiffs/hello.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to open hello.txt\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Read from hello.txt: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_hello_txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_hello_txt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = load i32, i32* @TAG, align 4
  %4 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %22

11:                                               ; preds = %0
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 64)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @fread(i8* %14, i32 1, i32 64, i32* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @fclose(i32* %17)
  %19 = load i32, i32* @TAG, align 4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %21 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
