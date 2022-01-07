; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lfs.c__file_lock.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lfs.c__file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i8*, i8*, i32, i32 }

@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: invalid mode\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@LK_NBLCK = common dso_local global i32 0, align 4
@LK_UNLCK = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i64, i8*)* @_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_file_lock(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flock, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %28 [
    i32 119, label %19
    i32 114, label %22
    i32 117, label %25
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* @F_WRLCK, align 4
  %21 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  br label %32

22:                                               ; preds = %6
  %23 = load i32, i32* @F_RDLCK, align 4
  %24 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  br label %32

25:                                               ; preds = %6
  %26 = load i32, i32* @F_UNLCK, align 4
  %27 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  br label %32

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %25, %22, %19
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fileno(i32* %41)
  %43 = load i32, i32* @F_SETLK, align 4
  %44 = call i32 @fcntl(i32 %42, i32 %43, %struct.flock* %15)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, -1
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %32, %28
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @fileno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
