; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_is_media_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_is_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"udp://\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tcp://\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rtmp://\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rtp://\00", align 1
@RARCH_CONTENT_MOVIE = common dso_local global i32 0, align 4
@RARCH_CONTENT_NONE = common dso_local global i32 0, align 4
@RARCH_CONTENT_GONG = common dso_local global i32 0, align 4
@RARCH_CONTENT_IMAGE = common dso_local global i32 0, align 4
@RARCH_CONTENT_MUSIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_is_media_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %5, align 16
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @path_get_extension(i8* %7)
  %9 = call i32 @strlcpy(i8* %6, i32 %8, i32 128)
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %11 = call i32 @string_to_lower(i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27, %23, %19, %15, %1
  %36 = load i32, i32* @RARCH_CONTENT_MOVIE, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %39 = call i32 @msg_hash_calculate(i8* %38)
  %40 = call i32 @msg_hash_to_file_type(i32 %39)
  switch i32 %40, label %42 [
    i32 141, label %41
  ]

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %37, %41
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @RARCH_CONTENT_NONE, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @path_get_extension(i8*) #1

declare dso_local i32 @string_to_lower(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @msg_hash_to_file_type(i32) #1

declare dso_local i32 @msg_hash_calculate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
