; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@TS_LOCAL = common dso_local global i32 0, align 4
@TS_TBLOCK = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@TS_SO_OCOMPLETE = common dso_local global i32 0, align 4
@TTOPRI = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttyflush(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FWRITE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = call i32 @FLUSHQ(i32* %13)
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TS_TTSTOP, align 4
  %19 = call i32 @CLR(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.tty*, %struct.tty** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ttystop(%struct.tty* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FREAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %20
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 7
  %31 = call i32 @FLUSHQ(i32* %30)
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 6
  %34 = call i32 @FLUSHQ(i32* %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PENDIN, align 4
  %39 = call i32 @CLR(i32 %37, i32 %38)
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.tty*, %struct.tty** %3, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.tty*, %struct.tty** %3, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TS_LOCAL, align 4
  %48 = call i32 @CLR(i32 %46, i32 %47)
  %49 = load %struct.tty*, %struct.tty** %3, align 8
  %50 = call i32 @ttwakeup(%struct.tty* %49)
  %51 = load %struct.tty*, %struct.tty** %3, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TS_TBLOCK, align 4
  %55 = call i64 @ISSET(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %28
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @FWRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.tty*, %struct.tty** %3, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 0
  %65 = call i32 @FLUSHQ(i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.tty*, %struct.tty** %3, align 8
  %68 = call i32 @ttyunblock(%struct.tty* %67)
  %69 = load %struct.tty*, %struct.tty** %3, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TS_TBLOCK, align 4
  %73 = call i32 @CLR(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %28
  br label %75

75:                                               ; preds = %74, %20
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @FWRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.tty*, %struct.tty** %3, align 8
  %82 = getelementptr inbounds %struct.tty, %struct.tty* %81, i32 0, i32 0
  %83 = call i32 @FLUSHQ(i32* %82)
  %84 = load %struct.tty*, %struct.tty** %3, align 8
  %85 = call i32 @ttwwakeup(%struct.tty* %84)
  br label %86

86:                                               ; preds = %80, %75
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @FLUSHQ(i32*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @ttystop(%struct.tty*, i32) #1

declare dso_local i32 @ttwakeup(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @ttyunblock(%struct.tty*) #1

declare dso_local i32 @ttwwakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
