; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttywait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttywait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__, i32, {}* }
%struct.TYPE_2__ = type { i64 }

@TS_BUSY = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4
@TS_SO_OCOMPLETE = common dso_local global i32 0, align 4
@TTOPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ttywai\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttywait(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call i32 @TTY_LOCK_OWNED(%struct.tty* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %87, %1
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = load %struct.tty*, %struct.tty** %2, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TS_BUSY, align 4
  %17 = call i64 @ISSET(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12, %6
  %20 = load %struct.tty*, %struct.tty** %2, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TS_CONNECTED, align 4
  %24 = call i64 @ISSET(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 3
  %29 = bitcast {}** %28 to i32 (%struct.tty*)**
  %30 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %29, align 8
  %31 = icmp ne i32 (%struct.tty*)* %30, null
  br label %32

32:                                               ; preds = %26, %19, %12
  %33 = phi i1 [ false, %19 ], [ false, %12 ], [ %31, %26 ]
  br i1 %33, label %34, label %88

34:                                               ; preds = %32
  %35 = load %struct.tty*, %struct.tty** %2, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 3
  %37 = bitcast {}** %36 to i32 (%struct.tty*)**
  %38 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %37, align 8
  %39 = load %struct.tty*, %struct.tty** %2, align 8
  %40 = call i32 %38(%struct.tty* %39)
  %41 = load %struct.tty*, %struct.tty** %2, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %34
  %47 = load %struct.tty*, %struct.tty** %2, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TS_BUSY, align 4
  %51 = call i64 @ISSET(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %46, %34
  %54 = load %struct.tty*, %struct.tty** %2, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TS_CONNECTED, align 4
  %58 = call i64 @ISSET(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load %struct.tty*, %struct.tty** %2, align 8
  %62 = getelementptr inbounds %struct.tty, %struct.tty* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TS_SO_OCOMPLETE, align 4
  %65 = call i32 @SET(i32 %63, i32 %64)
  %66 = load %struct.tty*, %struct.tty** %2, align 8
  %67 = load %struct.tty*, %struct.tty** %2, align 8
  %68 = call i32 @TSA_OCOMPLETE(%struct.tty* %67)
  %69 = load i32, i32* @TTOPRI, align 4
  %70 = load i32, i32* @PCATCH, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.tty*, %struct.tty** %2, align 8
  %73 = getelementptr inbounds %struct.tty, %struct.tty* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ttysleep(%struct.tty* %66, i32 %68, i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %60
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @EWOULDBLOCK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %78
  br label %88

85:                                               ; preds = %60
  br label %87

86:                                               ; preds = %53, %46
  br label %88

87:                                               ; preds = %85
  br label %6

88:                                               ; preds = %86, %84, %32
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %88
  %92 = load %struct.tty*, %struct.tty** %2, align 8
  %93 = getelementptr inbounds %struct.tty, %struct.tty* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = load %struct.tty*, %struct.tty** %2, align 8
  %99 = getelementptr inbounds %struct.tty, %struct.tty* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TS_BUSY, align 4
  %102 = call i64 @ISSET(i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97, %91
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %97, %88
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @ttysleep(%struct.tty*, i32, i32, i8*, i32) #1

declare dso_local i32 @TSA_OCOMPLETE(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
