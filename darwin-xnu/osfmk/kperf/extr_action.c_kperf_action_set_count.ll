; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_set_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_set_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action = type { i32, i8*, i8* }

@actionc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACTION_MAX = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_DIAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@actionv = common dso_local global %struct.action* null, align 8
@MAX_CALLSTACK_FRAMES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_action_set_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.action*, align 8
  %5 = alloca %struct.action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.action* null, %struct.action** %4, align 8
  store %struct.action* null, %struct.action** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @actionc, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @actionc, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %109

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ACTION_MAX, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %109

25:                                               ; preds = %19
  %26 = load i32, i32* @actionc, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i32 (...) @kperf_init()
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %109

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 %36, 24
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %40 = call %struct.action* @kalloc_tag(i32 %38, i32 %39)
  store %struct.action* %40, %struct.action** %4, align 8
  %41 = load %struct.action*, %struct.action** %4, align 8
  %42 = icmp eq %struct.action* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %109

45:                                               ; preds = %34
  %46 = load %struct.action*, %struct.action** @actionv, align 8
  store %struct.action* %46, %struct.action** %5, align 8
  %47 = load i32, i32* @actionc, align 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.action*, %struct.action** %5, align 8
  %49 = icmp ne %struct.action* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.action*, %struct.action** %4, align 8
  %52 = load %struct.action*, %struct.action** @actionv, align 8
  %53 = load i32, i32* @actionc, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 24
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(%struct.action* %51, %struct.action* %52, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.action*, %struct.action** %4, align 8
  %60 = load i32, i32* @actionc, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.action, %struct.action* %59, i64 %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 24
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(%struct.action* %62, i32 0, i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %93, %58
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load %struct.action*, %struct.action** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.action, %struct.action* %76, i64 %78
  %80 = getelementptr inbounds %struct.action, %struct.action* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load i8*, i8** @MAX_CALLSTACK_FRAMES, align 8
  %82 = load %struct.action*, %struct.action** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.action, %struct.action* %82, i64 %84
  %86 = getelementptr inbounds %struct.action, %struct.action* %85, i32 0, i32 2
  store i8* %81, i8** %86, align 8
  %87 = load i8*, i8** @MAX_CALLSTACK_FRAMES, align 8
  %88 = load %struct.action*, %struct.action** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.action, %struct.action* %88, i64 %90
  %92 = getelementptr inbounds %struct.action, %struct.action* %91, i32 0, i32 1
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load %struct.action*, %struct.action** %4, align 8
  store %struct.action* %97, %struct.action** @actionv, align 8
  %98 = load i32, i32* %3, align 4
  store i32 %98, i32* @actionc, align 4
  %99 = load %struct.action*, %struct.action** %5, align 8
  %100 = icmp ne %struct.action* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.action*, %struct.action** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, 24
  %106 = trunc i64 %105 to i32
  %107 = call i32 @kfree(%struct.action* %102, i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %43, %31, %23, %17, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @kperf_init(...) #1

declare dso_local %struct.action* @kalloc_tag(i32, i32) #1

declare dso_local i32 @memcpy(%struct.action*, %struct.action*, i32) #1

declare dso_local i32 @memset(%struct.action*, i32, i32) #1

declare dso_local i32 @kfree(%struct.action*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
