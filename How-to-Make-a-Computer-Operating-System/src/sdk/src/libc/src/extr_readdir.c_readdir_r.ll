; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/extr_readdir.c_readdir_r.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/extr_readdir.c_readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.dirent = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readdir_r(%struct.TYPE_3__* %0, %struct.dirent* %1, %struct.dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.dirent* %1, %struct.dirent** %6, align 8
  store %struct.dirent** %2, %struct.dirent*** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.dirent*, %struct.dirent** %6, align 8
  %13 = icmp eq %struct.dirent* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %31

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dirent*, %struct.dirent** %6, align 8
  %22 = call i32 @getdents(i32 %20, %struct.dirent* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load %struct.dirent**, %struct.dirent*** %7, align 8
  store %struct.dirent* null, %struct.dirent** %26, align 8
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.dirent*, %struct.dirent** %6, align 8
  %29 = load %struct.dirent**, %struct.dirent*** %7, align 8
  store %struct.dirent* %28, %struct.dirent** %29, align 8
  br label %30

30:                                               ; preds = %27, %25
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @getdents(i32, %struct.dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
