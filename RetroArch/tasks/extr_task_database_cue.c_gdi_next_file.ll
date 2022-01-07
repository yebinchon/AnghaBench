; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_gdi_next_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_gdi_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN_LEN = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdi_next_file(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %10, align 8
  store i64 -1, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @intfstream_tell(i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %26 = call i64 @get_token(i32* %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %4
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %31 = call i64 @get_token(i32* %28, i8* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %35 = call i64 @get_token(i32* %32, i8* %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %39 = call i64 @get_token(i32* %36, i8* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %43 = call i64 @get_token(i32* %40, i8* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %47 = call i64 @get_token(i32* %44, i8* %45, i32 %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %27
  %50 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %58 = call i32 @fill_pathname_basedir(i8* %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @fill_pathname_join(i8* %59, i8* %60, i8* %61, i64 %62)
  store i32 1, i32* %9, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %67 = call i64 @get_token(i32* %64, i8* %65, i32 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %49, %27
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @intfstream_tell(i32*) #1

declare dso_local i64 @get_token(i32*, i8*, i32) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
