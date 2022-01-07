; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_start_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8*, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@stdin = common dso_local global i32* null, align 8
@USER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"file open failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*)* @display_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_start_read(%struct.display* %0, i8* %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i8*, align 8
  store %struct.display* %0, %struct.display** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.display*, %struct.display** %3, align 8
  %10 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.display*, %struct.display** %3, align 8
  %14 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 6
  store i32* %12, i32** %14, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.display*, %struct.display** %3, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = load i32*, i32** @stdin, align 8
  %19 = load %struct.display*, %struct.display** %3, align 8
  %20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  br label %21

21:                                               ; preds = %15, %7
  %22 = load %struct.display*, %struct.display** %3, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.display*, %struct.display** %3, align 8
  %25 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.display*, %struct.display** %3, align 8
  %27 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = load %struct.display*, %struct.display** %3, align 8
  %29 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = load %struct.display*, %struct.display** %3, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = load %struct.display*, %struct.display** %3, align 8
  %33 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.display*, %struct.display** %3, align 8
  %38 = load i32, i32* @USER_ERROR, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @display_log(%struct.display* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %21
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
