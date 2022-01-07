; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_get_first_valid_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_get_first_valid_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c".3dsx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cia\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"sdmc:/retroarch/cores\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_first_valid_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_first_valid_core(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i64 (...) @envIsHomebrew()
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  %12 = call i32* @opendir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %4, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load %struct.dirent*, %struct.dirent** %4, align 8
  %22 = icmp eq %struct.dirent* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %61

24:                                               ; preds = %20
  %25 = load %struct.dirent*, %struct.dirent** %4, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %24
  %33 = load %struct.dirent*, %struct.dirent** %4, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.dirent*, %struct.dirent** %4, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %32
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @strcat(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %2, align 8
  %56 = load %struct.dirent*, %struct.dirent** %4, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcat(i8* %55, i8* %58)
  br label %61

60:                                               ; preds = %32, %24
  br label %16

61:                                               ; preds = %50, %23, %16
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @closedir(i32* %62)
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i64 @envIsHomebrew(...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
