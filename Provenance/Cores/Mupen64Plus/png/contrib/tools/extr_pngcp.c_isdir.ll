; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_isdir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_isdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32 }
%struct.stat = type { i32 }

@W_OK = common dso_local global i32 0, align 4
@USER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: cannot be written (%s)\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: invalid output name (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i8*)* @isdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdir(%struct.display* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.display*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %54

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @stat(i8* %19, %struct.stat* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %54

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @W_OK, align 4
  %32 = call i64 @access(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.display*, %struct.display** %4, align 8
  %36 = load i32, i32* @USER_ERROR, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @strerror(i64 %38)
  %40 = call i32 @display_log(%struct.display* %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %54

42:                                               ; preds = %18
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ENOENT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.display*, %struct.display** %4, align 8
  %48 = load i32, i32* @USER_ERROR, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @strerror(i64 %50)
  %52 = call i32 @display_log(%struct.display* %47, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %41, %28, %17, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
