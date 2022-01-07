; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_check_defaults.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_check_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@.str = private unnamed_addr constant [11 x i8] c"custom.ini\00", align 1
@DEFAULT_DIR_LAST = common dso_local global i32 0, align 4
@g_defaults = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dir_check_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i64 @path_is_valid(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %54

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %51, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @DEFAULT_DIR_LAST, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  %13 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_defaults, i32 0, i32 0), align 8
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @string_is_empty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %51

22:                                               ; preds = %12
  %23 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %51

32:                                               ; preds = %22
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @fill_pathname_expand_special(i8* %35, i8* %36, i32 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @path_is_directory(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @path_mkdir(i8* %46)
  br label %48

48:                                               ; preds = %45, %32
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %31, %21
  %52 = load i32, i32* %1, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %8

54:                                               ; preds = %6, %8
  ret void
}

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_expand_special(i8*, i8*, i32) #1

declare dso_local i32 @path_is_directory(i8*) #1

declare dso_local i32 @path_mkdir(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
