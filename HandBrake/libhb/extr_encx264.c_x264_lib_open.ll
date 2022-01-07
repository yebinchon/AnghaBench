; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_x264_lib_open.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_x264_lib_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@HB_SO_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @x264_lib_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x264_lib_open(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %38

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load i8**, i8*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load i8**, i8*** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @HB_SO_EXT, align 4
  %25 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @hb_dlopen(i8* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %2, align 8
  br label %38

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %38

38:                                               ; preds = %37, %32, %9
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i32) #1

declare dso_local i8* @hb_dlopen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
