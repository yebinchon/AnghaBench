; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_save_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s \22%s\22.\00", align 1
@MSG_SAVED_NEW_CONFIG_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"[config] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_FAILED_SAVING_CONFIG_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @command_event_save_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_event_save_config(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @string_is_empty(i8* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %28 = call i8* @path_get(i32 %27)
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i8* [ %25, %24 ], [ %28, %26 ]
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @config_save_file(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @MSG_SAVED_NEW_CONFIG_TO, align 4
  %41 = call i8* @msg_hash_to_str(i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = trunc i64 %14 to i32
  %45 = call i32 @strlcpy(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = trunc i64 %14 to i32
  %48 = call i32 @strlcat(i8* %16, i8* %46, i32 %47)
  %49 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

50:                                               ; preds = %33, %29
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @string_is_empty(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @MSG_FAILED_SAVING_CONFIG_TO, align 4
  %58 = call i8* @msg_hash_to_str(i32 %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %59)
  %61 = trunc i64 %14 to i32
  %62 = call i32 @strlcpy(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = trunc i64 %14 to i32
  %65 = call i32 @strlcat(i8* %16, i8* %63, i32 %64)
  %66 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %67

67:                                               ; preds = %54, %50
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i8* @path_get(i32) #2

declare dso_local i64 @config_save_file(i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
