; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeGetDnameFromLname.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeGetDnameFromLname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeGetDnameFromLname(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %23 = call i32 @readlink(i8* %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %6
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %35 = call i32 @readlink(i8* %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %47 = call i32 @readlink(i8* %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
