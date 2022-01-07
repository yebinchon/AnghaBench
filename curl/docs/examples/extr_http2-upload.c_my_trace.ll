; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_my_trace.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_my_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.tm = type { i32, i32, i32 }

@my_trace.epoch_offset = internal global i64 0, align 8
@my_trace.known_offset = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d.%06ld\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s [%d] Info: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"=> Send header\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"=> Send data\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"=> Send SSL data\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"<= Recv header\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"<= Recv data\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"<= Recv SSL data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8*)* @my_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_trace(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [60 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca %struct.input*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tm*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.input*
  store %struct.input* %20, %struct.input** %14, align 8
  %21 = load %struct.input*, %struct.input** %14, align 8
  %22 = getelementptr inbounds %struct.input, %struct.input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @gettimeofday(%struct.timeval* %16, i32* null)
  %26 = load i32, i32* @my_trace.known_offset, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = call i64 @time(i32* null)
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  store i64 %32, i64* @my_trace.epoch_offset, align 8
  store i32 1, i32* @my_trace.known_offset, align 4
  br label %33

33:                                               ; preds = %28, %5
  %34 = load i64, i64* @my_trace.epoch_offset, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %17, align 8
  %38 = call %struct.tm* @localtime(i64* %17)
  store %struct.tm* %38, %struct.tm** %18, align 8
  %39 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %40 = load %struct.tm*, %struct.tm** %18, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tm*, %struct.tm** %18, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tm*, %struct.tm** %18, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snprintf(i8* %39, i32 60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i64 %50)
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %59 [
    i32 128, label %53
    i32 131, label %60
    i32 133, label %61
    i32 129, label %62
    i32 132, label %63
    i32 134, label %64
    i32 130, label %65
  ]

53:                                               ; preds = %33
  %54 = load i32, i32* @stderr, align 4
  %55 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %33, %53
  store i32 0, i32* %6, align 4
  br label %72

60:                                               ; preds = %33
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %66

61:                                               ; preds = %33
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %66

62:                                               ; preds = %33
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %66

63:                                               ; preds = %33
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %66

64:                                               ; preds = %33
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %66

65:                                               ; preds = %33
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @dump(i8* %67, i32 %68, i8* %69, i64 %70, i32 1)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @dump(i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
