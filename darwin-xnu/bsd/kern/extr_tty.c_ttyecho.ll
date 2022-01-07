; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyecho.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyecho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }

@TS_CNTTB = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@EXTPROC = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@TTY_CHARMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tty*)* @ttyecho to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyecho(i32 %0, %struct.tty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tty* %1, %struct.tty** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %4, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load %struct.tty*, %struct.tty** %4, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TS_CNTTB, align 4
  %11 = call i32 @ISSET(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.tty*, %struct.tty** %4, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FLUSHO, align 4
  %18 = call i32 @CLR(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.tty*, %struct.tty** %4, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ECHO, align 4
  %24 = call i32 @ISSET(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.tty*, %struct.tty** %4, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ECHONL, align 4
  %34 = call i32 @ISSET(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29, %19
  %37 = load %struct.tty*, %struct.tty** %4, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EXTPROC, align 4
  %41 = call i32 @ISSET(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29, %26
  br label %85

44:                                               ; preds = %36
  %45 = load %struct.tty*, %struct.tty** %4, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ECHOCTL, align 4
  %49 = call i32 @ISSET(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @TTY_CHARMASK, align 4
  %54 = call i32 @ISSET(i32 %52, i32 %53)
  %55 = icmp sle i32 %54, 31
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %56, %51
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @TTY_CHARMASK, align 4
  %65 = call i32 @ISSET(i32 %63, i32 %64)
  %66 = icmp eq i32 %65, 127
  br i1 %66, label %67, label %81

67:                                               ; preds = %62, %59
  %68 = load %struct.tty*, %struct.tty** %4, align 8
  %69 = call i32 @ttyoutput(i32 94, %struct.tty* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @TTY_CHARMASK, align 4
  %72 = xor i32 %71, -1
  %73 = call i32 @CLR(i32 %70, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 127
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 63, i32* %3, align 4
  br label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 64
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %80, %62, %44
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.tty*, %struct.tty** %4, align 8
  %84 = call i32 @ttyoutput(i32 %82, %struct.tty* %83)
  br label %85

85:                                               ; preds = %81, %43
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @ttyoutput(i32, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
