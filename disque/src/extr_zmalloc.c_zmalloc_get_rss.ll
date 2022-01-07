; ModuleID = '/home/carl/AnghaBench/disque/src/extr_zmalloc.c_zmalloc_get_rss.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_zmalloc.c_zmalloc_get_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/%d/stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zmalloc_get_rss() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @_SC_PAGESIZE, align 4
  %11 = call i32 @sysconf(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = call i32 (...) @getpid()
  %14 = call i32 @snprintf(i8* %12, i32 256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %69

20:                                               ; preds = %0
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %23 = call i64 @read(i32 %21, i8* %22, i32 4096)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @close(i32 %26)
  store i64 0, i64* %1, align 8
  br label %69

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @close(i32 %29)
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  store i8* %31, i8** %8, align 8
  store i32 23, i32* %7, align 4
  br label %32

32:                                               ; preds = %49, %28
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %36, 0
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 32)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %46, %41
  br label %32

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i64 0, i64* %1, align 8
  br label %69

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 32)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i64 0, i64* %1, align 8
  br label %69

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strtoll(i8* %62, i32* null, i32 10)
  store i64 %63, i64* %3, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %3, align 8
  %67 = mul i64 %66, %65
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  store i64 %68, i64* %1, align 8
  br label %69

69:                                               ; preds = %60, %59, %53, %25, %19
  %70 = load i64, i64* %1, align 8
  ret i64 %70
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
