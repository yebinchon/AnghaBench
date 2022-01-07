; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_check_filter_status.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_check_filter_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hflip\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @check_filter_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_filter_status(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %26 [
    i32 128, label %13
  ]

13:                                               ; preds = %11
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @hb_dict_get_int(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @hb_dict_get_int(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i1 [ false, %13 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @hb_value_bool(i32 %32)
  %34 = call i32 @hb_dict_set(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %10, %30, %27
  ret void
}

declare dso_local i32 @hb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
