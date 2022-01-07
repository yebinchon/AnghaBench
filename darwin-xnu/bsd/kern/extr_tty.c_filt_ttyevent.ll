; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttyevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttyevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.tty = type { i32 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_ttyevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_ttyevent(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NOTE_REVOKE, align 8
  %11 = and i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* @NOTE_REVOKE, align 8
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load %struct.knote*, %struct.knote** %4, align 8
  %18 = call %struct.tty* @tty_from_knote(%struct.knote* %17)
  store %struct.tty* %18, %struct.tty** %7, align 8
  %19 = load %struct.tty*, %struct.tty** %7, align 8
  %20 = icmp ne %struct.tty* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.knote*, %struct.knote** %4, align 8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = call i32 @knote_set_error(%struct.knote* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.tty*, %struct.tty** %7, align 8
  %30 = call i32 @tty_lock(%struct.tty* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @EV_EOF, align 4
  %36 = load i32, i32* @EV_ONESHOT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.knote*, %struct.knote** %4, align 8
  %39 = getelementptr inbounds %struct.knote, %struct.knote* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 1, i32* %6, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.knote*, %struct.knote** %4, align 8
  %44 = load %struct.tty*, %struct.tty** %7, align 8
  %45 = call i32 @filt_tty_common(%struct.knote* %43, %struct.tty* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.tty*, %struct.tty** %7, align 8
  %51 = call i32 @tty_unlock(%struct.tty* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.tty* @tty_from_knote(%struct.knote*) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @filt_tty_common(%struct.knote*, %struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
