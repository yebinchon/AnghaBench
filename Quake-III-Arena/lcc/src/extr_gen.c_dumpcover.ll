; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_dumpcover.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_dumpcover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16**, i32 (i32, i32, i32*)* }

@IR = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dumpcover(%x) = \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dumpcover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpcover(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca [10 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @reuse(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @getrule(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i16**, i16*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16*, i16** %20, i64 %22
  %24 = load i16*, i16** %23, align 8
  store i16* %24, i16** %9, align 8
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @fprint(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %35, %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprint(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dumprule(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %48 = call i32 %44(i32 %45, i32 %46, i32* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %69, %38
  %50 = load i16*, i16** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = icmp ne i16 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i16*, i16** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  call void @dumpcover(i32 %60, i32 %66, i32 %68)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %49

72:                                               ; preds = %49
  ret void
}

declare dso_local i32 @reuse(i32, i32) #1

declare dso_local i32 @getrule(i32, i32) #1

declare dso_local i32 @fprint(i32, i8*, ...) #1

declare dso_local i32 @dumprule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
