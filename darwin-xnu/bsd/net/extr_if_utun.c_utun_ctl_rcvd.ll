; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_ctl_rcvd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_ctl_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utun_pcb = type { i64, i32 }

@.str = private unnamed_addr constant [60 x i8] c"utun_ctl_rcvd: ctl_getenqueuepacketcount returned error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"utun_ctl_rcvd: ifnet_enable_output returned error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32)* @utun_ctl_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utun_ctl_rcvd(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.utun_pcb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.utun_pcb*
  store %struct.utun_pcb* %15, %struct.utun_pcb** %10, align 8
  %16 = load %struct.utun_pcb*, %struct.utun_pcb** %10, align 8
  %17 = icmp eq %struct.utun_pcb* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.utun_pcb*, %struct.utun_pcb** %10, align 8
  %21 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ifnet_lock_exclusive(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @ctl_getenqueuepacketcount(i32 %24, i64 %25, i64* %11)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.utun_pcb*, %struct.utun_pcb** %10, align 8
  %35 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.utun_pcb*, %struct.utun_pcb** %10, align 8
  %44 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ifnet_enable_output(i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.utun_pcb*, %struct.utun_pcb** %10, align 8
  %55 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ifnet_lock_done(i32 %56)
  br label %58

58:                                               ; preds = %53, %18
  ret void
}

declare dso_local i32 @ifnet_lock_exclusive(i32) #1

declare dso_local i64 @ctl_getenqueuepacketcount(i32, i64, i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @ifnet_enable_output(i32) #1

declare dso_local i32 @ifnet_lock_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
