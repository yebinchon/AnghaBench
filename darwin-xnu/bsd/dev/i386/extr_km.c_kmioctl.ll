; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_km.c_kmioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_km.c_kmioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, %struct.winsize }
%struct.winsize = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty*, i32, i64, i32, i32)* }
%struct.termios32 = type { i32 }
%struct.user_termios = type { i32 }

@km_tty = common dso_local global %struct.tty** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@linesw = common dso_local global %struct.TYPE_2__* null, align 8
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmioctl(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tty*, align 8
  %13 = alloca %struct.winsize*, align 8
  %14 = alloca %struct.termios32*, align 8
  %15 = alloca %struct.user_termios*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.tty**, %struct.tty*** @km_tty, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @minor(i32 %17)
  %19 = getelementptr inbounds %struct.tty*, %struct.tty** %16, i64 %18
  %20 = load %struct.tty*, %struct.tty** %19, align 8
  store %struct.tty* %20, %struct.tty** %12, align 8
  %21 = load %struct.tty*, %struct.tty** %12, align 8
  %22 = call i32 @tty_lock(%struct.tty* %21)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %51 [
    i32 135, label %24
    i32 128, label %32
    i32 130, label %34
    i32 132, label %34
    i32 134, label %34
    i32 129, label %42
    i32 131, label %42
    i32 133, label %42
  ]

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to %struct.winsize*
  store %struct.winsize* %26, %struct.winsize** %13, align 8
  %27 = load %struct.winsize*, %struct.winsize** %13, align 8
  %28 = load %struct.tty*, %struct.tty** %12, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 1
  %30 = bitcast %struct.winsize* %27 to i8*
  %31 = bitcast %struct.winsize* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %31, i64 4, i1 false)
  br label %76

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %11, align 4
  br label %76

34:                                               ; preds = %5, %5, %5
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to %struct.termios32*
  store %struct.termios32* %36, %struct.termios32** %14, align 8
  %37 = load i32, i32* @CLOCAL, align 4
  %38 = load %struct.termios32*, %struct.termios32** %14, align 8
  %39 = getelementptr inbounds %struct.termios32, %struct.termios32* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %50

42:                                               ; preds = %5, %5, %5
  %43 = load i64, i64* %8, align 8
  %44 = inttoptr i64 %43 to %struct.user_termios*
  store %struct.user_termios* %44, %struct.user_termios** %15, align 8
  %45 = load i32, i32* @CLOCAL, align 4
  %46 = load %struct.user_termios*, %struct.user_termios** %15, align 8
  %47 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %34
  br label %51

51:                                               ; preds = %5, %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @linesw, align 8
  %53 = load %struct.tty*, %struct.tty** %12, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.tty*, i32, i64, i32, i32)*, i32 (%struct.tty*, i32, i64, i32, i32)** %57, align 8
  %59 = load %struct.tty*, %struct.tty** %12, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 %58(%struct.tty* %59, i32 %60, i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @ENOTTY, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %76

69:                                               ; preds = %51
  %70 = load %struct.tty*, %struct.tty** %12, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ttioctl_locked(%struct.tty* %70, i32 %71, i64 %72, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %69, %68, %32, %24
  %77 = load %struct.tty*, %struct.tty** %12, align 8
  %78 = call i32 @tty_unlock(%struct.tty* %77)
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i64 @minor(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttioctl_locked(%struct.tty*, i32, i64, i32, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
