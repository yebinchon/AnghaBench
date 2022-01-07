; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_MakeMovieStateName.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_MakeMovieStateName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MakeMovieStateName.retbuf = internal global i8* null, align 8
@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Recording = common dso_local global i64 0, align 8
@Playback = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%smovie\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MakeMovieStateName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %6 = load i64, i64* @Recording, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %10 = load i64, i64* @Playback, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 5
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load i8*, i8** @MakeMovieStateName.retbuf, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** @MakeMovieStateName.retbuf, align 8
  %22 = load i8*, i8** @MakeMovieStateName.retbuf, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %32

25:                                               ; preds = %12
  %26 = load i8*, i8** @MakeMovieStateName.retbuf, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** @MakeMovieStateName.retbuf, align 8
  store i8* %29, i8** %2, align 8
  br label %32

30:                                               ; preds = %8
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %30, %25, %24
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
