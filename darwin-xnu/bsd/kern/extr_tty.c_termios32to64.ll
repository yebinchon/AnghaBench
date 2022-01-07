; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_termios32to64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_termios32to64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios32 = type { i64, i64, i32, i64, i64, i64, i64 }
%struct.user_termios = type { i8*, i8*, i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termios32*, %struct.user_termios*)* @termios32to64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @termios32to64(%struct.termios32* %0, %struct.user_termios* %1) #0 {
  %3 = alloca %struct.termios32*, align 8
  %4 = alloca %struct.user_termios*, align 8
  store %struct.termios32* %0, %struct.termios32** %3, align 8
  store %struct.user_termios* %1, %struct.user_termios** %4, align 8
  %5 = load %struct.termios32*, %struct.termios32** %3, align 8
  %6 = getelementptr inbounds %struct.termios32, %struct.termios32* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %10 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load %struct.termios32*, %struct.termios32** %3, align 8
  %12 = getelementptr inbounds %struct.termios32, %struct.termios32* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %16 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load %struct.termios32*, %struct.termios32** %3, align 8
  %18 = getelementptr inbounds %struct.termios32, %struct.termios32* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %22 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.termios32*, %struct.termios32** %3, align 8
  %24 = getelementptr inbounds %struct.termios32, %struct.termios32* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %28 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.termios32*, %struct.termios32** %3, align 8
  %30 = getelementptr inbounds %struct.termios32, %struct.termios32* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %33 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bcopy(i32 %31, i32 %34, i32 4)
  %36 = load %struct.termios32*, %struct.termios32** %3, align 8
  %37 = getelementptr inbounds %struct.termios32, %struct.termios32* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %41 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.termios32*, %struct.termios32** %3, align 8
  %43 = getelementptr inbounds %struct.termios32, %struct.termios32* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.user_termios*, %struct.user_termios** %4, align 8
  %47 = getelementptr inbounds %struct.user_termios, %struct.user_termios* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  ret void
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
