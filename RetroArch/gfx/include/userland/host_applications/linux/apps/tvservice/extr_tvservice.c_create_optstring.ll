; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_create_optstring.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_create_optstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i64, i32*, i32* }

@long_opts = common dso_local global %struct.option* null, align 8
@OPT_FIRST_LONG_OPT = common dso_local global i64 0, align 8
@no_argument = common dso_local global i64 0, align 8
@optional_argument = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_optstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_optstring(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.option*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  %6 = load %struct.option*, %struct.option** @long_opts, align 8
  store %struct.option* %6, %struct.option** %4, align 8
  br label %7

7:                                                ; preds = %49, %1
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %7
  %13 = load %struct.option*, %struct.option** %4, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load %struct.option*, %struct.option** %4, align 8
  %19 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OPT_FIRST_LONG_OPT, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.option*, %struct.option** %4, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  %30 = load %struct.option*, %struct.option** %4, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @no_argument, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  store i8 58, i8* %36, align 1
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.option*, %struct.option** %4, align 8
  %40 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @optional_argument, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  store i8 58, i8* %45, align 1
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %17, %12
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.option*, %struct.option** %4, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 1
  store %struct.option* %51, %struct.option** %4, align 8
  br label %7

52:                                               ; preds = %7
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 0, i8* %53, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
