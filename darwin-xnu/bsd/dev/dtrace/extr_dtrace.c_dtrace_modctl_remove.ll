; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_modctl_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_modctl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i32*, %struct.modctl*, %struct.modctl* }

@mod_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_modctl_list = common dso_local global %struct.modctl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modctl*)* @dtrace_modctl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_modctl_remove(%struct.modctl* %0) #0 {
  %2 = alloca %struct.modctl*, align 8
  %3 = alloca %struct.modctl*, align 8
  %4 = alloca %struct.modctl*, align 8
  %5 = alloca %struct.modctl*, align 8
  store %struct.modctl* %0, %struct.modctl** %2, align 8
  %6 = load %struct.modctl*, %struct.modctl** %2, align 8
  %7 = icmp ne %struct.modctl* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32* @mod_lock, i32 %10)
  %12 = load %struct.modctl*, %struct.modctl** %2, align 8
  %13 = getelementptr inbounds %struct.modctl, %struct.modctl* %12, i32 0, i32 2
  %14 = load %struct.modctl*, %struct.modctl** %13, align 8
  store %struct.modctl* %14, %struct.modctl** %5, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load %struct.modctl*, %struct.modctl** %5, align 8
  %17 = icmp ne %struct.modctl* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.modctl*, %struct.modctl** %5, align 8
  %20 = getelementptr inbounds %struct.modctl, %struct.modctl* %19, i32 0, i32 2
  %21 = load %struct.modctl*, %struct.modctl** %20, align 8
  store %struct.modctl* %21, %struct.modctl** %4, align 8
  %22 = load %struct.modctl*, %struct.modctl** %5, align 8
  %23 = getelementptr inbounds %struct.modctl, %struct.modctl* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.modctl*, %struct.modctl** %5, align 8
  %29 = call i32 @kmem_free(%struct.modctl* %28, i32 24)
  br label %30

30:                                               ; preds = %18
  %31 = load %struct.modctl*, %struct.modctl** %4, align 8
  store %struct.modctl* %31, %struct.modctl** %5, align 8
  br label %15

32:                                               ; preds = %15
  store %struct.modctl* null, %struct.modctl** %3, align 8
  %33 = load %struct.modctl*, %struct.modctl** @dtrace_modctl_list, align 8
  store %struct.modctl* %33, %struct.modctl** %5, align 8
  br label %34

34:                                               ; preds = %38, %32
  %35 = load %struct.modctl*, %struct.modctl** %5, align 8
  %36 = load %struct.modctl*, %struct.modctl** %2, align 8
  %37 = icmp ne %struct.modctl* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.modctl*, %struct.modctl** %5, align 8
  store %struct.modctl* %39, %struct.modctl** %3, align 8
  %40 = load %struct.modctl*, %struct.modctl** %5, align 8
  %41 = getelementptr inbounds %struct.modctl, %struct.modctl* %40, i32 0, i32 1
  %42 = load %struct.modctl*, %struct.modctl** %41, align 8
  store %struct.modctl* %42, %struct.modctl** %5, align 8
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.modctl*, %struct.modctl** %3, align 8
  %45 = icmp ne %struct.modctl* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.modctl*, %struct.modctl** %2, align 8
  %48 = getelementptr inbounds %struct.modctl, %struct.modctl* %47, i32 0, i32 1
  %49 = load %struct.modctl*, %struct.modctl** %48, align 8
  %50 = load %struct.modctl*, %struct.modctl** %3, align 8
  %51 = getelementptr inbounds %struct.modctl, %struct.modctl* %50, i32 0, i32 1
  store %struct.modctl* %49, %struct.modctl** %51, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.modctl*, %struct.modctl** %2, align 8
  %54 = getelementptr inbounds %struct.modctl, %struct.modctl* %53, i32 0, i32 1
  %55 = load %struct.modctl*, %struct.modctl** %54, align 8
  store %struct.modctl* %55, %struct.modctl** @dtrace_modctl_list, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.modctl*, %struct.modctl** %2, align 8
  %58 = getelementptr inbounds %struct.modctl, %struct.modctl* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.modctl*, %struct.modctl** %2, align 8
  %64 = call i32 @kmem_free(%struct.modctl* %63, i32 24)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @kmem_free(%struct.modctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
