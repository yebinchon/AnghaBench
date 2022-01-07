; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_set_kq_mode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_set_kq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }

@KQ_KEV32 = common dso_local global i32 0, align 4
@KQ_KEV64 = common dso_local global i32 0, align 4
@KQ_KEV_QOS = common dso_local global i32 0, align 4
@KEVENT_FLAG_LEGACY32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEVENT_FLAG_LEGACY64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, i32)* @kevent_set_kq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_set_kq_mode(%struct.kqueue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %7 = call i32 @kqlock(%struct.kqueue* %6)
  %8 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %9 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KQ_KEV32, align 4
  %12 = load i32, i32* @KQ_KEV64, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KQ_KEV_QOS, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KEVENT_FLAG_LEGACY32, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %25 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KQ_KEV32, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %32 = call i32 @kqunlock(%struct.kqueue* %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %23
  br label %47

35:                                               ; preds = %18
  %36 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %37 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KQ_KEV32, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %44 = call i32 @kqunlock(%struct.kqueue* %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %81

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  br label %78

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @KEVENT_FLAG_LEGACY32, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @KQ_KEV32, align 4
  %55 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %56 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %77

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @KEVENT_FLAG_LEGACY64, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @KQ_KEV64, align 4
  %66 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %67 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %76

70:                                               ; preds = %59
  %71 = load i32, i32* @KQ_KEV_QOS, align 4
  %72 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %73 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %80 = call i32 @kqunlock(%struct.kqueue* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %42, %30
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
