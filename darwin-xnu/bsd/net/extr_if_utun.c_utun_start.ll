; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utun_pcb = type { i64, i32, i32, i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [57 x i8] c"utun_start: ctl_getenqueuepacketcount returned error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"utun_start: ifnet_disable_output returned error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @utun_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utun_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.utun_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.utun_pcb* @ifnet_softc(i32 %10)
  store %struct.utun_pcb* %11, %struct.utun_pcb** %4, align 8
  %12 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %13 = icmp ne %struct.utun_pcb* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  br label %16

16:                                               ; preds = %93, %1
  store i32 1, i32* %5, align 4
  %17 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %18 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ifnet_lock_shared(i32 %19)
  %21 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %22 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %25 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ctl_getenqueuepacketcount(i64 %23, i32 %26, i64* %6)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %16
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %36 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %33
  %43 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %44 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  %48 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %49 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %52 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ctl_getenqueuereadable(i64 %50, i32 %53, i64* %8)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %42, %33
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = call i64 @ifnet_disable_output(i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %75 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ifnet_lock_done(i32 %76)
  br label %94

78:                                               ; preds = %62
  %79 = load %struct.utun_pcb*, %struct.utun_pcb** %4, align 8
  %80 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ifnet_lock_done(i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = call i64 @ifnet_dequeue(i32 %83, i32* %3)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %94

87:                                               ; preds = %78
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @utun_output(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %16

94:                                               ; preds = %92, %86, %73
  ret void
}

declare dso_local %struct.utun_pcb* @ifnet_softc(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_lock_shared(i32) #1

declare dso_local i64 @ctl_getenqueuepacketcount(i64, i32, i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @ctl_getenqueuereadable(i64, i32, i64*) #1

declare dso_local i64 @ifnet_disable_output(i32) #1

declare dso_local i32 @ifnet_lock_done(i32) #1

declare dso_local i64 @ifnet_dequeue(i32, i32*) #1

declare dso_local i64 @utun_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
