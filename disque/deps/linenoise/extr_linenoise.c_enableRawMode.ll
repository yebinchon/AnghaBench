; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_enableRawMode.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_enableRawMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32*, i32, i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@atexit_registered = common dso_local global i32 0, align 4
@linenoiseAtExit = common dso_local global i32 0, align 4
@orig_termios = common dso_local global %struct.termios zeroinitializer, align 8
@BRKINT = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@rawmode = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @enableRawMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enableRawMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.termios, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @STDIN_FILENO, align 4
  %6 = call i32 @isatty(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %69

9:                                                ; preds = %1
  %10 = load i32, i32* @atexit_registered, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @linenoiseAtExit, align 4
  %14 = call i32 @atexit(i32 %13)
  store i32 1, i32* @atexit_registered, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tcgetattr(i32 %16, %struct.termios* @orig_termios)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %69

20:                                               ; preds = %15
  %21 = bitcast %struct.termios* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.termios* @orig_termios to i8*), i64 24, i1 false)
  %22 = load i32, i32* @BRKINT, align 4
  %23 = load i32, i32* @ICRNL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @INPCK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ISTRIP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IXON, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @OPOST, align 4
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @CS8, align 4
  %41 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @ECHO, align 4
  %45 = load i32, i32* @ICANON, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IEXTEN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ISIG, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VMIN, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 1, i32* %58, align 4
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @VTIME, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @TCSAFLUSH, align 4
  %65 = call i64 @tcsetattr(i32 %63, i32 %64, %struct.termios* %4)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %20
  br label %69

68:                                               ; preds = %20
  store i32 1, i32* @rawmode, align 4
  store i32 0, i32* %2, align 4
  br label %71

69:                                               ; preds = %67, %19, %8
  %70 = load i32, i32* @ENOTTY, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
