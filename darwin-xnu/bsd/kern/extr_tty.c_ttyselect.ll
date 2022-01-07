; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyselect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FMARK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TS_ZOMBIE = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyselect(%struct.tty* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FMARK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @FMARK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tty*, %struct.tty** %6, align 8
  %20 = icmp eq %struct.tty* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %5, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load %struct.tty*, %struct.tty** %6, align 8
  %25 = call i32 @TTY_LOCK_OWNED(%struct.tty* %24)
  %26 = load %struct.tty*, %struct.tty** %6, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TS_ZOMBIE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %79

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %78 [
    i32 129, label %35
    i32 128, label %47
  ]

35:                                               ; preds = %33
  %36 = load %struct.tty*, %struct.tty** %6, align 8
  %37 = call i32 @ttnread(%struct.tty* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %78

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.tty*, %struct.tty** %6, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @selrecord(i32 %42, i32* %44, i8* %45)
  br label %78

47:                                               ; preds = %33
  %48 = load %struct.tty*, %struct.tty** %6, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tty*, %struct.tty** %6, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %47
  %57 = load %struct.tty*, %struct.tty** %6, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TS_CONNECTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.tty*, %struct.tty** %6, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tty*, %struct.tty** %6, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  store i32 %71, i32* %10, align 4
  br label %78

72:                                               ; preds = %56, %47
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.tty*, %struct.tty** %6, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 3
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @selrecord(i32 %73, i32* %75, i8* %76)
  br label %78

78:                                               ; preds = %33, %72, %63, %41, %40
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  switch i32 %86, label %99 [
    i32 129, label %87
    i32 128, label %93
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.tty*, %struct.tty** %6, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @selrecord(i32 %88, i32* %90, i8* %91)
  br label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.tty*, %struct.tty** %6, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 3
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @selrecord(i32 %94, i32* %96, i8* %97)
  br label %99

99:                                               ; preds = %85, %93, %87
  br label %100

100:                                              ; preds = %99, %82, %79
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %21
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @ttnread(%struct.tty*) #1

declare dso_local i32 @selrecord(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
