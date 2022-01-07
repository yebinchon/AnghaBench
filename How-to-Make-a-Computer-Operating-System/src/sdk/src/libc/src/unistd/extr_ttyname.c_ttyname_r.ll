; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/unistd/extr_ttyname.c_ttyname_r.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/unistd/extr_ttyname.c_ttyname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [17 x i8] c"/device/terminal\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"/device/terminal/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyname_r(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.dirent, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @fstat(i32 %13, %struct.stat* %11)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %49

24:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @getdents(i32 %26, %struct.dirent* %12, i32 16)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 1, i32* %10, align 4
  br label %42

41:                                               ; preds = %29
  br label %25

42:                                               ; preds = %35, %25
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %23, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @getdents(i32, %struct.dirent*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
