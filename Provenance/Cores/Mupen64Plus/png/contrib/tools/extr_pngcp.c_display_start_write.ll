; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_start_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i8*, i32* }

@NOWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<no write>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@stdout = common dso_local global i32* null, align 8
@USER_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: file open failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*)* @display_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_start_write(%struct.display* %0, i8* %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i8*, align 8
  store %struct.display* %0, %struct.display** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.display*, %struct.display** %3, align 8
  %6 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.display*, %struct.display** %3, align 8
  %12 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NOWRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.display*, %struct.display** %3, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %52

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.display*, %struct.display** %3, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.display*, %struct.display** %3, align 8
  %30 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.display*, %struct.display** %3, align 8
  %33 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  %34 = load i32*, i32** @stdout, align 8
  %35 = load %struct.display*, %struct.display** %3, align 8
  %36 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.display*, %struct.display** %3, align 8
  %39 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.display*, %struct.display** %3, align 8
  %44 = load i32, i32* @USER_ERROR, align 4
  %45 = load %struct.display*, %struct.display** %3, align 8
  %46 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 @display_log(%struct.display* %43, i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  br label %52

52:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
