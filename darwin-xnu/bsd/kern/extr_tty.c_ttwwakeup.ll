; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TS_BUSY = common dso_local global i32 0, align 4
@TS_SO_OCOMPLETE = common dso_local global i32 0, align 4
@TS_SO_OLOWAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttwwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = call i32 @TTY_LOCK_OWNED(%struct.tty* %3)
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 3
  %16 = call i32 @selwakeup(%struct.TYPE_4__* %15)
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @KNOTE(i32* %19, i32 1)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.tty*, %struct.tty** %2, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TS_BUSY, align 4
  %26 = load i32, i32* @TS_SO_OCOMPLETE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ISSET(i32 %24, i32 %27)
  %29 = load i32, i32* @TS_SO_OCOMPLETE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.tty*, %struct.tty** %2, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.tty*, %struct.tty** %2, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TS_SO_OCOMPLETE, align 4
  %42 = call i32 @CLR(i32 %40, i32 %41)
  %43 = load %struct.tty*, %struct.tty** %2, align 8
  %44 = call i32 @TSA_OCOMPLETE(%struct.tty* %43)
  %45 = call i32 @wakeup(i32 %44)
  br label %46

46:                                               ; preds = %37, %31, %21
  %47 = load %struct.tty*, %struct.tty** %2, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TS_SO_OLOWAT, align 4
  %51 = call i32 @ISSET(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.tty*, %struct.tty** %2, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tty*, %struct.tty** %2, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.tty*, %struct.tty** %2, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TS_SO_OLOWAT, align 4
  %67 = call i32 @CLR(i32 %65, i32 %66)
  %68 = load %struct.tty*, %struct.tty** %2, align 8
  %69 = call i32 @TSA_OLOWAT(%struct.tty* %68)
  %70 = call i32 @wakeup(i32 %69)
  br label %71

71:                                               ; preds = %62, %53, %46
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_4__*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @TSA_OCOMPLETE(%struct.tty*) #1

declare dso_local i32 @TSA_OLOWAT(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
