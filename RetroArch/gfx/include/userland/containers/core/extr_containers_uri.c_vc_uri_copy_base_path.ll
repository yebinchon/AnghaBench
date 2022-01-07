; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_copy_base_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_copy_base_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @vc_uri_copy_base_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_uri_copy_base_path(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @vc_uri_path(i32* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @vc_uri_set_path(i32* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @vc_uri_num_queries(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @vc_uri_num_queries(i32* %23)
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %40, %22
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @vc_uri_query(i32* %30, i64 %31, i8** %8, i8** %9)
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @vc_uri_add_query(i32* %33, i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %45

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %18
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @vc_uri_path(i32*) #1

declare dso_local i32 @vc_uri_set_path(i32*, i8*) #1

declare dso_local i64 @vc_uri_num_queries(i32*) #1

declare dso_local i32 @vc_uri_query(i32*, i64, i8**, i8**) #1

declare dso_local i32 @vc_uri_add_query(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
