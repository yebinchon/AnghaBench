; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_valog.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_valog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@global_verbosity_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"[%02d:%02d:%02d] %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[%02d:%02d:%02d] %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_valog(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca [362 x i8], align 16
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @global_verbosity_level, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %63

17:                                               ; preds = %4
  %18 = call i32 @time(i32* null)
  store i32 %18, i32* %10, align 4
  %19 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %19, %struct.tm** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = getelementptr inbounds [362 x i8], [362 x i8]* %12, i64 0, i64 0
  %29 = load %struct.tm*, %struct.tm** %11, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tm*, %struct.tm** %11, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tm*, %struct.tm** %11, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i8*, i32, i8*, i32, i32, i32, i8*, ...) @snprintf(i8* %28, i32 361, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i8* %38, i8* %39)
  br label %54

41:                                               ; preds = %22, %17
  %42 = getelementptr inbounds [362 x i8], [362 x i8]* %12, i64 0, i64 0
  %43 = load %struct.tm*, %struct.tm** %11, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tm*, %struct.tm** %11, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tm*, %struct.tm** %11, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i32, i8*, i32, i32, i32, i8*, ...) @snprintf(i8* %42, i32 361, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %41, %27
  %55 = getelementptr inbounds [362 x i8], [362 x i8]* %12, i64 0, i64 0
  %56 = load i32, i32* %8, align 4
  %57 = call i8* @hb_strdup_vaprintf(i8* %55, i32 %56)
  store i8* %57, i8** %9, align 8
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i8* @hb_strdup_vaprintf(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
