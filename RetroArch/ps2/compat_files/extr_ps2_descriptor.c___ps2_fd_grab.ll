; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_descriptor.c___ps2_fd_grab.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_descriptor.c___ps2_fd_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_OPEN_FILES = common dso_local global i32 0, align 4
@__ps2_fdmap = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @__ps2_fd_grab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  %4 = call i32 (...) @_lock()
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @is_fd_valid(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @MAX_OPEN_FILES, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__ps2_fdmap, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %8
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 (...) @_unlock()
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %27
}

declare dso_local i32 @_lock(...) #1

declare dso_local i64 @is_fd_valid(i32) #1

declare dso_local i32 @_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
