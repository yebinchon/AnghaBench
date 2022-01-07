; ModuleID = '/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_get_char_lb_class.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_get_char_lb_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LineBreakProperties = type { i64, i64, i64 }

@LBP_Undefined = common dso_local global i64 0, align 8
@LBP_XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.LineBreakProperties*)* @get_char_lb_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_char_lb_class(i64 %0, %struct.LineBreakProperties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.LineBreakProperties*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.LineBreakProperties* %1, %struct.LineBreakProperties** %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %5, align 8
  %8 = getelementptr inbounds %struct.LineBreakProperties, %struct.LineBreakProperties* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LBP_Undefined, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %5, align 8
  %15 = getelementptr inbounds %struct.LineBreakProperties, %struct.LineBreakProperties* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ false, %6 ], [ %17, %12 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %5, align 8
  %23 = getelementptr inbounds %struct.LineBreakProperties, %struct.LineBreakProperties* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %5, align 8
  %28 = getelementptr inbounds %struct.LineBreakProperties, %struct.LineBreakProperties* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %5, align 8
  %33 = getelementptr inbounds %struct.LineBreakProperties, %struct.LineBreakProperties* %32, i32 1
  store %struct.LineBreakProperties* %33, %struct.LineBreakProperties** %5, align 8
  br label %6

34:                                               ; preds = %18
  %35 = load i32, i32* @LBP_XX, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
