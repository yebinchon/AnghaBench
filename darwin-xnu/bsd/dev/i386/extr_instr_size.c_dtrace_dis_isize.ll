; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_instr_size.c_dtrace_dis_isize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_instr_size.c_dtrace_dis_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i32, i32, i32*, i32 }

@SIZE32 = common dso_local global i32 0, align 4
@DATAMODEL_LP64 = common dso_local global i64 0, align 8
@SIZE64 = common dso_local global i32 0, align 4
@dtrace_dis_get_byte = common dso_local global i32 0, align 4
@DIS_ISIZE_INSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32*)* @dtrace_dis_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dis_isize(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @SIZE32, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @DATAMODEL_LP64, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @SIZE64, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SIZE32, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %12, align 4
  %23 = bitcast i32** %6 to i8**
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8** %23, i8*** %24, align 8
  %25 = load i32, i32* @dtrace_dis_get_byte, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @dtrace_disx86(%struct.TYPE_3__* %11, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %51

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @DIS_ISIZE_INSTR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @dtrace_disx86(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
