; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_isfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_isfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdevsw = type { i32 }

@bdevsw = common dso_local global %struct.bdevsw* null, align 8
@nblkdev = common dso_local global i32 0, align 4
@nobdev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdevsw_isfree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdevsw*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.bdevsw*, %struct.bdevsw** @bdevsw, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %15, i64 %17
  store %struct.bdevsw* %18, %struct.bdevsw** %4, align 8
  br label %19

19:                                               ; preds = %30, %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @nblkdev, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.bdevsw*, %struct.bdevsw** %4, align 8
  %25 = bitcast %struct.bdevsw* %24 to i8*
  %26 = call i64 @memcmp(i8* %25, i8* bitcast (i32* @nobdev to i8*), i32 4)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %35

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load %struct.bdevsw*, %struct.bdevsw** %4, align 8
  %34 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %33, i32 1
  store %struct.bdevsw* %34, %struct.bdevsw** %4, align 8
  br label %19

35:                                               ; preds = %28, %19
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @nblkdev, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  store i32 -1, i32* %2, align 4
  br label %56

44:                                               ; preds = %39
  %45 = load %struct.bdevsw*, %struct.bdevsw** @bdevsw, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %45, i64 %47
  store %struct.bdevsw* %48, %struct.bdevsw** %4, align 8
  %49 = load %struct.bdevsw*, %struct.bdevsw** %4, align 8
  %50 = bitcast %struct.bdevsw* %49 to i8*
  %51 = call i64 @memcmp(i8* %50, i8* bitcast (i32* @nobdev to i8*), i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %53, %43
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
