; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_km.c_kmoutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_km.c_kmoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.tty*)* }
%struct.tty = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@kmtimeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4
@linesw = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @kmoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmoutput(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  store i32 -1, i32* %5, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %6
  %13 = load %struct.tty*, %struct.tty** %2, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 2
  %15 = call i32 @ndqb(%struct.TYPE_4__* %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %59

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @min(i32 %20, i32 80)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.tty*, %struct.tty** %2, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 2
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @q_to_b(%struct.TYPE_4__* %23, i8* %24, i32 %25)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %41, %19
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %31
  %33 = icmp ult i8* %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 127
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  store i8 %39, i8* %40, align 1
  br label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @cnputsusr(i8* %48, i32 %49)
  br label %58

51:                                               ; preds = %44
  %52 = load %struct.tty*, %struct.tty** %2, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = call i32 @kmputc(i32 %54, i8 zeroext %56)
  br label %58

58:                                               ; preds = %51, %47
  br label %6

59:                                               ; preds = %18, %6
  %60 = load %struct.tty*, %struct.tty** %2, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @kmtimeout, align 4
  %67 = load %struct.tty*, %struct.tty** %2, align 8
  %68 = load i32, i32* @hz, align 4
  %69 = call i32 @timeout(i32 %66, %struct.tty* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32, i32* @TS_BUSY, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.tty*, %struct.tty** %2, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @linesw, align 8
  %78 = load %struct.tty*, %struct.tty** %2, align 8
  %79 = getelementptr inbounds %struct.tty, %struct.tty* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %82, align 8
  %84 = load %struct.tty*, %struct.tty** %2, align 8
  %85 = call i32 %83(%struct.tty* %84)
  ret i32 0
}

declare dso_local i32 @ndqb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @q_to_b(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @cnputsusr(i8*, i32) #1

declare dso_local i32 @kmputc(i32, i8 zeroext) #1

declare dso_local i32 @timeout(i32, %struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
