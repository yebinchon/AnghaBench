; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_urlencode_lut_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_urlencode_lut_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@urlencode_lut_inited = common dso_local global i32 0, align 4
@urlencode_lut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @urlencode_lut_init() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @urlencode_lut_inited, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %33, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 256
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @isalnum(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 95
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %15, %12, %9, %5
  %25 = load i32, i32* %1, align 4
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = load i32*, i32** @urlencode_lut, align 8
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %2

36:                                               ; preds = %2
  ret void
}

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
