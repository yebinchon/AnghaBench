; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_do_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32 }

@ERRORS = common dso_local global i32 0, align 4
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected return code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i8*)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(%struct.display* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.display*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.display*, %struct.display** %4, align 8
  %8 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @setjmp(i32 %9) #3
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.display*, %struct.display** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @test_one_file(%struct.display* %14, i8* %15)
  store i32 0, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ERRORS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.display*, %struct.display** %4, align 8
  %23 = load i32, i32* @INTERNAL_ERROR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @display_log(%struct.display* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #1

declare dso_local i32 @test_one_file(%struct.display*, i8*) #2

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
