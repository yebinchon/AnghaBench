; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_joypad_connection.c_pad_connection_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_joypad_connection.c_pad_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

@MAX_USERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"[joypad] invalid number of pads requested (%d), using default (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @pad_connection_init(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_USERS, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_USERS, align 4
  %13 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @MAX_USERS, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  %18 = call i64 @calloc(i32 %17, i32 24)
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %47

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @set_end_of_list(%struct.TYPE_4__* %43, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %2, align 8
  br label %47

47:                                               ; preds = %42, %22
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %48
}

declare dso_local i32 @RARCH_WARN(i8*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @set_end_of_list(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
