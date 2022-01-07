; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/setsegname/extr_setsegname.c_readFile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/setsegname/extr_setsegname.c_readFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"couldn't read %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*)* @readFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readFile(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %59

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fstat(i32 %19, %struct.stat* %9)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %59

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %59

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %59

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PROT_READ, align 4
  %42 = load i32, i32* @PROT_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAP_FILE, align 4
  %45 = load i32, i32* @MAP_PRIVATE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @mmap(i32* null, i64 %40, i32 %43, i32 %46, i32 %47, i32 0)
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8*, i8** @MAP_FAILED, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load i64*, i64** %5, align 8
  store i64 0, i64* %56, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 0, i64* %57, align 8
  br label %59

58:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %17, %22, %29, %34, %55, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 -1, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = call i8* @strerror(i32 %71)
  %73 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
