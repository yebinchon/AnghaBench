; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_getlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32, i32, i32*, i32 }
%struct.flock = type { i32, i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@LF_DBG_LOCKOP = common dso_local global i32 0, align 4
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf*, %struct.flock*, i32)* @lf_getlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_getlock(%struct.lockf* %0, %struct.flock* %1, i32 %2) #0 {
  %4 = alloca %struct.lockf*, align 8
  %5 = alloca %struct.flock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lockf*, align 8
  store %struct.lockf* %0, %struct.lockf** %4, align 8
  store %struct.flock* %1, %struct.flock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lockf*, %struct.lockf** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.lockf* @lf_getblock(%struct.lockf* %8, i32 %9)
  store %struct.lockf* %10, %struct.lockf** %7, align 8
  %11 = icmp ne %struct.lockf* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = load %struct.lockf*, %struct.lockf** %7, align 8
  %14 = getelementptr inbounds %struct.lockf, %struct.lockf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.flock*, %struct.flock** %5, align 8
  %17 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = load %struct.flock*, %struct.flock** %5, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lockf*, %struct.lockf** %7, align 8
  %22 = getelementptr inbounds %struct.lockf, %struct.lockf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.flock*, %struct.flock** %5, align 8
  %25 = getelementptr inbounds %struct.flock, %struct.flock* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lockf*, %struct.lockf** %7, align 8
  %27 = getelementptr inbounds %struct.lockf, %struct.lockf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %12
  %31 = load %struct.flock*, %struct.flock** %5, align 8
  %32 = getelementptr inbounds %struct.flock, %struct.flock* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %44

33:                                               ; preds = %12
  %34 = load %struct.lockf*, %struct.lockf** %7, align 8
  %35 = getelementptr inbounds %struct.lockf, %struct.lockf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lockf*, %struct.lockf** %7, align 8
  %38 = getelementptr inbounds %struct.lockf, %struct.lockf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  %41 = add nsw i32 %40, 1
  %42 = load %struct.flock*, %struct.flock** %5, align 8
  %43 = getelementptr inbounds %struct.flock, %struct.flock* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load %struct.lockf*, %struct.lockf** %7, align 8
  %46 = getelementptr inbounds %struct.lockf, %struct.lockf* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* null, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.lockf*, %struct.lockf** %7, align 8
  %51 = getelementptr inbounds %struct.lockf, %struct.lockf* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @proc_pid(i32* %52)
  %54 = load %struct.flock*, %struct.flock** %5, align 8
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load %struct.flock*, %struct.flock** %5, align 8
  %58 = getelementptr inbounds %struct.flock, %struct.flock* %57, i32 0, i32 2
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %49
  br label %64

60:                                               ; preds = %3
  %61 = load i32, i32* @F_UNLCK, align 4
  %62 = load %struct.flock*, %struct.flock** %5, align 8
  %63 = getelementptr inbounds %struct.flock, %struct.flock* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %59
  ret i32 0
}

declare dso_local %struct.lockf* @lf_getblock(%struct.lockf*, i32) #1

declare dso_local i32 @proc_pid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
