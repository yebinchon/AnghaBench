; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_outputushort.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_outputushort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outputushort.buff = internal global [5 x i8] c"\00\00\00\00\0A", align 1
@outputushort.badbuff = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"xxxx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outputushort(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** @outputushort.badbuff, align 8
  %7 = call i32 (i32, ...) @write(i32 1, i8* %6, i32 5)
  br label %60

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 12
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 0), align 1
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 0), align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, 9
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 87, i32 48
  %17 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 0), align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 0), align 1
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 15
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 1), align 1
  %25 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 1), align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %26, 9
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 87, i32 48
  %30 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 1), align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 1), align 1
  %34 = load i32, i32* %2, align 4
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 2), align 1
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 2), align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sgt i32 %39, 9
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 87, i32 48
  %43 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 2), align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 2), align 1
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, 15
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 3), align 1
  %50 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 3), align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %51, 9
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 87, i32 48
  %55 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 3), align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 3), align 1
  %59 = call i32 (i32, ...) @write(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @outputushort.buff, i64 0, i64 0), i32 5)
  br label %60

60:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @write(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
