; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_NextDownload.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_NextDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@clc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_NextDownload() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %1, align 8
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i8*, i8** %1, align 8
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 64)
  store i8* %19, i8** %1, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @CL_DownloadsComplete()
  br label %52

23:                                               ; preds = %16
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %1, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %1, align 8
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 64)
  store i8* %28, i8** %1, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %1, align 8
  store i8 0, i8* %31, align 1
  br label %39

33:                                               ; preds = %23
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %1, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @CL_BeginDownload(i8* %40, i8* %41)
  %43 = load i32, i32* @qtrue, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %45 = load i8*, i8** %1, align 8
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = add nsw i32 %47, 1
  %49 = call i32 @memmove(i8* %44, i8* %45, i32 %48)
  br label %52

50:                                               ; preds = %0
  %51 = call i32 (...) @CL_DownloadsComplete()
  br label %52

52:                                               ; preds = %50, %39, %21
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @CL_DownloadsComplete(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CL_BeginDownload(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
