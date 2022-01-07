; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_emit_error.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_emit_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"libpng warning:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"libpng error:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"zlib error:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"read failure:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"unexpected error:\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"INVALID (internal error):\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"%s: %s %s [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s: %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32, i8*)* @emit_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_error(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %33 [
    i32 132, label %10
    i32 133, label %11
    i32 128, label %12
    i32 134, label %13
    i32 131, label %14
    i32 129, label %18
    i32 130, label %22
  ]

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %34

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %34

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %34

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %34

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  br label %34

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %34

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %22
  br label %34

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %34

34:                                               ; preds = %33, %32, %18, %14, %13, %12, %11, %10
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %41, i8* %42, i8* %43, i8* %45)
  br label %55

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %51, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %47, %37
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
