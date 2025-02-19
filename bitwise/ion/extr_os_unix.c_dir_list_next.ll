; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_os_unix.c_dir_list_next.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_os_unix.c_dir_list_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.dirent = type { i32, i32 }

@DT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dir_list_next(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.dirent*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %35, %9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dirent* @readdir(i32 %13)
  store %struct.dirent* %14, %struct.dirent** %3, align 8
  %15 = load %struct.dirent*, %struct.dirent** %3, align 8
  %16 = icmp ne %struct.dirent* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i32 @dir_list_free(%struct.TYPE_5__* %18)
  br label %39

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dirent*, %struct.dirent** %3, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @path_copy(i32 %23, i32 %26)
  %28 = load %struct.dirent*, %struct.dirent** %3, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DT_DIR, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = call i64 @dir_excluded(%struct.TYPE_5__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %10, label %39

39:                                               ; preds = %8, %17, %35
  ret void
}

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @dir_list_free(%struct.TYPE_5__*) #1

declare dso_local i32 @path_copy(i32, i32) #1

declare dso_local i64 @dir_excluded(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
