; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyretype.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyretype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64*, i64, %struct.TYPE_3__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VREPRINT = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@TS_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ttyretype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyretype(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @VREPRINT, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @_POSIX_VDISABLE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.tty*, %struct.tty** %2, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @VREPRINT, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.tty*, %struct.tty** %2, align 8
  %24 = call i32 @ttyecho(i32 %22, %struct.tty* %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.tty*, %struct.tty** %2, align 8
  %27 = call i32 @ttyoutput(i8 signext 10, %struct.tty* %26)
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 5
  %30 = call i32* @firstc(%struct.TYPE_3__* %29, i32* %4)
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %38, %25
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tty*, %struct.tty** %2, align 8
  %37 = call i32 @ttyecho(i32 %35, %struct.tty* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load %struct.tty*, %struct.tty** %2, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 5
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @nextc(%struct.TYPE_3__* %40, i32* %41, i32* %4)
  store i32* %42, i32** %3, align 8
  br label %31

43:                                               ; preds = %31
  %44 = load %struct.tty*, %struct.tty** %2, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 2
  %46 = call i32* @firstc(%struct.TYPE_3__* %45, i32* %4)
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %54, %43
  %48 = load i32*, i32** %3, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.tty*, %struct.tty** %2, align 8
  %53 = call i32 @ttyecho(i32 %51, %struct.tty* %52)
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.tty*, %struct.tty** %2, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 2
  %57 = load i32*, i32** %3, align 8
  %58 = call i32* @nextc(%struct.TYPE_3__* %56, i32* %57, i32* %4)
  store i32* %58, i32** %3, align 8
  br label %47

59:                                               ; preds = %47
  %60 = load %struct.tty*, %struct.tty** %2, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TS_ERASE, align 4
  %64 = call i32 @CLR(i32 %62, i32 %63)
  %65 = load %struct.tty*, %struct.tty** %2, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tty*, %struct.tty** %2, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tty*, %struct.tty** %2, align 8
  %72 = getelementptr inbounds %struct.tty, %struct.tty* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @ttyecho(i32, %struct.tty*) #1

declare dso_local i32 @ttyoutput(i8 signext, %struct.tty*) #1

declare dso_local i32* @firstc(%struct.TYPE_3__*, i32*) #1

declare dso_local i32* @nextc(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @CLR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
