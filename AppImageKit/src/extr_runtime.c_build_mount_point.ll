; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_build_mount_point.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_build_mount_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"TARGET_APPIMAGE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/.mount_\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_mount_point(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 6, i64* %10, align 8
  %14 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %11, align 8
  %19 = call i8* @basename(i8* %18)
  store i8* %19, i8** %12, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @basename(i8* %21)
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ugt i64 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i64 6, i64* %13, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = call i32 @strncpy(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @strncpy(i8* %40, i8* %41, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = call i32 @strncpy(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 8
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 6
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
