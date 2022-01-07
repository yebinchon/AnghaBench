; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptsselect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptsselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptmx_ioctl = type { %struct.tty* }
%struct.tty = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@TS_ZOMBIE = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptsselect(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptmx_ioctl*, align 8
  %11 = alloca %struct.tty*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ptmx_ioctl* @pty_get_ioctl(i32 %13, i32 0, i32* null)
  store %struct.ptmx_ioctl* %14, %struct.ptmx_ioctl** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %10, align 8
  %16 = icmp eq %struct.ptmx_ioctl* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %5, align 4
  br label %94

19:                                               ; preds = %4
  %20 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %10, align 8
  %21 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %20, i32 0, i32 0
  %22 = load %struct.tty*, %struct.tty** %21, align 8
  store %struct.tty* %22, %struct.tty** %11, align 8
  %23 = load %struct.tty*, %struct.tty** %11, align 8
  %24 = icmp eq %struct.tty* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %5, align 4
  br label %94

27:                                               ; preds = %19
  %28 = load %struct.tty*, %struct.tty** %11, align 8
  %29 = call i32 @tty_lock(%struct.tty* %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %90 [
    i32 129, label %31
    i32 128, label %51
  ]

31:                                               ; preds = %27
  %32 = load %struct.tty*, %struct.tty** %11, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TS_ZOMBIE, align 4
  %36 = call i32 @ISSET(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %90

39:                                               ; preds = %31
  %40 = load %struct.tty*, %struct.tty** %11, align 8
  %41 = call i32 @ttnread(%struct.tty* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %90

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.tty*, %struct.tty** %11, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 5
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @selrecord(i32 %46, i32* %48, i8* %49)
  br label %90

51:                                               ; preds = %27
  %52 = load %struct.tty*, %struct.tty** %11, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TS_ZOMBIE, align 4
  %56 = call i32 @ISSET(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %90

59:                                               ; preds = %51
  %60 = load %struct.tty*, %struct.tty** %11, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tty*, %struct.tty** %11, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %59
  %69 = load %struct.tty*, %struct.tty** %11, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TS_CONNECTED, align 4
  %73 = call i32 @ISSET(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.tty*, %struct.tty** %11, align 8
  %77 = getelementptr inbounds %struct.tty, %struct.tty* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tty*, %struct.tty** %11, align 8
  %80 = getelementptr inbounds %struct.tty, %struct.tty* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %78, %82
  store i32 %83, i32* %12, align 4
  br label %90

84:                                               ; preds = %68, %59
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.tty*, %struct.tty** %11, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 2
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @selrecord(i32 %85, i32* %87, i8* %88)
  br label %90

90:                                               ; preds = %27, %84, %75, %58, %45, %44, %38
  %91 = load %struct.tty*, %struct.tty** %11, align 8
  %92 = call i32 @tty_unlock(%struct.tty* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %25, %17
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.ptmx_ioctl* @pty_get_ioctl(i32, i32, i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @ttnread(%struct.tty*) #1

declare dso_local i32 @selrecord(i32, i32*, i8*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
