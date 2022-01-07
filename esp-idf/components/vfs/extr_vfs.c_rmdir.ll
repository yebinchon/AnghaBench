; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_rmdir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @get_vfs_for_path(i8* %9)
  store i32* %10, i32** %4, align 8
  %11 = call %struct._reent* (...) @__getreent()
  store %struct._reent* %11, %struct._reent** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %6, align 4
  store i32 -1, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @translate_path(i32* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct._reent*, %struct._reent** %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @CHECK_AND_CALL(i32 %20, %struct._reent* %21, i32* %22, i32 (i8*)* @rmdir, i8* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32* @get_vfs_for_path(i8*) #1

declare dso_local %struct._reent* @__getreent(...) #1

declare dso_local i8* @translate_path(i32*, i8*) #1

declare dso_local i32 @CHECK_AND_CALL(i32, %struct._reent*, i32*, i32 (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
